SMODS.Joker{
    key = 'antibiotic',
    atlas = 'Jokers2',
    rarity = 2, 
    cost = 7, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 7, y = 2},
    config = {extra = {handsize = 20, ambatablow = 0}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.handsize}}
    end,
    add_to_deck = function(self, card, from_debuff)
        if card.config.center.key == "j_tje_antibiotic" then
            G.hand:change_size(card.ability.extra.handsize)
        end
        return true
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.config.center.key == "j_tje_antibiotic" then
            G.hand:change_size(-card.ability.extra.handsize)
        end
        return true
    end,
    calculate = function(self, card, context)
        if context.final_scoring_step then
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = ("Overdosed!"), colour = HEX('E23353')})
            return {
                remove_default_message = true,
                xmult = 0.5,
                xchips = 0.5
            }
        elseif G.GAME.blind.in_blind then
            SMODS.Stickers['eternal']:apply(card, true)
        end
        if context.selling_self and G.GAME.blind.in_blind then
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = ("Clever!"), colour = HEX('E23353')})
            G.GAME.blind.chips = G.GAME.blind.chips^8
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
    end,
    calc_dollar_bonus = function(self, card)-------------STUPID PAYOUTTHING
        SMODS.Stickers['eternal']:apply(card, false)
        play_sound('tarot2')
        card:juice_up()
        G.jokers:remove_card(card)
        card:remove()
    end,
}


