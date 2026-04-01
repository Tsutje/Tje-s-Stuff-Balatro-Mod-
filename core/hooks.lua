local main_menu_hook = Game.main_menu
function Game.main_menu(change_context)
    local ret = main_menu_hook(change_context)
    -- Hook into the original main menu
    local main_menu_hook = Game.main_menu
    -- Credit: Stolen from ThunderEdge, originally from Astra

    function Game.main_menu(change_context)
        local ret = main_menu_hook(change_context)

        -- Create Echoria splash logo sprite
        G.SPLASH_ECHORIA_LOGO = Sprite(
            0, 0, 6,
            6 * G.ASSET_ATLAS["tje_echoria_logo"].py / G.ASSET_ATLAS["tje_echoria_logo"].px,
            G.ASSET_ATLAS["tje_echoria_logo"],
            { x = 0, y = 0 }
        )

        -- Set alignment
        G.SPLASH_ECHORIA_LOGO:set_alignment({
            major = G.title_top,
            type = "cm",
            bond = "Strong",
            offset = { x = 0, y = -3.2 }
        })

        -- Define draw steps with dissolve shader
        G.SPLASH_ECHORIA_LOGO:define_draw_steps({
            { shader = 'dissolve' }
        })

        -- Initialize tilt variables
        G.SPLASH_ECHORIA_LOGO.tilt_var = { mx = 0, my = 0, dx = 0, dy = 0, amt = 0 }

        -- Enable collision
        G.SPLASH_ECHORIA_LOGO.states.collide.can = true

        -- Set initial dissolve state
        G.SPLASH_ECHORIA_LOGO.dissolve = 1

        -- Reset loaded timer
        G.mul_loaded_timer = 0

        -- Add event to undissolve logo
        G.E_MANAGER:add_event(Event({
            print('undissolving'),
            trigger = 'after',
            delay = change_context == 'splash' and 3.6
                or change_context == 'game' and 4
                or 1,
            blockable = false,
            blocking = false,
            func = function()
                play_sound('whoosh1', 0.2, 0.8)
                ease_value(
                    G.SPLASH_ECHORIA_LOGO,
                    'dissolve',
                    -1,
                    nil, nil, nil,
                    change_context == 'splash' and 2.3 or 0.9
                )
                G.VIBRATION = G.VIBRATION + 1.5
                return true
            end
        }))

        -- Click callback
        function G.SPLASH_ECHORIA_LOGO:click()
            print("that tickles!")
            play_sound('button', 1, 0.3)
        end

        -- Hover callbacks
        function G.SPLASH_ECHORIA_LOGO:hover()
            Node.hover(self)
        end

        function G.SPLASH_ECHORIA_LOGO:stop_hover()
            Node.stop_hover(self)
        end

        -- Redefine splash background draw steps
        G.SPLASH_BACK:define_draw_steps({
            {
                shader = 'splash',
                send = {
                    { name = 'time', ref_table = G.TIMERS, ref_value = 'REAL_SHADER' },
                    { name = 'vort_speed', val = 0.4 },
                    { name = 'colour_1', ref_table = G.ARGS.LOC_COLOURS, ref_value = 'tje_Echoria' },
                    { name = 'colour_2', ref_table = G.ARGS.LOC_COLOURS, ref_value = 'tje_Echoria_Inverse' },
                }
            }
        })

        return ret
    end



    return ret
end

local Cardis_suit = Card.is_suit
function Card:is_suit(bypass_debuff, flush_calc)
    if (next(SMODS.find_card('j_tje_kopipuestofacecards'))) and (self.base.suit == 'Hearts' or self.base.suit == 'Diamonds' or self.base.suit == 'Spades' or self.base.suit == 'Clubs') and self:is_face() then
        return true
    end
    return Cardis_suit(self, bypass_debuff, flush_calc)
end

---end stuff
function SMODS.current_mod.reset_game_globals(run_start)
    idol_reset_func_tje()
end

