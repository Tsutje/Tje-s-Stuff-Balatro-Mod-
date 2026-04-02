SMODS.Consumable{
    key = 'nptheroswirl',
    set = 'creamerycons',
    atlas = 'creameryatlas',
    tjseries = 'npt',
    pos = {x = 7, y = 1},
    config = { extra = { musthighlightamount = 4, odds = 4} },
    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.musthighlightamount, G.GAME.probabilities.normal, card.ability.extra.odds}}
    end,

    can_use = function()
        if G.hand.highlighted ~= nil then
            return #G.hand.highlighted <= 4 and #G.hand.highlighted > 0
        else
            return false
        end 
    end,
    use = function(self, card)
        pickedsuit = pseudorandom_element(TJ.suitpool, pseudoseed('picklerick'))
        print(pickedsuit)
        for i, v in ipairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event({  
                trigger = 'after',
                delay = 0.5,
                func = function()
                    G.hand.highlighted[i]:juice_up()
                    if pseudorandom('heroswirldupe') < G.GAME.probabilities.normal/card.ability.extra.odds then
                        card_eval_status_text(G.hand.highlighted[i], 'extra', nil, nil, nil, {message =('Duped!'), colour = HEX('F16565')})
                    play_sound('tarot1')
                        local copy = copy_card(G.hand.highlighted[i])
                        G.deck:emplace(copy)
                        table.insert(G.playing_cards, copy)
                    else
                        G.hand.highlighted[i]:juice_up()
                        play_sound('tarot2')
                        SMODS.change_base(G.hand.highlighted[i], pickedsuit)
                        
                    end
                    return true
                end    
            }))
        end
    end
}