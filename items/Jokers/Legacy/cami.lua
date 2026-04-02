SMODS.Joker{
    key = 'cami',
    atlas = 'Jokers',
    rarity = 4, 
    cost = 20, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 6, y = 0},
    soul_pos = {x = 7, y = 0},
    config = { extra = {odds = 4, money = 5, scale = 0.75, xmult = 1, camitresh = 5, rolls = 10}},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = TJE.TjeDescriptionDummies["cdd_tje_rollterm"]
        return { vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.money,  card.ability.extra.scale, card.ability.extra.xmult, card.ability.extra.camitresh, card.ability.extra.rolls} }
    end,
    calculate = function(self, card, context)
        if context.reroll_shop then
            local roll_success = 0
            for i = 1, card.ability.extra.rolls do
                if pseudorandom('Cami') <= G.GAME.probabilities.normal / card.ability.extra.odds then 
                    roll_success = roll_success+1
                end
            end
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money*roll_success
            SMODS.calculate_effect(
                {dollars = card.ability.extra.money*roll_success},
                card,
                {func = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            G.GAME.dollar_buffer = 0
                            return true
                        end
                    }))
                end}
            )
            if roll_success >= card.ability.extra.camitresh then
                card.ability.extra.xmult = card.ability.extra.xmult+card.ability.extra.scale
                return{
                    message = "UPGRADE!!",
                    colour = G.C.GREEN,
                }
            end
        end
        if context.joker_main and card.ability.extra.xmult > 1 then
            return {
                Xmult = card.ability.extra.xmult
            }
        end
    end
}