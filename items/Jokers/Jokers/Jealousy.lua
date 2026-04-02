SMODS.Joker{
    key = 'jealousy',
    atlas = 'Jokers2',
    rarity = 3, 
    cost = 7, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 6, y = 1},
    config = {extra = {odds = 2, xmult = 1.25}},
    loc_vars = function(self, info_queue, card)
        return {vars = {G.GAME.probabilities.normal, card.ability.extra.odds, card.ability.extra.xmult}}
    end,
    calculate = function(self, card, context)
        jealousymsgtable = {
            "You never look at me like that",
            "It's like you dont even love me!",
            "Would you still love me if I was a worm?",
            "We're Over!",
            "Why don't you treat me like that!",
            "Do you even love me?",
            "I can't stand you!",
            "Do you know how much this hurts?!",
            "I hate you!"
        }
        if context.final_scoring_step then
            for i, playedcard in ipairs(context.scoring_hand) do
                if pseudorandom('jealousy') < G.GAME.probabilities.normal/card.ability.extra.odds then
                    if playedcard:is_suit('Hearts', true) then
                        SMODS.calculate_effect({remove_default_message = true, xmult = card.ability.extra.xmult}, card)
                        card_eval_status_text(playedcard, 'extra', nil, nil, nil, {message = (jealousymsgtable[math.random(#jealousymsgtable)]), colour = HEX('B7276A')})
                    end
                end
            end
        end
    end
}


