SMODS.Joker{
    key = 'fourofakind',
    atlas = 'Jokers2',
    rarity = 2, 
    cost = 6, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 9, y = 2},
    config = {extra = {akmult=4,akxmult=4}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.akxmult, card.ability.extra.akmult}}
    end,
    calculate = function(self, card, context)
        if context.scoring_name == "Four of a Kind" and context.joker_main then
            if pseudorandom('ninjaqwe_') < 0.5 then
                return {
                    xmult = card.ability.extra.akxmult
                }
            else
                return {
                    mult = card.ability.extra.akmult
                }
            end
        end
    end
}
