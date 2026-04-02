SMODS.Joker{
    key = 'talisman',
    atlas = 'crs_jokers',
    rarity = 4, 
    cost = 20, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {emult = 1, emscale = 0.1, tcount = 1}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.emult, card.ability.extra.emscale, card.ability.extra.tcount^card.ability.extra.emult, card.ability.extra.tcount} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.other_card.seal == 'Gold' and context.cardarea ==G.play then
            print('thas gold')
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = ("Upgrade!")})
            card.ability.extra.tcount = card.ability.extra.tcount + 1
        end
        if context.before then
            for i, v in ipairs(G.hand.cards) do
                if v.seal == 'Gold' then
                    print('thasgoldbutinhand')
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = ("Upgrade!")})
                    v:juice_up()
                    card.ability.extra.emult = card.ability.extra.emult + card.ability.extra.emscale
                end
            end
        end
        if context.joker_main then
            if card.ability.extra.tcount^card.ability.extra.emult < 1000 then
                return {
                    mult = card.ability.extra.tcount^card.ability.extra.emult
                }
            elseif card.ability.extra.tcount^card.ability.extra.emult < 10000 then
                play_sound('highlight2')
                return {
                    mult = card.ability.extra.tcount^card.ability.extra.emult
                }
            elseif card.ability.extra.tcount^card.ability.extra.emult < 100000 then
                play_sound('polychrome1')
                return {
                    mult = card.ability.extra.tcount^card.ability.extra.emult
                }
            else
                play_sound('introPad1')
                return {
                    mult = card.ability.extra.tcount^card.ability.extra.emult
                }
            end
        end
    end,
    crs_credits = {
        mod = "Talisman"
    }
}


