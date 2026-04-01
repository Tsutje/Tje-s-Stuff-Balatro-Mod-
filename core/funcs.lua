function idol_reset_func_tje()
    G.GAME.current_round.crs_cardi = { rank = 'Ace', suit = 'Spades' }
    local valid_idol_cards = {}
    for _, playing_card in ipairs(G.playing_cards) do
        if not SMODS.has_no_suit(playing_card) and not SMODS.has_no_rank(playing_card) then
            valid_idol_cards[#valid_idol_cards + 1] = playing_card
        end
    end
    local idol_card = pseudorandom_element(valid_idol_cards, 'tje_idol' .. G.GAME.round_resets.ante)
    if idol_card then
        G.GAME.current_round.crs_cardi.rank = idol_card.base.value
        G.GAME.current_round.crs_cardi.suit = idol_card.base.suit
        G.GAME.current_round.crs_cardi.id = idol_card.base.id
    end
end