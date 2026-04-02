house_rules_hands = {
    "tje_lunarhouse"
}
--code taken from Coldeans planet
SMODS.Consumable { --Modifed from Vanilla Remade's Black Hole
    key = 'blankplanet',
    set = 'Planet',
    set_card_type_badge = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_tje_hazard'), G.C.SECONDARY_SET.Planet, G.C.WHITE, 1.2 )
	end,
    cost = 4,
    atlas = 'tje_crs_jokers',
    pos = { x = 0, y = 0 },
    config = {hand_type = "tje_lunarhouse", softlock = true}, --Wanted it to only appear
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = TJE.TjeDescriptionDummies["cdd_tje_csterm"]
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3 },
            { handname = localize('k_all_hands'), chips = '...', mult = '...', level = '' })
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.8, 0.5)
                G.TAROT_INTERRUPT_PULSE = true
                return true
            end
        }))
        update_hand_text({ delay = 0 }, { mult = '+', StatusText = true })
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.9,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.8, 0.5)
                return true
            end
        }))
        update_hand_text({ delay = 0 }, { chips = '+', StatusText = true })
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.9,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.8, 0.5)
                G.TAROT_INTERRUPT_PULSE = nil
                return true
            end
        }))
        update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.9, delay = 0 }, { level = '+1' })
        delay(1.3)
        for i, hand in pairs(house_rules_hands) do
            SMODS.smart_level_up_hand(card, hand, true)
        end
        update_hand_text({ sound = 'button', volume = 0.7, pitch = 1.1, delay = 0 },
            { mult = 0, chips = 0, handname = '', level = '' })
    end,
    can_use = function(self, card)
        return true
    end,
    tje_credits = {
    }
}