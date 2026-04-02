
SMODS.current_mod.calculate = function(self, context)
    if context.using_consumeable
        and context.consumeable.ability.set == "creamerycons"
        and context.consumeable.config.center.key ~= "nptshavedice"
        and not context.consumeable.config.center.nptrarity
    then
        G.GAME.tje_last_creameryused = context.consumeable.config.center.key
    end
end

SMODS.Consumable{
    key = 'nptshavedice',
    set = 'creamerycons',
    atlas = 'creameryatlas',
    pos = {x = 9, y = 1},
    loc_vars = function (self, info_queue, card)
        local notallowed = not G.GAME.tje_last_creameryused
        local shavedicename = G.GAME.tje_last_creameryused and localize{type = "name_text",key = G.GAME.tje_last_creameryused, set = "creamerycons"}
        if not notallowed then
            info_queue[#info_queue+1] = G.P_CENTERS[G.GAME.tje_last_creameryused]
        end
        return {
            main_end = {
                { n = G.UIT.R, config = { padding = 0.1,  colour = not notallowed and G.C.GREEN or G.C.RED, r = 0.1}, nodes = {
                    {
                        n = G.UIT.T, config = {scale = 0.3, text = shavedicename or "None"}
                    }
                }}
            }
        }
    end,
    can_use = function (self, card)
        return G.GAME.tje_last_creameryused
    end,

    use = function(self, card)
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        play_sound('timpani')
        local creamery = SMODS.create_card{key = G.GAME.tje_last_creameryused}
        creamery:add_to_deck()
        G.consumeables:emplace(creamery)
        G.GAME.consumeable_buffer = 0
    end
}