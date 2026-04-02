SMODS.Consumable{
    key = 'nptmint',
    set = 'creamerycons',
    atlas = 'creameryatlas',
    tjseries = 'npt',
    pos = {x = 4, y = 0},
    config = { extra = { musthighlightamount = 3, destroyamount = 1, hasdestroyed = 0} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_tje_nptminty
        return {vars = { card.ability.extra.musthighlightamount, card.ability.extra.destroyamount, card.ability.hasdestroyed}}
    end,

    can_use = function()
        if G.hand.highlighted ~= nil then
            return #G.hand.highlighted == 3
        else
            return false
        end 
    end,

    use = function(self, card)
        ::wantdestroy::
        if card.ability.extra.hasdestroyed < card.ability.extra.destroyamount then
            local range = {}
            for i = 1, #G.hand.highlighted do
                range[i] = i
            end
            v = pseudorandom_element(range)
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                func = function()
                    G.hand.highlighted[v]:start_dissolve({HEX('C2F3A1')}, nil, 1.6)        
                    return true
                end
            }))
            card.ability.extra.hasdestroyed = card.ability.extra.hasdestroyed+1
            goto wantdestroy
        end    
        for i, v in ipairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event({  
                trigger = 'after',
                delay = 0.3,
                func = function()
                    play_sound('tarot1')
                    G.hand.highlighted[i]:juice_up()
                    G.hand.highlighted[i]:set_ability('m_tje_nptminty')
                    return true
                end    
            }))
        end     
    end
}