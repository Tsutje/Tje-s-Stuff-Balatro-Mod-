SMODS.Joker{
    key = 'sagatro',
    atlas = 'crs_jokers',
    rarity = "sgt_obscure", 
    cost = 9, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {scale = 1, count = 10 }},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.count, card.ability.extra.scale } }
    end,
    calculate = function(self, card, context)
        local count = 0
        if context.using_consumeable and context.consumeable.config.center.set == "Planet" then
            card.ability.extra.count = card.ability.extra.count+card.ability.extra.scale
            return {
                message = "Upgrade!"
            }
        end   
        if context.final_scoring_step then
            local vmult = (mult/100)*(card.ability.extra.count)
            local vchips = (hand_chips/100)*(card.ability.extra.count)
            local balanced = (vmult+vchips)/2
            G.E_MANAGER:add_event(Event({
                func = (function()
                    play_sound('gong', 0.94, 0.3)
                    play_sound('gong', 0.94*1.5, 0.2)
                    play_sound('tarot1', 1.5)
                    ease_colour(G.C.UI_CHIPS, {0.8, 0.45, 0.85, 1})
                    ease_colour(G.C.UI_MULT, {0.8, 0.45, 0.85, 1})
                    attention_text({
                        scale = 1.4, text = localize('k_balanced').." "..card.ability.extra.count.." %", hold = 2, align = 'cm', offset = {x = 0,y = -2.7},major = G.play
                    })
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        blockable = false,
                        blocking = false,
                        delay =  4.3,
                        func = (function()
                                ease_colour(G.C.UI_CHIPS, G.C.BLUE, 2)
                                ease_colour(G.C.UI_MULT, G.C.RED, 2)
                            return true
                        end)
                    }))
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        blockable = false,
                        blocking = false,
                        no_delete = true,
                        delay =  6.3,
                        func = (function()
                            G.C.UI_CHIPS[1], G.C.UI_CHIPS[2], G.C.UI_CHIPS[3], G.C.UI_CHIPS[4] = G.C.BLUE[1], G.C.BLUE[2], G.C.BLUE[3], G.C.BLUE[4]
                            G.C.UI_MULT[1], G.C.UI_MULT[2], G.C.UI_MULT[3], G.C.UI_MULT[4] = G.C.RED[1], G.C.RED[2], G.C.RED[3], G.C.RED[4]
                            return true
                        end)
                    }))
                    return true
                end)
            }))
            return {
                remove_default_message = true,
                mult = (-1*vmult)+balanced,
                chips = (-1*vchips)+balanced,
            }
        end
    end,
    crs_credits = {
        mod = "Sagatro"
    }
}


