SMODS.Joker{
    key = 'galdur',
    atlas = 'crs_jokers',
    rarity = 3, 
    cost = 12, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {mult = 1, chip = 1, multscale = 0.75, chipscale = 0.1}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.chip, card.ability.extra.multscale, card.ability.extra.chipscale} }
    end,
    update = function(self, card, dt)
        if G.P_CENTER_POOLS.Back then
            card.ability.extra.mult = 1+(math.ceil(#G.P_CENTER_POOLS.Back/12))
        end
        if G.P_CENTER_POOLS.Stake then
            card.ability.extra.chip = 1+(#G.P_CENTER_POOLS.Stake*card.ability.extra.chipscale)
        end
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.mult,
                xchips = card.ability.extra.chip
            }
        end
    end,
    crs_credits = {
        mod = "Galdur"
    }
}


