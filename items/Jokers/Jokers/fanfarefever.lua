SMODS.Joker{
    key = 'fanfarefever',
    atlas = 'Jokers2',
    rarity = 3, 
    cost = 7, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 5, y = 0},
    config = {extra = {xmult=1,odds=4,scale=0.05}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.xmult,G.GAME.probabilities.normal,card.ability.extra.odds,card.ability.extra.scale}}
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local other_card = context.other_card
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Stored!", colour = HEX('68C3E2')})
            card.ability.extra.xmult = card.ability.extra.xmult+(other_card:get_chip_bonus()*card.ability.extra.scale)
            if pseudorandom('fanfarefever') <= G.GAME.probabilities.normal/card.ability.extra.odds then
                card_eval_status_text(other_card, 'extra', nil, nil, nil, {message = "Dissolved!", colour = HEX('68C3E2')})
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.5,
                    func = function()
                        other_card:start_dissolve({HEX('68C3E2')}, nil, 1.6)
                        G.E_MANAGER:add_event(Event({  
                            func = function()
                                other_card:remove()
                                return true
                            end    
                        }))           
                        return true
                    end
                }))
            end
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.end_of_round then
            card.ability.extra.xmult = 1
        end
    end
}


