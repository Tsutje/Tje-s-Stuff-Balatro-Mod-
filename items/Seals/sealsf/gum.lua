SMODS.Seal {
    object_type = "Seal",
    key = 'nptgum',
    pos = {x = 1, y = 0},
    badge_colour = HEX('3CE2FF'),
    atlas = 'nptseals',
    config = {req = 3, reqpass = 0},
    loc_vars = function(self, info_queue, card)
      return { vars = { 
        card.ability.seal.req, card.ability.seal.reqpass
      }}
    end,
    calculate = function (self, card, context)
      if context.cardarea == G.hand then
        _card = G.hand.highlighted[i]
      end
      if context.main_scoring then 
        card.ability.seal.reqpass = card.ability.seal.reqpass+1
      end
      if card.ability.seal.reqpass >= card.ability.seal.req then
        card:set_seal("s_tje_nptcandy")
      end
    end
}
