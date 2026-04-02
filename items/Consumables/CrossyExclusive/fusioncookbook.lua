SMODS.Consumable {
    object_type = "Consumable",
    key = 'fusioncookbook',
    set = "Snack",
    atlas = 'crs_jokers',
    pos = { 
        x = 0, 
        y = 0 
    },
    pools = { Snack = true },
    cost = 3,
    weight = 10,
    config = {chips = 35, stone_count = 0},
    discovered = true,
    unlocked = true,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.chips, card.ability.chips*card.ability.stone_count}}
    end,
    can_use = function(self)
        return G.GAME.blind.in_blind
    end,
    keep_on_use = function(self, card)
        return true
    end,
    use = function(self, card)
        card.ability.stone_count = 0
        -- Count stone cards in deck and hand
        for _, c in ipairs(G.playing_cards or {}) do
            if SMODS.has_enhancement(c, 'm_stone') then
                card.ability.stone_count = card.ability.stone_count + 1
            end
        end
        local eval = function(card) return not card.REMOVED end
        juice_card_until(card, eval, true)
    end,
    calculate = function(self, card, context)
        
        if context.individual and context.cardarea == G.play then
            return {
                chips = card.ability.stone_count*card.ability.chips
            }
        end
        if context.after then
            SMODS.destroy_cards(card, nil, nil, true)
        end
    end,
    crs_credits = {
        mod = "Fusion Cookbook"
    }

}    
