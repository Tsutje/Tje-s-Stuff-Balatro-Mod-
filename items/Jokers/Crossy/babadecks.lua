SMODS.Joker{
    key = 'babadecks',
    atlas = 'crs_jokers',
    rarity = 3, 
    cost = 12, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {retriggers = 2}},
    loc_vars = function(self, info_queue, card)
        local baba_card = G.GAME.current_round.crs_cardi or { rank = 'Ace', suit = 'Spades' }
        return { vars = { card.ability.extra.retriggers, localize(baba_card.rank, 'ranks'), localize(baba_card.suit, 'suits_plural'), colours = { G.C.SUITS[baba_card.suit] } } }
    end,
    calculate = function(self, card, context)
        if context.repetition and
            context.other_card:get_id() == G.GAME.current_round.crs_cardi.id and
            context.other_card:is_suit(G.GAME.current_round.crs_cardi.suit) then
            return {
                repetitions = card.ability.extra.retriggers
            }
        end
    end,
    crs_credits = {
        mod = "Baba Decks"
    }
}


