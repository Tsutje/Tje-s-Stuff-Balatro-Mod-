SMODS.Joker{
    key = 'reunlockall',
    atlas = 'crs_jokers',
    rarity = 4, 
    cost = 20, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {div = 50, retrig = 1}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.div, card.ability.extra.retrig} }
    end,
    update = function(self, card, dt)
        if G.P_CENTER_POOLS.Joker then
            local count = 0
            for i, v in ipairs(G.P_CENTER_POOLS.Joker) do
                if v.discovered == true then
                    count = count + 1
                end
            end
            card.ability.extra.retrig = (math.floor(count/card.ability.extra.div))
        end
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play then
            return {
                repetitions = card.ability.extra.retrig
            }
        end
    end,
    crs_credits = {
        mod = "Re:Unlock All"
    }
}


