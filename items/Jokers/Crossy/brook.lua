SMODS.Joker{
    key = 'brook',
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
        return { vars = { card.ability.extra.retriggers } }
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.hand and #G.consumeables.cards < G.consumeables.config.card_limit then
            return {
                repetitions = card.ability.extra.retriggers
            }
        end
    end,
    crs_credits = {
        mod = "Brook"
    }
}


