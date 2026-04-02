SMODS.Seal {
  object_type = "Seal",
  key = 'nptcandy',
  pos = {x = 0, y = 0},
  badge_colour = HEX('FEC0E9'),
  atlas = 'nptseals',
  config = {chance = 3, xmult = 1, upscale = 0.5, downscale = 0.25, flag = false},
  loc_vars = function(self, info_queue, card)
    return { vars = { 
      G.GAME.probabilities.normal, card.ability.seal.chance, card.ability.seal.xmult, card.ability.seal.upscale, card.ability.seal.downscale
    }}
  end,
  calculate = function (self, card, context)
    if context.before and context.cardarea == G.play then
      print('increasecandyseal')
      card.ability.seal.xmult = card.ability.seal.xmult+card.ability.seal.upscale
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = ("Increased!"), colour = HEX('E38DDB')})
    end
    if context.main_scoring and G.GAME.probabilities.normal/card.ability.seal.chance > pseudorandom('candysealnpt') and context.cardarea ~= G.hand then
      if card.ability.seal.xmult ~= 1 then
        card.ability.seal.xmult = card.ability.seal.xmult-card.ability.seal.downscale
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = ("Decreased!"), colour = HEX('E38DDB')})
      end
    end
    if context.main_scoring and context.cardarea == G.play then
      if card.ability.seal.xmult ~= 1 then
        SMODS.calculate_effect({xmult = card.ability.seal.xmult}, card)
      end
    end
  end
}
