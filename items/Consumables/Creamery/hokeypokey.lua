SMODS.Consumable{
    key = 'npthokeypokey',
    set = 'creamerycons',
    tjseries = 'npt',
    atlas = 'creameryatlas',
    pos = {x = 0, y = 1},
    loc_vars = function(self, info_queue, card)
    end,

    can_use = function()
        return (#G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit) or (card.area == G.consumeables)
    end,

    use = function(self, card)
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            for i=1, G.consumeables.config.card_limit - (#G.consumeables.cards + G.GAME.consumeable_buffer) do
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                func = (function()
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.35,
                        func = function()
                            play_sound('timpani')
                            local tarot = SMODS.create_card{set = "Tarot", area = G.consumeables}
                            tarot:add_to_deck()
                            G.consumeables:emplace(tarot)
                            G.GAME.consumeable_buffer = 0
                            return true
                        end}))                         
                    return true
                end)}))
            end
        end
    end
}