SMODS.Joker{
    key = 'systemclock',
    atlas = 'crs_jokers',
    rarity = 3, 
    cost = 12, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {xmult = 0}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    update = function(self, card, dt)
    local t = os.date("*t")
    if t then
        local value = t.hour + t.min / 100
        card.ability.extra.xmult = math.floor(value * 10 + 0.5) / 10
    end
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.final_scoring_step and G.GAME.current_round.hands_left > 0 then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                func = function()
                    play_sound('gong')
                    card:juice_up()
                    return true
                end
            }))
            SMODS.calculate_effect({xmult = 0, xchips = 0}, card)
        end
    end,
    crs_credits = {
        mod = "SystemClock"
    }
}


