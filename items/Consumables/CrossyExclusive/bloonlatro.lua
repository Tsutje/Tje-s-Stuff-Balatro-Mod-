
SMODS.Consumable { --SMS
    key = 'bloonlatro',
    set = 'Power',
    atlas = 'crs_jokers',
    pos = { x = 0, y = 0 },
    order = 1,
    config = { amount = 3},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_wild
        return { vars = { card.ability.amount } }
    end,
    can_use = function(self, card)
        return G.hand and #G.hand.cards > 0 
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
        for i = 1, card.ability.amount do
            local chosencard, i = pseudorandom_element(card_in_hand, pseudoseed("bloonlatro"))
            table.insert(random_cards, chosencard)
            table.remove(card_in_hand, i)
        end
        for i, v in ipairs(random_cards) do
            if random_cards[i] then
                G.E_MANAGER:add_event(Event({  
                    trigger = 'before',
                    delay = 0.5,
                    func = function()
                        play_sound('tarot1')
                        random_cards[i]:juice_up()
                        return true
                    end    
                }))
                random_cards[i]:set_ability('m_wild', nil, true)
            end
        end
    end,
    crs_credits = {
        mod = "Bloonlatro"
    }
}
