--[[SMODS.Joker{
        key = 'riftraft',
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
            info_queue[#info_queue+1] = {key = "e_negative_playing_card", set = "Edition", config = {extra = G.P_CENTERS['e_negative'].config.card_limit}}
            return { vars = {} }
        end,
        calculate = function(self, card, context)
            if context.final_Scoring_step then
                for i, v in ipairs(G.play.cards) do
                    if v.edition and v.edition.key == "e_negative_playing_card" and G.cardarea == G.play then
                        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    SMODS.add_card {
                                        set = 'Rift'
                                    }
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end)
                            }))
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                func = function()
                                    v:start_dissolve({G.C.WHITE}, nil, 1.6)
                                    G.E_MANAGER:add_event(Event({  
                                        func = function()
                                            v:remove()
                                            return true
                                        end    
                                    }))           
                                    return true
                                end
                            }))
                            return {
                                message = localize('k_plus_riftraft_rift'),
                                colour = G.C.riftraft_void,
                                remove = true
                            }
                        end
                    end
                end
            end
        end,
        crs_credits = {
            mod = "Rift-Raft"
        }
    }
]]


