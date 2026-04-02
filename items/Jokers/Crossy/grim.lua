SMODS.Joker{
    key = 'grim',
    atlas = 'crs_jokers',
    rarity = 3, 
    cost = 12, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {xp = 50 }},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xp } }
    end,
    calculate = function(self, card, context)
        local count = 0
        if context.joker_main then 
            for i, v in ipairs(context.scoring_hand) do
                if v:get_id() == 14 and next(SMODS.get_enhancements(v)) then
                    count = count + 1
                    print(count..' counts')
                end
            end
            if count >= 2 then
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.3,
                    func = function()
                        play_sound('highlight2')
                        G.GAME.skill_xp = G.GAME.skill_xp+card.ability.extra.xp
                        return true
                    end
                }))
                print('thasenough')
                SMODS.calculate_effect({message = "+" .. card.ability.extra.xp .. " XP", colour = G.C.PURPLE}, card)
            else 
                print('thasnotenough')
            end
        end
    end,
    crs_credits = {
        mod = "Grim"
    }
}


