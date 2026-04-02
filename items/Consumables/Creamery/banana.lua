SMODS.Consumable{
    key = 'nptbanana',
    set = 'creamerycons',
    atlas = 'creameryatlas',
    pos = {x = 6, y = 0},
    tjseries = 'npt',
    config = {extra = {xmult = 1.75, scoreflag = 'true', odds = 5}},
    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.xmult, G.GAME.probabilities.normal, card.ability.extra.odds}}
    end,
    select_card = 'consumeables',
    can_use = function(self, card)
       return false
    end,
    
    calculate = function(self, card, context)
        if context.final_scoring_step and card.ability.extra.scoreflag == 'true' then
            SMODS.calculate_effect({xmult = card.ability.extra.xmult}, card)
            card.ability.extra.scoreflag = 'false'
        end
        if context.after then
            if pseudorandom('nptbanana') <  G.GAME.probabilities.normal/card.ability.extra.odds then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        play_sound('tarot1')
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after', delay = 0.3, blockable = false,
                            func = function()
                                card:remove()
                                card = nil
                            return true;end   
                        }))
                        return true
                    end    
                }))
                return {
                    message = ("Licked!"),
                    colour = HEX('FECF4E')
                }
            end
        elseif context.before then
            card.ability.extra.scoreflag = 'true'
        end
    end
}