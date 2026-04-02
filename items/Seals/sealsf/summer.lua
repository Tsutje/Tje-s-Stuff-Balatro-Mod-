SMODS.Seal {
    object_type = "Seal",
    badge_colour = HEX('FBD63E'),
    key = 'nptsummer',
    pos = {x = 2, y = 0}, 
    atlas = 'nptseals',
    config = {bonuschips = 2},
    loc_vars = function(self, info_queue, card)
      return { vars = { 
        G.GAME.probabilities.normal, 
      }}
    end,
    calculate = function (self, card, context)
    end
}
