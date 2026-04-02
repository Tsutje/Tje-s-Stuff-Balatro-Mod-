SMODS.Joker{
    key = 'artbox',
    atlas = 'crs_jokers',
    rarity = 2, 
    cost = 6, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {stresh = 30, treshinc = 25, treshcount = 0}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.stresh+(card.ability.extra.treshinc*card.ability.extra.treshcount), card.ability.extra.treshinc} }
    end,
    calculate = function(self, card, context)
        if context.ending_shop and #G.consumeables.cards < G.consumeables.config.card_limit and G.GAME.dollars >= card.ability.extra.stresh+(card.ability.extra.treshinc*card.ability.extra.treshcount) then
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('timpani')
                    local tarot = SMODS.create_card{set = "collectable", area = G.consumeables}
                    tarot:add_to_deck()
                    G.consumeables:emplace(tarot)
                    G.GAME.consumeable_buffer = 0
                    return true
                end}))
            card.ability.extra.treshcount = card.ability.extra.treshcount+1
            return {
                message = 'Shiny!',
            }
        end
        if context.ante_change and context.ante_end then
            card.ability.extra.treshcount = 0
        end
    end,
    crs_credits = {
        mod = "ArtBox"
    }
}