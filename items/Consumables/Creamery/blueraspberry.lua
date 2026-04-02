SMODS.Consumable{
    key = 'nptblueraspberry',
    set = 'creamerycons',
    nptrarity = 'rarecreamery',
    hidden = true,
    soul_set = 'creamerycons',
    can_repeat_soul = true,
    soul_rate = 0.03,
    atlas = 'creameryatlas',
    pos = {x = 2, y = 2},
    soul_pos = {x = 3, y = 2},
    config = { extra = { cardcanapply = 3 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = { key = "blue_seal", set = "Other"}
        return {vars = { card.ability.extra.cardcanapply}}
    end,
    can_use = function(self, card)
        if G.hand.cards then
            return (#G.hand.cards > 0)
        end
    end,

    use = function(self, card, area)
        if G.hand.highlighted ~= nil then
            if #G.hand.highlighted > 0 then
                G.hand:unhighlight_all()
                play_sound('cardSlide2')
            end
        end

        local card_in_hand = SMODS.shallow_copy(G.hand.cards)
        local random_cards = {}
        for i = 1, card.ability.extra.cardcanapply do
            local chosencard, i = pseudorandom_element(card_in_hand, pseudoseed("brb"))
            table.insert(random_cards, chosencard)
            table.remove(card_in_hand, i)
        end
        for i, v in ipairs(random_cards) do
            if random_cards[i] then
                G.E_MANAGER:add_event(Event({  
                    trigger = 'before',
                    delay = 0.3,
                    func = function()
                        play_sound('cardSlide1')
                        G.hand:add_to_highlighted(random_cards[i])
                        random_cards[i]:set_seal("Blue")
                        G.E_MANAGER:add_event(Event({  
                            trigger = 'after',
                            delay = 0.3,
                            func = function()
                                G.hand:remove_from_highlighted(random_cards[i])
                                play_sound('cardSlide2')
                                return true
                            end    
                        }))
                        return true
                    end    
                }))
            end
        end
    end,

}