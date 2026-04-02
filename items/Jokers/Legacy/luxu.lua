SMODS.Joker{
    key = 'luxu',
    atlas = 'Jokers',
    rarity = 4, 
    cost = 20, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 4, y = 0},
    soul_pos = {x = 5, y = 0},
    config = {extra = {xchips = 0.05, treshold1 = 5, xchips_scale = 0.01, treshold2 = 35}},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_tje_fadedremnant
        return {
            vars = {
                card.ability.extra.xchips,
                card.ability.extra.treshold1,
                card.ability.extra.xchips_scale,
                card.ability.extra.treshold2
            }
        }
    end,
    calculate = function (self, card, context)
        target = context.other_card
        if context.individual and context.cardarea == G.play and SMODS.has_enhancement(target, "m_tje_fadedremnant")  then
            if target.ability.roll_win_count then
                if target.ability.roll_win_count >= card.ability.extra.treshold2 then
                    card.ability.extra.xchips = card.ability.extra.xchips+card.ability.extra.xchips_scale
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = ("Upgrade!"), colour = HEX('9353B5')})
                    return{
                        xchips = 1+(card.ability.extra.xchips*((target.ability.rolls-target.ability.roll_win_count)/card.ability.extra.treshold1)), card
                    }
                end
                return{
                    xchips = 1+(card.ability.extra.xchips*((target.ability.rolls-target.ability.roll_win_count)/card.ability.extra.treshold1)), card
                }
            end
        end

    end
}