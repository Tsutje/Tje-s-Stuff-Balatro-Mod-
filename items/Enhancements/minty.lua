SMODS.Enhancement {
    object_type = "Enhancement",
    key = 'nptminty',
    tjseries = 'npt',
    pos = {x = 0, y = 0}, 
    atlas = 'nptenh',
    config = {playedhands = 0, payout=2},
    loc_vars = function(self, info_queue, card)
      return { vars = { 
        card.ability.playedhands, card.ability.payout, card.ability.playedhands*card.ability.payout
      }}
    end,
    calculate = function (self, card, context)
        if context.before and context.cardarea == G.hand then
            card.ability.playedhands = card.ability.playedhands+1
            return {
                message = "Increased!",
                colour = HEX('85D166')
            }
        end
        if context.after and hand_chips * mult >= G.GAME.blind.chips then
            card.ability.playedhands = 0
            return {
                message = "Reset!",
                colour = HEX('85D166')
            }
        end
        if context.end_of_round and context.cardarea == G.hand and context.playing_card_end_of_round then
            if card.ability.playedhands*card.ability.payout ~= 0 then
                ease_dollars(card.ability.playedhands*card.ability.payout)
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('$')..card.ability.playedhands*card.ability.payout, colour = HEX('85D166'), card = card})
                card.ability.playedhands = 0
            else
                card.ability.playedhands = 0
            end
        end
    end
}