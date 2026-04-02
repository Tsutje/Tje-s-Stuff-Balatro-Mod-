SMODS.Joker{
    key = 'kopipuestofacecards',
    atlas = 'crs_jokers',
    rarity = 1, 
    cost = 6, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {}},
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
    end,
    crs_credits = {
        mod = "Kopi Puesto Face Cards"
    }
}


