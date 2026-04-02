SMODS.Enhancement {
  object_type = "Enhancement",
  key = 'fadedremnant',
  pos = {x = 0, y = 0}, 
  atlas = 'faded_remnant',
  config = {rolls = 100, xmult = 0.05, odds = 4, roll_win_count_oc1 = 50, roll_win_count = 0},
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue+1] = TJE.TjeDescriptionDummies["cdd_tje_rollterm"]
    return { vars = {
      G.GAME.probabilities.normal, card.ability.odds, card.ability.xmult, card.ability.rolls, card.ability.roll_win_count_oc1, card.ability.roll_win_count, 1+(card.ability.xmult*card.ability.roll_win_count)
    }}
  end,
  calculate = function (self, card, context)
    if context.main_scoring and card.area == G.play then
      card.ability.roll_win_count = 0
      for i = 1, card.ability.rolls do
        if pseudorandom('fadedremnant') <= G.GAME.probabilities.normal/card.ability.odds then
          card.ability.roll_win_count = card.ability.roll_win_count+1
        end
      end
      return{
        xmult = 1+(card.ability.xmult*card.ability.roll_win_count)
      }
    end
    if context.destroy_card and context.cardarea == G.play and context.destroy_card == card and card.ability.roll_win_count >= card.ability.roll_win_count_oc1 then
      return {remove = true}
    end
  end
}
