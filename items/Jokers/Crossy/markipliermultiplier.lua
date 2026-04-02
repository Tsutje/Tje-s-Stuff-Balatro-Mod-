SMODS.Joker{
    key = 'markipliermultiplier',
    atlas = 'crs_jokers',
    rarity = 2, 
    cost = 6, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {payout = 20, percentage = 1000, storedblind = 0}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.payout, card.ability.extra.percentage} }
    end,
    update = function(self, card, dt)
        local t = os.date("*t", os.time() + 0 * 3600)
        card.ability.extra.xmult = t.hour + (t.min + t.sec / 60) / 60
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            card.ability.extra.storedblind = G.GAME.blind.chips
            G.GAME.blind.chips = G.GAME.blind.chips*(card.ability.extra.percentage/100)
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
            play_sound('gong')
            card:juice_up()
        end
        if G.GAME.blind.in_blind and G.GAME.current_round.hands_played > 1 then
            G.GAME.blind.chips = card.ability.extra.storedblind
             G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
            play_sound('gong')
            card:juice_up()
        end
        if context.end_of_round and G.GAME.current_round.hands_played <= 1 then
            bonus = card.ability.extra.payout
        elseif context.end_of_round and G.GAME.current_round.hands_played > 1 then
            bonus = 0
        end
    end,
    calc_dollar_bonus = function(self, card)-------------STUPID PAYOUTTHING
        if bonus > 0 then
            return bonus
        end
    end,
    crs_credits = {
        mod = "Markiplier Multiplier"
    }
}


