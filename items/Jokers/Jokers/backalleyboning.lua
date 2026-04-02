SMODS.Joker{
    key = 'backalleyboning',
    atlas = 'Jokers2',
    rarity = 3, 
    cost = 10, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 1, y = 2},
    config = {extra = {retriggerflag = 0, mphand = "???"}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.retriggerflag, card.ability.extra.mphand}}
    end,
    calculate = function(self, card, context)
        card.ability.extra.mphand = tje.mphand()
        if context.before and context.scoring_name ~= card.ability.extra.mphand then
            print(tje.mphand())
            print('lphand')
            card.ability.extra.retriggerflag = 1
            return {
                level_up = true
            }
        elseif context.repetition and card.ability.extra.retriggerflag == 1 then
            return {
                repetitions = 1
            }
        elseif context.after then
            card.ability.extra.retriggerflag = 0
        end
    end
}
