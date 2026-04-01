

TJE = SMODS.current_mod

local config_path = TJE.path .. "/config.lua"


if NFS.read(config_path) then
    local loaded = assert(loadstring(NFS.read(config_path)))()
    TJE.config = { bypass_crossy = loaded.bypass_crossy or false }
else
    TJE.config = { bypass_crossy = false }
end
local tjeConfigTab = function()
    local tje_nodes = {}

    local container = { 
        n = G.UIT.R, 
        config = { align = "tm", padding = 0 }, 
        nodes = { 
            { 
                n = G.UIT.C, 
                config = { align = "tm", padding = 0.05 }, 
                nodes = {} 
            } 
        } 
    }
    tje_nodes[#tje_nodes + 1] = container

    tje_nodes[#tje_nodes + 1] = create_toggle({
        label = localize("tje_bypass_crossy"),
        active_colour = HEX("40c76d"),

        ref_table = TJE.config,
        ref_value = "bypass_crossy",

        callback = function()
            NFS.write(
                TJE.path .. "/config.lua",
                STR_PACK({ bypass_crossy = TJE.config.bypass_crossy })
            )
        end
    })

    return {
        n = G.UIT.ROOT,
        config = {
            emboss = 0.05,
            minh = 6,
            r = 0.1,
            minw = 10,
            align = "cm",
            padding = 0.2,
            colour = G.C.BLACK,
        },
        nodes = tje_nodes,
    }
end

SMODS.current_mod.config_tab = tjeConfigTab

---------------- CORE ----------------
assert(SMODS.load_file('core/assets.lua'))()
assert(SMODS.load_file('core/colours.lua'))()
assert(SMODS.load_file('core/sounds.lua'))()
assert(SMODS.load_file('core/hooks.lua'))()
assert(SMODS.load_file('core/rarities.lua'))()
assert(SMODS.load_file('core/funcs.lua'))()

---------------- LIB ----------------
assert(SMODS.load_file('lib/utils.lua'))()
assert(SMODS.load_file('lib/TjeLib.lua'))()

---------------- GLOBALS ----------------
assert(SMODS.load_file('globals/global.lua'))()

---------------- ITEMS ----------------

-- Boosters
assert(SMODS.load_file('items/Boosters/creamery.lua'))()

-- Consumables
assert(SMODS.load_file('items/Consumables/Creamery/!!creamery.lua'))()
-- assert(SMODS.load_file('items/Consumables/Wager/!!wager.lua'))()
-- assert(SMODS.load_file('items/Consumables/Blank/!!blank.lua'))()
-- assert(SMODS.load_file('items/Consumables/Tampered/!!tampered.lua'))()
-- assert(SMODS.load_file('items/Consumables/Token/!!token.lua'))()

-- Jokers
assert(SMODS.load_file('items/Jokers/Legacy/!!legacy.lua'))()
assert(SMODS.load_file('items/Jokers/Jokers/!!Jokers.lua'))()
-- assert(SMODS.load_file('items/Jokers/Hex/!!hex.lua'))()
-- assert(SMODS.load_file('items/Jokers/Romantic/!!romantic.lua'))()
assert(SMODS.load_file('items/Jokers/Crossy/!!crossy.lua'))()
-- assert(SMODS.load_file('items/Jokers/ComingSoonJokers.lua'))()

-- Enhancements
assert(SMODS.load_file('items/Enhancements/!!enhancements.lua'))()

-- Decks
assert(SMODS.load_file('items/Decks/phony.lua'))()
-- assert(SMODS.load_file('items/Decks/hexxed.lua'))()
assert(SMODS.load_file('items/Decks/candyblossom.lua'))()
assert(SMODS.load_file('items/Decks/dusted.lua'))()

-- Blinds
-- assert(SMODS.load_file('items/Blinds/thefortunesveil.lua'))()

-- Seals
-- assert(SMODS.load_file('items/Seals/seals.lua'))()

-- Waterproof Stickers
-- assert(SMODS.load_file('items/Waterproof_stickers/!!wp_stickers.lua'))()

local neapolitan = SMODS.Gradient{ key = "neapolitan", colours = { HEX("EDCA7E"), HEX("8F4F30"), HEX("FFA2E5") } }

--Misc Stuff


local main_menu_hook = Game.main_menu --Completely stolen from ThunderEdge who took it from Astra so tnx to both of them!!
function Game.main_menu(change_context)
    local ret = main_menu_hook(change_context)
    G.SPLASH_ECHORIA_LOGO = Sprite(
        0, 0,
        6,
        6 * G.ASSET_ATLAS["tje_echoria_logo"].py / G.ASSET_ATLAS["tje_echoria_logo"].px,
        G.ASSET_ATLAS["tje_echoria_logo"],
        { x = 0, y = 0 }
    )
    G.SPLASH_ECHORIA_LOGO:set_alignment({
        major = G.title_top,
        type = "cm",
        bond = "Strong",
        offset = { x = 0, y = -3.2}
    })
    G.SPLASH_ECHORIA_LOGO:define_draw_steps({ {
        shader = 'dissolve',
    } })
    G.SPLASH_ECHORIA_LOGO.tilt_var = { mx = 0, my = 0, dx = 0, dy = 0, amt = 0 }
    G.SPLASH_ECHORIA_LOGO.states.collide.can = true
    G.SPLASH_ECHORIA_LOGO.dissolve = 1
    G.mul_loaded_timer = 0
    G.E_MANAGER:add_event(Event({
        print('undissolving'),
        trigger = 'after',
        delay = change_context == 'splash' and 3.6 or change_context == 'game' and 4 or 1,
        blockable = false,
        blocking = false,
        func = (function()
            play_sound('whoosh1', 0.2, 0.8)
            ease_value(G.SPLASH_ECHORIA_LOGO, 'dissolve', -1, nil, nil, nil,
                    change_context == 'splash' and 2.3 or 0.9)
            G.VIBRATION = G.VIBRATION + 1.5
            return true
        end)
    }))
    function G.SPLASH_ECHORIA_LOGO:click()
        print("that tickles!")
        play_sound('button', 1, 0.3)
    end
    function G.SPLASH_ECHORIA_LOGO:hover()
        Node.hover(self)
    end
    function G.SPLASH_ECHORIA_LOGO:stop_hover()
        Node.stop_hover(self)
    end
    G.SPLASH_BACK:define_draw_steps({ {
        shader = 'splash',
        send = {
            { name = 'time',       ref_table = G.TIMERS,  ref_value = 'REAL_SHADER' },
            { name = 'vort_speed', val = 0.4 },
            { name = 'colour_1',   ref_table = G.ARGS.LOC_COLOURS, ref_value = 'tje_Echoria' },
            { name = 'colour_2',   ref_table = G.ARGS.LOC_COLOURS, ref_value = 'tje_Echoria_Inverse' },
        }
    } })
    return ret
