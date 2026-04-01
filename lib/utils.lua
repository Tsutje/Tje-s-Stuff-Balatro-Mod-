tjestuff = {}
function tjestuff.mphand()
	if not G.GAME or not G.GAME.current_round then return 'High Card' end
	local chosen_hand = 'High Card'
	local _handname, _played, _order = 'High Card', -1, 100
	for k, v in pairs(G.GAME.hands) do
		if v.played > _played or (v.played == _played and _order > v.order) then 
			_played = v.played
			_handname = k
		end
	end
	chosen_hand = _handname
	return chosen_hand
end
function tjestuff.lvlhandtrig(hand,level)
	update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = hand, level = level})
end

-- Define WP stickers, ALL CODE UNDER WP STICKERS ARE BUILT FROM PAPERBACK!!


tjestuff.wp_stickers = {}
tjestuff.wp_stickers = SMODS.Sticker:extend {
	prefix_config = { key = true },
	should_apply = function(self, card, center, area, bypass_roll)
		return bypass_roll
	end,
	config = {},
	rate = 0,
	special = false,
	sets = {
		Default = true
	},

	inject = function(self, i)
		SMODS.Sticker.inject(self, i)
		table.insert(tjestuff.wp_stickers, self.key)
	end,

	draw = function(self, card)
		local x_offset = (card.T.w / 71) * -4 * card.T.scale
		G.shared_stickers[self.key].role.draw_major = card
		G.shared_stickers[self.key]:draw_shader('dissolve', nil, nil, nil, card.children.center, nil, nil, x_offset)
		if self.shiny then
		G.shared_stickers[self.key]:draw_shader('voucher', nil, card.ARGS.send_to_shader, nil, card.children.center, nil,
			nil, x_offset)
		end
	end,

	apply = function(self, card, val)
		card.ability[self.key] = val and copy_table(self.config) or nil
	end
}

---@param str string
---@return boolean
function tjestuff.tje_is_wpsticker(str)
  for _, v in ipairs(tjestuff.wp_stickers) do
    if v == str then
      return true
    end
  end
  return false
end


---@param card table
---@return string | nil
---@return table | nil
function tjestuff.tje_has_wpsticker(card)
  for k, v in pairs(card and card.ability or {}) do
    if tjestuff.tje_is_wpsticker(k) then
      return k, v
    end
  end
end

-- removes wp sticker
function tjestuff.tje_remove_wpsticker(card)
  for k, _ in pairs(card and card.ability or {}) do
    if tjestuff.tje_is_wpsticker(k) then
      card.ability[k] = nil
    end
  end
end

--adds wp sticker
function tjestuff.tje_set_wpsticker(card, key)
  if card and tjestuff.tje_is_wpsticker(key) then
    SMODS.Stickers[key]:apply(card, true)
  end
end