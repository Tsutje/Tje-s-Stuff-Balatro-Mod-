SMODS.Consumable{
    key = 'nptpistachio',
    set = 'creamerycons',
    tjseries = 'npt',
    atlas = 'creameryatlas',
    pos = {x = 2, y = 1},
    config = { extra = { musthighlightamount = 1, odds = 2} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_tje_nptshell
        info_queue[#info_queue + 1] = G.P_CENTERS.m_stone
        return {vars = { card.ability.extra.musthighlightamount, G.GAME.probabilities.normal, card.ability.extra.odds}}
    end,
    can_use = function()
        return #G.hand.highlighted == 1
    end,

    use = function(self, card)
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                func = function()
                    if pseudorandom("nptpistacho") > G.GAME.probabilities.normal/card.ability.extra.odds then
                        play_sound('tarot1')
                        card_eval_status_text(G.hand.highlighted[i], 'extra', nil, nil, nil, {message =('Nutty!'), colour = HEX('6B9967')})
                        G.hand.highlighted[i]:juice_up()
                        G.hand.highlighted[i]:set_ability('m_tje_nptshell')
                    else
                        play_sound('tarot2')
                        G.hand.highlighted[i]:juice_up()
                        G.hand.highlighted[i]:set_ability ('m_stone')
                        card_eval_status_text(G.hand.highlighted[i], 'extra', nil, nil, nil, {message =('Dud!'), colour = HEX('6B9967')})
                    end
                    return true
                end
            }))
        end
    end  
}
    