SMODS.Joker{
    key = 'nostalgia',
    atlas = 'Jokers2',
    rarity = 3, 
    cost = 7, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 7, y = 1},
    config = {extra = {scale = 25, conslot = 1, additionalslot = 0, recordflag = 0, recorded = 0}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.scale, card.ability.extra.conslot, card.ability.extra.additionalslot, card.ability.extra.recordflag, card.ability.extra.recorded}}
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.config.center.key == "j_tje_nostalgia" then
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.additionalslot
            print('hi')
        end
        return true
    end,
    add_to_deck = function(self, card, context)
        if card.config.center.key == "j_tje_nostalgia" then
            if card.ability.extra.recordflag == 0 then
                card.ability.extra.recorded = G.consumeables.config.card_limit
                card.ability.extra.recordflag = 1
            end
        end
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            print('tryupdate')
            card.ability.extra.additionalslot = card.ability.extra.conslot*(math.floor((G.GAME.dollars/card.ability.extra.scale)))
            G.consumeables.config.card_limit = card.ability.extra.recorded+card.ability.extra.additionalslot
        end
    end      
}


