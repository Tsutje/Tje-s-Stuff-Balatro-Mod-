SMODS.Enhancement {
    object_type = "Enhancement",
    key = 'sullied',
    pos = {x = 2, y = 0}, 
    atlas = 'Enhancements',
    config = {bonuschips = 2},
    loc_vars = function(self, info_queue, card)
      return { vars = { 
        G.GAME.probabilities.normal, 
      }}
    end,
    calculate = function (self, card, context)
        if context.before and context.cardarea == G.play then
          card.ability.bonuschips = 2
          ::sulliedrepeat::
            if pseudorandom('sullied') < 0.65 then
              card.ability.bonuschips = card.ability.bonuschips*2
              card_eval_status_text(card, 'extra', nil, nil, nil, {message = ("Upgrade!"), colour = HEX('BBC9D3')})
              goto sulliedrepeat
            else
              card.ability.perma_bonus = card.ability.bonuschips
            end
        if context.after then
          card.ability.perma_bonus = 0
        end
      end
    end
}
