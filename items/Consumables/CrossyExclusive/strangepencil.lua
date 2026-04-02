SMODS.Consumable {
    object_type = "Consumable",
    key = 'strangepencil',
    set = "index",
    atlas = 'crs_jokers',
    pos = { 
        x = 0, 
        y = 0 
    },
    cost = 5,
    config = {xchips = 0.5, stone_count = 0, used = "Inactive"},
    discovered = true,
    unlocked = true,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.xchips, 1+card.ability.xchips*card.ability.stone_count, card.ability.used}}
    end,
    can_use = function(self)
        return G.GAME.blind.in_blind
    end,
    keep_on_use = function(self, card)
        return true
    end,
    use = function(self, card)
        if card.ability.used == "Inactive" then
            card.ability.used = "Active"
        else
            card.ability.used = "Inactive"
        end
        local eval = function(card) return card.ability.used == "Active" end
        juice_card_until(card, eval, true)
    end,
    calculate = function(self, card, context)
        card.ability.stone_count = 0
        for _, c in ipairs(G.playing_cards or {}) do
            if next(SMODS.get_enhancements(c)) then
                card.ability.stone_count = card.ability.stone_count + 1
            end
        end
        if context.final_scoring_step and card.ability.used == "Active" then
            SMODS.calculate_effect({xchips= 1+card.ability.xchips*card.ability.stone_count}, card)
        end
        if context.after and card.ability.used == "Active" and card ~= nil then
            SMODS.destroy_cards(card, nil, nil, true)
        end
    end,
    crs_credits = {
        mod = "Strange Pencil"
    }

}    
