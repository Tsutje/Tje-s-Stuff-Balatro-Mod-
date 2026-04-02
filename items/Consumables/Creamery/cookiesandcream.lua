SMODS.Consumable{
    key = 'nptcookiesandcream',
    set = 'creamerycons',
    atlas = 'creameryatlas',
    tjseries = 'npt',
    pos = {x = 9, y = 0},
    config = { extra = {chipbonus = 4} },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.chipbonus, card.ability.extra.chipbonus*G.GAME.current_round.discards_left + card.ability.extra.chipbonus*G.GAME.current_round.discards_left or 0}}
    end,
    can_use = function()
        return G.hand and #G.hand.cards > 0 and G.GAME.current_round.discards_left ~= 0
    end,

    use = function(self, card)
        if G.hand.highlighted ~= nil then
            if #G.hand.highlighted > 0 then
                G.hand:unhighlight_all()
                play_sound('cardSlide2')
            end
        end
        for i, v in ipairs(G.hand.cards) do
            G.E_MANAGER:add_event(Event({
                trigger = 'immediate',
                func = function()
                    G.E_MANAGER:add_event(Event({  
                        trigger = 'after',
                        delay = 0.1,
                        func = function()
                            if math.random() > 0.5 then
                                play_sound('tarot1')
                            else
                                play_sound('tarot2')
                            end
                            v.ability.perma_bonus = v.ability.perma_bonus + card.ability.extra.chipbonus*G.GAME.current_round.discards_left + card.ability.extra.chipbonus*G.GAME.current_round.discards_left
                            G.hand:add_to_highlighted(G.hand.cards[i])
                            return true
                        end    
                    }))
                    G.E_MANAGER:add_event(Event({  
                        trigger = 'after',
                        delay = 0.1,
                        func = function()
                            G.hand:remove_from_highlighted(G.hand.cards[i])
                            return true
                        end    
                    }))
                    return true
                end 
            }))
        end
    end
}