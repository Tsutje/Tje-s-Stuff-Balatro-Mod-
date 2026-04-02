SMODS.Joker{
    key = 'overloadedsnacking',
    atlas = 'Jokers2',
    rarity = 3, 
    cost = 15, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 9, y = 0},
    config = {extra = {notoverload=false,hcount=0,scount=0,roundbuffer="Active"}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.roundbuffer}}
    end,
    calculate = function(self, card, context)
        if context.first_hand_drawn and not context.blueprint then
            local eval = function(card) return card.ability.extra.roundbuffer == "Active" end
            juice_card_until(card, eval, true)
        end
        if context.before and card.ability.extra.roundbuffer == "Active" then
            for i = 1, #G.play.cards do
                if G.play.cards[i]:is_suit('Hearts') then
                    card.ability.extra.hcount = 1
                    print('heart')
                elseif G.play.cards[i]:is_suit('Spades') then
                    card.ability.extra.scount = 1
                    print('spade')
                else
                    card.ability.extra.notoverload = true
                    print('neither')
                end
            end
        end
        if context.before and card.ability.extra.scount == 1 and card.ability.extra.hcount == 1 and card.ability.extra.notoverload == false and card.ability.extra.roundbuffer == "Active" then
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Overload!", colour = HEX('F01766')})
            G.GAME.blind.chips = G.GAME.blind.chips*0.6
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
            card.ability.extra.roundbuffer = "Inactive"
        end
        if context.after then
            card.ability.extra.hcount = 0
            card.ability.extra.scount = 0
            card.ability.extra.notoverload = false
        end
        if context.end_of_round then
            card.ability.extra.roundbuffer = "Active"
        end
    end
}


