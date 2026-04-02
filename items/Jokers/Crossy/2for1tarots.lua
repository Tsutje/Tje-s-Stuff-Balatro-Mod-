SMODS.Joker{ --Code taken from VanillaRemade
    key = '2for1tarots',
    atlas = 'crs_jokers',
    rarity = 3, 
    cost = 12, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { extra = { xmult = 0.25, divcount = 2 } },

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_steel
        info_queue[#info_queue + 1] = G.P_CENTERS.m_glass
        info_queue[#info_queue + 1] = G.P_CENTERS.m_wild
        info_queue[#info_queue + 1] = G.P_CENTERS.m_gold
        info_queue[#info_queue + 1] = G.P_CENTERS.m_stone

        local steel_tally = 0
        if G.playing_cards then
            for _, playing_card in ipairs(G.playing_cards) do
                if SMODS.has_enhancement(playing_card, 'm_steel')
                or SMODS.has_enhancement(playing_card, 'm_glass')
                or SMODS.has_enhancement(playing_card, 'm_wild')
                or SMODS.has_enhancement(playing_card, 'm_gold')
                or SMODS.has_enhancement(playing_card, 'm_stone') then
                    steel_tally = steel_tally + 1
                end
            end
        end

        local steps = math.floor(steel_tally / card.ability.extra.divcount)

        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.divcount,
                1 + card.ability.extra.xmult * steps
            }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            local steel_tally = 0

            for _, playing_card in ipairs(G.playing_cards or {}) do
                if SMODS.has_enhancement(playing_card, 'm_steel')
                or SMODS.has_enhancement(playing_card, 'm_glass')
                or SMODS.has_enhancement(playing_card, 'm_wild')
                or SMODS.has_enhancement(playing_card, 'm_gold')
                or SMODS.has_enhancement(playing_card, 'm_stone') then
                    steel_tally = steel_tally + 1
                end
            end

            local steps = math.floor(steel_tally / card.ability.extra.divcount)

            return {
                Xmult = 1 + card.ability.extra.xmult * steps,
            }
        end
    end,

    in_pool = function(self, args) -- equivalent to `enhancement_gate = 'm_steel'`
        for _, playing_card in ipairs(G.playing_cards or {}) do
            if SMODS.has_enhancement(playing_card, 'm_steel')
            or SMODS.has_enhancement(playing_card, 'm_glass')
            or SMODS.has_enhancement(playing_card, 'm_wild')
            or SMODS.has_enhancement(playing_card, 'm_gold')
            or SMODS.has_enhancement(playing_card, 'm_stone') then
                return true
            end
        end
        return false
    end,

    crs_credits = {
        mod = "2 For 1 Tarots"
    }
}


