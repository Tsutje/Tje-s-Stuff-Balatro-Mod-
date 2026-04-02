SMODS.Joker{
    key = 'allinjest',
    atlas = 'crs_jokers',
    rarity = 4, 
    cost = 20, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {lunarcheck == "false"}},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = Crossy.CrsDescriptionDummies["cdd_crs_lhterm"]
        info_queue[#info_queue+1] = G.P_TAGS.tag_aij_ignoramus
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.before and context.scoring_name == "crs_lunarhouse" then
            print('Sandbina')
            card.ability.extra.lunarcheck = "true"
        elseif context.before and context.scoring_name ~= "crs_lunarhouse" then
            print('Arlebina')
            card.ability.extra.lunarcheck = "false"
        end
        if context.end_of_round and card.ability.extra.lunarcheck == "true" then
            print('create')
            G.E_MANAGER:add_event(Event({
                func = (function()
                    add_tag(Tag('tag_aij_ignoramus'))
                    play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                    return true
                end)
            }))
            card.ability.extra.lunarcheck = "false"
        elseif context.end_of_round and card.ability.extra.lunarcheck ~= "true" then
            card.ability.extra.lunarcheck = "false"
        end
    end,
    crs_credits = {
        mod = "All in Jest"
    }
}


