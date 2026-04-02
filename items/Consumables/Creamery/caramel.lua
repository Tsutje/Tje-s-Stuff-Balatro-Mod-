SMODS.Consumable{
    key = 'nptcaramel',
    set = 'creamerycons',
    atlas = 'creameryatlas',
    pos = {x = 7, y = 0},
    config = { extra = {payout=4, payoutmessage = 0, odds = 3, isexisting='false'} },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.payout, G.GAME.probabilities.normal, card.ability.extra.odds}}
    end,
    can_use = function()
        for i, v in ipairs(G.hand.cards) do
            if next(SMODS.get_enhancements(v)) then
                return true
            end
        end
        return false
    end,
    use = function(self, card)
        if G.hand.highlighted ~= nil then
            if #G.hand.highlighted > 0 then
                G.hand:unhighlight_all()
                play_sound('cardSlide2')
            end
        end
        local card_in_hand = SMODS.shallow_copy(G.hand.cards)
        local enhanced = {}
        for i = 1, #G.hand.cards do
            local chosencard = (card_in_hand[i])
            if next(SMODS.get_enhancements(chosencard)) then
                table.insert(enhanced, chosencard)
            end
        end
        for i, v in ipairs(enhanced) do
            local forecheck = pseudorandom('nptcaramel') <  G.GAME.probabilities.normal/card.ability.extra.odds
            print(forecheck)
            G.E_MANAGER:add_event(Event({
                trigger = 'immediate',
                func = function()
                    G.E_MANAGER:add_event(Event({  
                        trigger = 'after',
                        delay = 0.2,
                        func = function()
                            if math.random() > 0.5 then
                                play_sound('tarot1')
                            else
                                play_sound('tarot2')
                            end
                            G.hand:add_to_highlighted(v)
                            if forecheck == true then
                                caramelnptwaslicked = 'true'
                                v:set_ability("c_base")
                                v:juice_up()
                                play_sound('tarot2')
                            else
                                caramelnptwaslicked = 'false'
                            end
                            return true
                        end    
                    }))
                    if forecheck == true then
                        card_eval_status_text(v, 'extra', nil, nil, nil, {message = ("Licked!"), colour = HEX('E26F3B')})
                    end 
                    card.ability.extra.payoutmessage = card.ability.extra.payoutmessage+card.ability.extra.payout
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('$')..card.ability.extra.payoutmessage, colour = G.C.MONEY, card = v})
                    ease_dollars(card.ability.extra.payout)
                    G.E_MANAGER:add_event(Event({  
                        trigger = 'immediate',
                        func = function()
                            if v ~= nil then
                                G.hand:remove_from_highlighted(v)
                            end
                            return true
                        end    
                    }))
                    return true
                end 
            }))
        end
    end
}