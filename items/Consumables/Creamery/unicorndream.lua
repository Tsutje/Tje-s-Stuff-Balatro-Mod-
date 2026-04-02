SMODS.Consumable{
    key = 'nptunicorndream',
    set = 'creamerycons',
    atlas = 'creameryatlas',
    nptrarity = 'rarecreamery',
    hidden = true,
    soul_set = 'creamerycons',
    can_repeat_soul = true,
    soul_rate = 0.03,
    pos = {x = 0, y = 2},
    soul_pos = {x = 1, y = 2},
    config = { extra = {base=3, scaleou = 1, scale = 3, mphand = tje.mphand(), max = 50} },
    loc_vars = function(self, info_queue, card)
        card.ability.extra.mphand = tje.mphand()
        if card.ability.extra.base + (math.floor(G.GAME.hands[card.ability.extra.mphand].level/card.ability.extra.scale)) > card.ability.extra.max then
            return {vars = {card.ability.extra.base, card.ability.extra.scaleou, card.ability.extra.scale, card.ability.extra.max or card.ability.extra.base, tje.mphand(), card.ability.extra.max}}
        else
            return {vars = {card.ability.extra.base, card.ability.extra.scaleou, card.ability.extra.scale, card.ability.extra.base + (math.floor(G.GAME.hands[card.ability.extra.mphand].level/card.ability.extra.scale)) or card.ablity.extra.base, tje.mphand(), card.ability.extra.max}}
        end
    end,
    can_use = function()
        return true
    end,
    calculate = function(self,card, context)
        card.ability.extra.mphand = tje.mphand()
    end,
    use = function(self, card)
        if (math.floor(G.GAME.hands[card.ability.extra.mphand].level/card.ability.extra.scale)) > card.ability.extra.max then
            print((math.floor(G.GAME.hands[card.ability.extra.mphand].level/card.ability.extra.scale)) ..'is more than'.. card.ability.extra.max)
            udnpttargetlevel = card.ability.extra.base + card.ability.extra.max
        else
            print((math.floor(G.GAME.hands[card.ability.extra.mphand].level/card.ability.extra.scale)) ..'is less than'.. card.ability.extra.max)
            udnpttargetlevel = card.ability.extra.base + (math.floor(G.GAME.hands[card.ability.extra.mphand].level/card.ability.extra.scale))
        end
        update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, { mult = G.GAME.hands[card.ability.extra.mphand].mult, chips = G.GAME.hands[card.ability.extra.mphand].chips, handname = card.ability.extra.mphand, level = ''})
		level_up_hand(card, card.ability.extra.mphand, nil, udnpttargetlevel)
        update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
    end
}