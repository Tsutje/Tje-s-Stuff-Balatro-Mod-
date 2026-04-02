SMODS.Enhancement {
    object_type = "Enhancement",
    key = 'candied',
    pos = {x = 3, y = 0}, 
    atlas = 'Enhancements',
    config = {mustplay="???", payout=2},
    loc_vars = function(self, info_queue, card)
      return { vars = { 
        card.ability.mustplay, card.ability.payout
      }}
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.mustplay = pseudorandom_element(TJ.handtypepool, pseudoseed('candied'))
        card.ability.payout = math.floor(card:get_chip_bonus()/2)
    end,
    calculate = function (self, card, context)
        if card.ability.mustplay == "???" then
            card.ability.mustplay = pseudorandom_element(TJ.handtypepool, pseudoseed('candied'))
            card.ability.payout = math.floor(card:get_chip_bonus()/2)
        end
        if context.first_hand_drawn then
            card.ability.mustplay = pseudorandom_element(TJ.handtypepool, pseudoseed('candied'))
            card.ability.payout = math.floor(card:get_chip_bonus()/2)
        end
        if context.before and context.cardarea == G.hand and context.scoring_name == card.ability.mustplay then      
            ease_dollars(card.ability.payout)  
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.5,
                func = function()
                    card:start_dissolve({HEX('ECA950')}, nil, 1.6)
                    G.E_MANAGER:add_event(Event({  
                        func = function()
                            card:remove()
                            return true
                        end    
                    }))           
                    return true
                end
            }))
        end
    end
}