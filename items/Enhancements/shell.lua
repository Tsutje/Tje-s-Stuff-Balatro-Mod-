SMODS.Enhancement {
    object_type = "Enhancement",
    tjseries = 'npt',
    key = 'nptshell',
    pos = {x = 1, y = 0}, 
    atlas = 'nptenh',
    config = {repetitionsr = 2,repcheck = 0},
    loc_vars = function(self, info_queue, card)
      return { vars = { 
        card.ability.repetitionsr
      }}
    end,
    calculate = function (self, card, context)
      if context.repetition then
        if context.cardarea == G.play and context.scoring_name == "High Card" then
          card.ability.repcheck = card.ability.repetitionsr
        elseif context.cardarea == G.play and context.scoring_name ~= "High Card" then
          card.ability.repcheck = 0
          G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.5,
            func = function()
                card:start_dissolve({HEX('ECA950')}, nil, 1.6)
                G.E_MANAGER:add_event(Event({  
                    func = function()
                      blocking = true,
                      card:remove()
                      return true
                    end    
                }))           
                return true
            end
          }))
        end
        return {
          repetitions = card.ability.repcheck,
          card = card
        }
      end
    end
}
