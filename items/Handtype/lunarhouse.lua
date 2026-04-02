
-- Define the PokerHand using the part
SMODS.PokerHand{
    key = "lunarhouse",
    chips = 80,
    mult = 8,
    l_chips = 0,
    l_mult = 0,
    visible = false,
    example = {
        { "D_6", true },
        { "S_6", true },
        { "H_7", true },
        { "C_7", true },
        { "H_7", true },
    },
    evaluate = function(parts, hand)
        if (#SMODS.find_card('j_crs_allinjest') > 0) then --Checks if required joker is owned 
            if #parts._3 < 1 or #parts._2 < 2 then 
                return {} 
            end
            return parts._all_pairs
        end
    end
}