end




to_big = to_big or function(x) return x end
to_number = to_number or function(x) return x end 

TJE.TjeDescriptionDummies = {}

---@type SMODS.Center
TJE.TjeDescriptionDummy = SMODS.Center:extend{
    set = 'TjeDescriptionDummy',
    obj_buffer = {},
    obj_table = TJE.TjeDescriptionDummies,
    class_prefix = 'cdd',
    required_params = {
        'key',
    },
    pre_inject_class = function(self)
        G.P_CENTER_POOLS[self.set] = {}
    end,
    inject = function(self)
        SMODS.Center.inject(self)
        
    end,
    get_obj = function(self, key)
        if key == nil then
            return nil
        end
        return self.obj_table[key]
    end
}

TJE.TjeDescriptionDummy{
    key = "lhterm",
    key = "csterm",
    key = "rollterm"
}

local original_create_mod_badges = SMODS.create_mod_badges

function SMODS.create_mod_badges(obj, badges)
    original_create_mod_badges(obj, badges)

    if SMODS.config.no_mod_badges or not obj or not obj.crs_credits then
        return
    end

    local function calc_scale_fac(text, badge_width)
        local size = 0.9
        local font = G.LANG.font
        local max_text_width = badge_width - 0.1
        local calced_text_width = 0

        for _, c in utf8.chars(text) do
            local tx = font.FONT:getWidth(c) * (0.33 * size) * G.TILESCALE * font.FONTSCALE
                + 2.7 * G.TILESCALE * font.FONTSCALE
            calced_text_width = calced_text_width + tx / (G.TILESIZE * G.TILESCALE)
        end

        return calced_text_width > max_text_width and max_text_width / calced_text_width or 1
    end

    if obj.crs_credits.mod then
        local strings = { TJE.display_name }

        for _, v in ipairs({ "mod" }) do
            if obj.crs_credits[v] then
                if type(obj.crs_credits[v]) == "string" then
                    obj.crs_credits[v] = { obj.crs_credits[v] }
                end
                for i = 1, #obj.crs_credits[v] do
                    local loc_str = localize({
                        type = "variable",
                        key = "crs_" .. v,
                        vars = { obj.crs_credits[v][i] }
                    })
                    strings[#strings + 1] = loc_str and loc_str[1] or obj.crs_credits[v][i]
                end
            end
        end

        local badge_width = 2
        if badges[1] and badges[1].config and badges[1].config.w then
            badge_width = badges[1].config.w
        end

        local min_scale_fac = 1
        for i = 1, #strings do
            min_scale_fac = math.min(min_scale_fac, calc_scale_fac(strings[i], badge_width))
        end

        local ct_strs = {}
        for i = 1, #strings do
            ct_strs[i] = strings[i]
        end

        local function find_node_with_string(badge, str)
            local function search(nodes)
                for _, n in ipairs(nodes) do
                    if n.config and n.config.object and n.config.object.string == str then
                        return n
                    end
                    if n.nodes then
                        local found = search(n.nodes)
                        if found then return found end
                    end
                end
                return nil
            end
            return search(badge.nodes)
        end

        for i = 1, #badges do
            local node = find_node_with_string(badges[i], TJE.display_name)
            if node then
                node.config.object:remove()

                badges[i] = {
                    n = G.UIT.R,
                    config = { align = "cm", w = badge_width },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = {
                                align = "cm",
                                colour = TJE.badge_colour,
                                r = 0.1,
                                minw = 2 / min_scale_fac,
                                minh = 0.36,
                                emboss = 0.05,
                                padding = 0.03 * 0.9,
                            },
                            nodes = {
                                { n = G.UIT.B, config = { h = 0.1, w = 0.03 } },
                                {
                                    n = G.UIT.O,
                                    config = {
                                        object = DynaText({
                                            string = ct_strs,
                                            colours = { obj.crs_credits.text_colour or G.ARGS.LOC_COLOURS.tje_label },
                                            silent = true,
                                            float = true,
                                            shadow = true,
                                            offset_y = -0.03,
                                            spacing = 1,
                                            scale = 0.33 * 0.9 * min_scale_fac,
                                        }),
                                    },
                                },
                                { n = G.UIT.B, config = { h = 0.1, w = 0.03 } },
                            },
                        },
                    },
                }
                break
            end
        end
    end
end