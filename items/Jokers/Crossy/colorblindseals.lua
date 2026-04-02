SMODS.Joker{
    key = 'colorblindseals',
    atlas = 'crs_jokers',
    rarity = 2, 
    cost = 12, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {retriggers = 1}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.retriggers } }
    end,
    update = function(self, card, dt)
        local t = os.date("*t", os.time() + 0 * 3600)
        card.ability.extra.xmult = t.hour + (t.min + t.sec / 60) / 60
    end,
    calculate = function(self, card, context)
        if context.repetition and context.other_card:get_seal() then
            return {
                repetitions = card.ability.extra.retriggers,
                card = card
            }
        end
        if context.hand_drawn then
            for i, v in ipairs(context.hand_drawn) do
                if v:get_seal() then
                    play_sound('card3')
                    v:flip('back')
                end
            end
        end
    end,
    crs_credits = {
        mod = "Colorblind Seals"
    }
}


