SMODS.Joker{
    key = 'SCORGRA',
    loc_txt = {
        name = 'Scorching Gratification',
        text = {
            "When {C:attention}Discarding{} cards, {C:green}#1# in #2#{} chance",
            "To {C:red}Destroy {C:attention}Discarded{} card {C:green}and/or{} a Card in {C:attention}Deck{}.",
            "Gain {C:money}$#3#{} for {C:blue}each{} {C:red}Destroyed{} card.",
            "{C:money,s:0.75}+$3{} {C:inactive,s:0.75}if card has enhancement{}",
            '{C:inactive}":steamhappy:"{}'
        }
        
    },
    atlas = 'Jokers',
    rarity = 3, 
    cost = 5, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 1},
        config = {
        extra = {
            odds = 3,
            mfu = 4,
            mfe = 7
        }
    },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                G.GAME.probabilities.normal,
                card.ability.extra.odds,
                card.ability.extra.mfu,
                card.ability.extra.mfe
            }
        }
    end,

    calculate = function(self, card, context)
        if context.discard then
            if pseudorandom('riceshower') < G.GAME.probabilities.normal / card.ability.extra.odds then
                local moneyEarned = card.ability.extra.mfe
                if not next(SMODS.get_enhancements(context.other_card)) then
                    moneyEarned = card.ability.extra.mfu
                end
                local cardToBeDestroyed = context.other_card
                G.E_MANAGER:add_event(Event({
                    func = function()
                        ease_dollars(moneyEarned)
                        cardToBeDestroyed:start_dissolve()
                        return true
                    end
                }))
            end
        end
    end
}