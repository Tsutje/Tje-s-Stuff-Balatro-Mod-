return{
    misc = {
        labels={
            tje_nptgum_seal = "Gum Seal",
            tje_nptcandy_seal = "Candy Seal",
            tje_nptsummer_seal = "Summer Seal",
            tje_achingheart_wpsticker = "Aching Heart",
            tje_charmed_wpsticker = "Charming Sparkles",
            tje_digitized_wpsticker = "Digitized",
            tje_haunted_wpsticker = "Haunted",
            tje_fishhead_wpsticker = "Fish Head",
            tje_contract_wpsticker = "Contract",
            tje_bliss_wpsticker = "Bliss",
            tje_reverse_wpsticker = "Reverse",
            tje_faded_wpsticker = "Faded",
            tje_palerose_wpsticker = "Pale Rose",

        },
        dictionary={
            tje_bypass_crossy = "Bypass Crossy-side Content (Requires Restart)",
            k_tje_hazard="Cosmic Debris",
        },
        v_dictionary = {
            a_exp = { "+#1# EXP" },
            tje_mod = { "#1#" },
        },
        poker_hand_descriptions = {
            ["tje_lunarhouse"] = {
                "A Three of a Kind and a Pair",
                "Must have {C:attention}Sandrone{} to play"
            },
        },
        poker_hands = {
            ["tje_lunarhouse"] = "Lunar House"
        }
    },
    descriptions={
        Planet = {
            c_tje_blankplanet = {
                name = "Aleph Fragment",
                text = {
                    {"Level up {C:attention}all{}",
                     "{C:tje_label,X:tje_label_inverse}Crossy-side{}",
                     "Hands"}
                }
            }
        },
        Power = {
            c_tje_bloonlatro = {
                name = "Battle Cat",
                text = {
                    {"Turn {C:attention}#1#{} random",
                    "cards in hand",
                    "into {C:attention}Wild{} cards"}
                }
            }
        },
        Snack = {
            c_tje_fusioncookbook= {
                name = "Jawbreaker",
                text = {
                    {"Scored cards give",
                    "{C:chips}+#1#{} Chips for",
                    "every {C:attention}Stone card{}",
                    "in full deck",
                    "{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}"}
                }
            }
        },
        index = {
            c_tje_strangepencil = {
                name = "Forged License",
                text = {
                    "{C:white,X:chips}X#1#{} Chips for",
                    "for every Enhanced",
                    "card in full deck",
                    "after Jokers score",
                    "{C:inactive}(Currently{} {C:white,X:blue}X#2#{} {C:inactive}Chips){}",
                    "{C:inactive}[#3#!]{}"
                }
            }
        },
        TokenConsumable = {
            c_tje_schnorange = {
                name = "A Slice of Life",
                text = {
                    "Adds {X:mult,C:white}X1.5{} to {C:attention}Schneider{}.",
                    "{C:green}#1#{} in {C:green}#4#{} chance to {C:red}Destroy{} her {C:green}instead{}.",
                    "{C:red}Self Destruct{} after {C:attention}Big Blind{}.",
                    "{C:green,s:0.75}#1#{} {C:inactive,s:0.75}in{} {C:green,s:0.75}#5#{} {C:inactive,s:0.75}chance to{} {C:mult,s:0.75}Lose{} {C:money,s:0.75}$20{} {C:inactive,s:0.75}when sold.{}"
                }
            },
            c_tje_celestite = {
                name = "Celestite",
                text = {
                    "{C:clstite}+3 Levels{} to {C:blue}Most Played Hand{}",
                    "{C:attention}Add{} {X:clstite,C:white}0.15{} {X:clstite,C:white}Charge{} to {C:clstite}CRYSTA//{}.",
                    '{C:inactive}"Floating Space Rock..."{}'
                }
            }
        },
        Back = {
            b_tje_hexdeck = {
                name = 'Hexed Deck',
                text = {
                    "Start with a {C:tsusjeopardytxt}Tsu's Jeopardy{}",
                    "{C:tarot}Legendary{} {C:attention}Joker{} or",
                    "{C:hextxt}Hexed Legendary{} {C:attention}Joker{}",
                    "{X:hextxt,C:white}ALOT{} {X:hextxt,C:white}of{} {X:hextxt,C:white}Downsides{}",
                    "{s:0.75,C:tsusjeopardytxt}Good Luck! <3{}"
                }
            },
            b_tje_phonydeck = {
                name = 'Phony Deck',
                text = {
                    "Start with a {C:tsusjeopardytxt}Tsu's Jeopardy{}",
                    "{C:tarot}Legendary{} {C:attention}Joker{} or",
                    "{C:hextxt}Hexed Legendary{} {C:attention}Joker{}"
                }
            },
            b_tje_sweetthumbdeck = {
                name = 'Sweet Thumb Deck',
                text = {
                    "Start with an {C:tarot}Eternal{} {C:attention}Candy Blossom Tree{}",
                    "No {C:money}Interest{} and {C:attention}Blind Reward{}",
                    "{C:attention}Jokers{} no longer appear in shop"
                }
            },
            b_tje_dusteddeck = {
                name = 'Dusted Deck',
                text = {
                    "Start with an {C:tarot}Eternal{} {C:attention}Divine Comedy{}",
                    "No {C:attention}Hand Money{}",
                    "{C:attention}Jokers{} no longer appear in shop",
                    "{C:blue}+8 Consumable Slots{} {C:red}-4 Joker Slots{}",
                    "{C:attention}+7 Hand Size{}"
                }
            }
        },
        creamerycons = {
            c_tje_nptrockyroad ={
                name = "Rocky Road",
                text = {
                    "{C:attention}Destroy{} all cards in hand",
                    "{C:green}#2# in #3#{} chance to create",
                    "a random {C:attention}Tag for every {C:attention}#1#{} destroyed",
                    "{} otherwise {C:red}lose{} {C:money}$2{}" 
                }
            },
            c_tje_nptmint ={
                name = "Mint",
                text = {
                    "Select {C:attention}#1#{} cards",
                    "destroy {C:attention}#2#{} random card",
                    "the others are enhanced into",
                    "{C:attention}Minty Cards{}"
                }
            },
            c_tje_nptheroswirl ={
                name = "Hero Swirl",
                text = {
                    "Select up to {C:attention}#1#{} cards",
                    "cards are turned into a",
                    "{C:attention}random suit{}",
                    "{C:green}#2# in #3#{} chance to",
                    "{C:attention}duplicate{} it into",
                    "deck instead"
                }
            },
            c_tje_npthokeypokey ={
                name = "Hokey Pokey",
                text = {
                    "Fill empty {C:attention}consumable slots{}",
                    "with {C:purple}Tarot{} cards"
                }
            },
            c_tje_nptpistachio ={
                name = "Pistachio",
                text = {
                    "Select {C:attention}#1#{} card",
                    "{C:green}#2# in #3#{} chance to enhance",
                    "selected card into a",
                    "{C:attention}Shell Card.{} otherwise,",
                    "enhance into a {C:attention}Stone Card{}"
                }
            },
            c_tje_nptcookiesandcream ={
                name = "Cookies and Cream",
                text = {
                    "All cards {C:attention}held in hand{}",
                    "gain {C:blue}+#1#{} Chips for every",
                    "remaining {C:red}Discard{} and {C:blue}Hand{}",
                    "{C:inactive}[Currently {C:blue}+#2#{} {C:inactive}Chips]{}"
                }
            },
            c_tje_nptfoiegras ={
                name = "Foie Gras",
                text = {
                    "Turns {C:attention}leftmost Joker{}",
                    "{C:money}Rental{}, {C:spectral}Eternal,{}",
                    "and {C:dark_edition}Negative{}",
                    "turns {C:attention}rightmost Joker{}",
                    "{C:tarot}Perishable{}",
                    "{C:inactive}[Must have 2 or more Jokers]{}"
                }
            },
            c_tje_nptketchup ={
                name = "Ketchup",
                text = {
                    "Create a {C:dark_edition}Negative{}",
                    "{C:attention}Mr. Bones{}"
                }
            },
            c_tje_nptblueraspberry ={
                name = "Blue Raspberry",
                text = {
                    "Add a {C:blue}Blue Seal{} to",
                    "{C:attention}#1#{} random cards",
                    "held in hand"
                }
            },
            c_tje_nptbanana ={
                name = "Banana",
                text = {
                    "{C:white,X:red}X#1#{} Mult after all",
                    "other scoring when held",
                    "{C:green}#2# in #3#{} chance this card is",
                    "destroyed at the end of hand"
                }
            },
            c_tje_nptcaramel ={
                name = "Caramel",
                text = {
                    "{C:attention}Enhanced{} cards in hand",
                    "give {C:money}$#1#{}",
                    "{C:green}#2# in #3#{} chance to",
                    "remove the {C:attention}Enhancement{}",
                    "of the card"
                }
            },
            c_tje_nptunicorndream ={
                name = "Unicorn Dream",
                text = {
                    "{C:planet}Level up{} {C:attention}Most Played Hand{}",
                    "by {C:attention}+#1#{}",
                    "gain {C:attention}#2#{} extra {C:planet}level{} for every",
                    "{C:attention}#3#{} {C:planet}levels{} in that {C:blue}Hand{}",
                    "{C:inactive, s:0.75}[Max of +#6# levels]",
                    "{C:inactive}[+#4# levels to #5#]"
                }
            },
            c_tje_nptshavedice ={
                name = "Shaved Ice",
                text = {
                    "Creates the last",
                    "{C:creamerytxt}Creamery{} card used",
                    "during this run",
                    "{C:creamerytxt,s:0.75}Shaved Ice{} {s:0.75}and{}",
                    "{C:rare,s:0.75}Rare Creameries{} {s:0.75}excluded{}"
                }
            }
        },
        Joker = {
            -- Crossy Jokers
            j_tje_babadecks = {
                name = "Baba",
                text = {
                    {"Chosen card is",
                    "retriggered {C:attention}#1#{}",
                    "times"},
                    {"{C:dark_edition}Baba{} is",
                    "{V:1}#2# of #3#{}"
                    }
                }
            },
            j_tje_systemclock = {
                name = "Broken Clock",
                text = {
                    {"Set {C:purple}Score{} to {X:purple,C:white} 0{}",
                    "until {C:attention}last hand{}"},
                    {"{C:white,X:mult}X#1#{} {C:mult}Mult{}"}
                }
            },
            j_tje_brook = {
                name = "Singer",
                text = {
                    "Retrigger all",
                    "{C:attention}Playing Cards{}",
                    "held in hand",
                    "{C:attention}#1#{} times",
                    "if Consumable",
                    "Slots are not",
                    "full"
                }   
            },
            j_tje_kopipuestofacecards = {
                name = "Mosiac Faces",
                text = {
                    "Face cards can be",
                    "used as any suit"
                }   
            },
            j_tje_markipliermultiplier = {
                name = "First Night",
                text = {
                    {"Selected Blind is",
                     "set to {C:dark_edition}#2#%{} of its",
                    "base"},
                    {"Reset blind size",
                     "after playing a hand",
                    "{C:attention}twice{}"},
                    {"{C:money}$#1#{} at end of",
                     "round when Blind",
                     "is beaten in {C:attention}one{}",
                     "hand"}
                }
            },
            j_tje_grim = {
                name = "True To Name",
                text = {
                    "{C:purple}+#1# XP{} if scoring",
                    "hand contains {c:attention}2{}",
                    "Enhanced {C:attention}Aces{}"
                }
            },
            j_tje_colorblindseals = {
                name = "Sealed Eyes",
                text = {
                    {"{C:attention}Sealed{} playing cards",
                    "are drawn faced down"},
                    {"Retrigger sealed",
                     "playing cards {C:attention}#1#{}",
                     "time"}
                }
            },
            j_tje_artbox = {
                name = "Gilded Figurine Case",
                text = {
                    {"Exiting shop with {C:money}$#1#{} or",
                     " more will create a random",
                     "{C:attention}Collectable{}",
                     "{C:inactive}(Needs Room){}"},
                     {"Requirement increases by",
                     "{C:money}$#2#{} everytime effect",
                     "is triggered",
                     "{C:inactive}(Resets every Ante){}"}
                }
            },
            j_tje_talisman = {
                name = "Lux Auris",
                text = {
                    {"{X:dark_edition,C:white}N^P{} Base Mult",
                     "where {X:dark_edition,C:white}N{} is the amount of",
                     "times a {C:attention}playing card{} with a",
                     "{C:attention}Gold Seal{} was scored",
                     "and where {X:dark_edition,C:white}P{}",
                     "increases by {X:dark_edition,C:white}#2#{} for",
                     "every playing card with",
                     "a {C:attention}Gold Seal{} held in",
                     "hand when playing a hand"},
                     {"{C:inactive}Currently{} {X:dark_edition,C:white}#4#^#1#",
                      "{C:inactive}or{} {X:dark_edition,C:white}#3#{} {C:inactive}Base Mult{}"}
                }
            },
            j_tje_galdur = {
                name = "Decked Out",
                text = {
                    {"{C:white,X:mult}X#3#{} Mult for every",
                     "{C:tje_label,E:1,X:tje_label_inverse}Galdur{} page in",
                     "Deck Selection",
                     "{C:inactive}(Currently{} {C:white,X:mult}X#1#{} {C:inactive}Mult){}"},
                     {"{C:white,X:chips}X#4#{} Chips for every",
                     "{C:attention}Stake{} in the game",
                     "{C:inactive}(Currently{} {C:white,X:chips}X#2#{} {C:inactive}Chips){}"},
                }
            },
            j_tje_reunlockall = {
                name = "Re:petition",
                text = {
                    {"Retrigger all played",
                     "{C:attention}playing cards{}",
                     "for every {C:attention}#1#{}",
                     "unlocked {C:attention}Jokers{}",
                     "in the {C:tje_label,E:1,X:tje_label_inverse}Collection{}",
                     "{C:inactive}(Currently{} {C:attention}#2#{} {C:inactive}Retriggers){}"},
                }
            },
            j_tje_sagatro = {
                name = "New Moon",
                text = {
                    {"Balance {C:dark_edition}#1#%{} of",
                     "{C:mult}Mult{} and {C:chips}Chips{}"},
                    {"Increases by {C:dark_edition}#2#%{}",
                     "when using a {C:planet}Planet{}",
                     "card"},
                }
            },
            j_tje_riftraft = {
                name = "White Hole-Chan",
                text = {
                    {"Destroy scored {C:dark_edition}Negative{}",
                     "playing cards"},
                    {"Create a random",
                    "{C:riftraft_void}Void{} card for each",
                    "destroyed",
                    "{C:inactive}(Must have room){}"},
                }
            },
            j_tje_2for1tarots = {
                name = "Greedful Abundance",
                text = {
                    {"{C:white,X:red}X#1#{} Mult for every",
                    "{C:attention}#2#{} {C:attention}Steel{}, {C:attention}Glass{}",
                    "{C:attention}Wild{}, {C:attention}Gold{}, or",
                    "{C:attention}Stone{} card in full deck",
                    "{C:inactive}(Currently{} {C:white,X:red}X#3#{}{C:inactive} Mult){}"},
                }
            },
            j_tje_allinjest = {
                name = "Sandrone",
                text = {
                    {" Converts {C:attention}Full House{} into",
                    "{C:tje_lunar_version,E:1}Lunar House{}"},
                    {"Create an {C:attention}Ignoramus Tag{}",
                    "When blind is won",
                    "with a {C:tje_lunar_version,E:1}Lunar House{}"},
                }
            },


            -- Legacy Jokers
            j_tje_usagi = {
            name = 'Usagi',
            text = {
                    {'Scored cards gives {X:mult,C:white}X#1#{}',
                    '{C:green}#2# in #3#{} chance to',
                    'destroy scored cards'},
                    {'{C:inactive}"iya-ha!"{}'}
                }
            },
            j_tje_cami = {
                name = 'Cami',
                text = {
                    {"{C:green}#1# in #2#{} chance to gain {C:money}$#3#{}",
                    "per {C:attention}reroll{} in the shop",
                    "{C:inactive}#7#{} {C:enhanced,E:1}Rolls{}"},
                    {"This Joker gains {X:mult,C:white}X#4#{} Mult",
                    "upon {C:inactive}#6# {C:green}successful{} {C:enhanced,E:1}Rolls{}",
                    "{C:inactive}(Currently {C:white,X:red}X#5#{}{C:inactive}){}"}
                }
                
            },
            j_tje_luxu = {
                name = 'Luxu',
                text = {
                    {"Scored {C:attention}Faded Remnant{}",
                    "cards give {C:white,X:blue}X#1#{} Chips{}",
                    "for each {C:inactive,E:1}#2#{} {C:red,E:1}failed{}",
                    "{C:enhanced,E:1}Rolls{}"},
                    {"Increase {C:white,X:blue}XChips{} by {C:white,X:blue}X#3#{}",
                    "if scored {C:attention}Faded Remnant{}",
                    "has {C:inactive,E:1}#4#{} or more ",
                    "{C:green,E:1}successful{} {C:enhanced,E:1}Rolls{}"}
                }
                
            },

            -- Hex Jokers
            j_tje_stpbirddecider = {
                name = 'The Decider',
                text = {
                    "{C:inactive}[The Decider]",
                    "{C:inactive}---------------------------------{}",
                    "{C:inactive}[Effect]",
                    "{C:inactive,s:0.65}<The Start of Change>{}",
                    "{C:attention}Retrigger{} all cards {C:attention}#5#{}",
                    "times if {C:attention}scoring cards{} are",
                    "{V:1}#6#{}",
                    "{C:inactive,s:0.75}Changes every hand{}",
                    "{C:inactive}---------------------------------{}",
                    "{C:spades,s:0.85}Spades : #1#{}",
                    "{C:hearts,s:0.85}Hearts : #2#{}",
                    "{C:clubs,s:0.85}Clubs : #3#{}",
                    "{C:diamonds,s:0.85}Diamonds : #4#{}",
                    "{C:inactive,s:0.85}[#7#]{}",
                    "{C:inactive}---------------------------------{}",
                    '{s:0.85,C:inactive}"..."{}'
                }
            },
            j_tje_stpbirdhero = {
                name = 'The Hero',
                text = {
                    "{C:inactive}[The Hero]",
                    "{C:inactive}---------------------------------{}",
                    "{C:inactive}[Effect]",
                    "{C:inactive,s:0.65}<Breaking the Struggle>{}",
                    "If current score isnt {C:attention}75%{} of the",
                    "{C:attention}Blind Requirement{}",
                    "{C:attention}Increase final{} {C:red}Mult{} and",
                    "{C:chips}Chips{} by {C:attention}250%{}",
                    "{C:inactive,s:0.75}Once every round{}",
                    "{C:inactive}[#6#]{}",
                    "{C:inactive}---------------------------------{}",
                    "{C:spades,s:0.85}Spades : #1#{}",
                    "{C:hearts,s:0.85}Hearts : #2#{}",
                    "{C:clubs,s:0.85}Clubs : #3#{}",
                    "{C:diamonds,s:0.85}Diamonds : #4#{}",
                    "{C:inactive,s:0.85}[#5#]{}",
                    "{C:inactive}---------------------------------{}",
                    '{s:0.85,C:inactive}"Were supposed to save princesses,"',
                    '{s:0.85,C:inactive}"Not slay them."{}'
                }
            },
            j_tje_stpbirdbroken = {
                name = 'The Broken',
                text = {
                    "{C:inactive}[The Broken]{}",
                    "{C:inactive}---------------------------------{}",
                    "{C:inactive}[Effect]",
                    "{C:inactive,s:0.75}-----<Uplifting Struggle>-----{}",
                    "Scoring {C:clubs}Clubs{} give {X:shocked,C:white}^#6#{}",
                    "of current {C:blue}Chips{}",
                    "{C:inactive,s:0.75}-----<Under The Deprication>-----{}",
                    "Played {C:clubs}Clubs{} Have a {C:green}#10#{} in {C:green}#9# chance",
                    "to be {C:red}Destroyed{}",
                    "{C:inactive,s:0.75}-----<Backstabbed to Submission>-----{}",
                    "{C:attention}Blind Requirement{} is {C:attention}increased{} by",
                    "{C:attention}#7#%{} for every {C:clubs}Clubs{} scored",
                    "{C:attention}#8#%{} for every other suit",
                    "{C:inactive}---------------------------------{}",
                    "{C:spades,s:0.85}Spades : #1#{}",
                    "{C:hearts,s:0.85}Hearts : #2#{}",
                    "{C:clubs,s:0.85}Clubs : #3#{}",
                    "{C:diamonds,s:0.85}Diamonds : #4#{}",
                    "{C:inactive,s:0.85}[#5#]{}",
                    "{C:inactive}---------------------------------{}",
                    '{s:0.85,C:inactive}"Just give up..."{}',
                }
            },
            j_tje_Kusuri = {
                name = 'Kusuri',
                text = {
                    "{C:inactive}[Active Drug]",
                    "{C:inactive}-------------------------------------{}",
                    "{s:1.25,C:inactive}None!",
                    "{C:inactive}-------------------------------------{}",
                    "{C:inactive}[Effect]",
                    "{C:attention}Create{} a {C:green}random{} {C:thmtron}Potion{}",
                    "When {C:attention}starting{} a {C:attention}Blind{}",
                    "{s:0.85,C:inactive}[Needs Room]",
                    "{C:inactive}-------------------------------------{}",
                    '{s:0.85,C:inactive}"Yep, Yep!"{}'
                }
            },
            j_tje_Kusuri2 = {
                name = 'Kusuri',
                text = {
                    "{C:inactive}[Active Drug]",
                    "{C:inactive}-------------------------------------{}",
                    "{s:1.25,C:thmtron}The Human Magnet Medicinatron{}",
                    "{C:inactive}-------------------------------------{}",
                    "{s:0.65,C:inactive}(#1# Rounds Remaining)",
                    "{C:inactive}[Effect]",
                    "{C:chips}Chips{} and {C:mult}Mult{} are {C:thmtron}Multiplied{}",
                    "to {C:thmtron}eachother{} then {C:attention}Halved{}",
                    "{C:attention}after {C:blue}scoring{}",
                    "{C:inactive}-------------------------------------{}",
                    '{s:0.85,C:inactive}"Just like Crystal M***!"'
                }
            },
            j_tje_Kusuri3krn = {
                name = 'Karane',
                text = {
                    "{C:inactive}[Active Drug]",
                    "{C:inactive}-------------------------------------{}",
                    "{s:1.25,C:thmtron}Ultimate Ennui Destroyer{}",
                    "{C:inactive}-------------------------------------{}",
                    "{s:0.65,C:inactive}(#1# Rounds Remaining)",
                    "{C:inactive}[Effect]",
                    "{C:attention}Switch{} Kusuri's {C:blue}Soul{}",
                    "With a {C:green}random{} Girlfriend!",
                    "{C:inactive,s:0.85}[Karane]",
                    "Played {C:hearts}Hearts{} are turned into {C:spades}Spades{}",
                    "Gains {X:mult,C:white}X#6#{} when triggered.",
                    "{C:inactive,s:0.75}Currently{} {s:0.75,C:white,X:mult}X#5#{}",
                    "{C:inactive}-------------------------------------{}",
                    '{s:0.85,C:inactive}"JUST GET ME OUT OF THIS STUPID BODY ALREADY!"'
                }
            },
            j_tje_Kusuri3hkr = {
                name = 'Hakari',
                text = {
                    "{C:inactive}[Active Drug]",
                    "{C:inactive}-------------------------------------{}",
                    "{s:1.25,C:thmtron}Ultimate Ennui Destroyer{}",
                    "{C:inactive}-------------------------------------{}",
                    "{s:0.65,C:inactive}(#1# Rounds Remaining)",
                    "{C:inactive}[Effect]",
                    "{C:attention}Switch{} Kusuri's {C:blue}Soul{}",
                    "With a {C:green}random{} Girlfriend!",
                    "{C:inactive,s:0.85}[Hakari]",
                    "Playing a {C:attention}Pair{} turns all",
                    "{C:spades}Spades{} in {C:blue}Hand{} into {C:hearts}Hearts{}",
                    "{C:money}$#4#{} when triggered",
                    "{C:inactive,s:0.75}Currently{} {C:money,s:0.75}$#3#",
                    "{C:inactive}-------------------------------------{}",
                    '{s:0.85,C:inactive}"...Do you perhaps like them smaller?"'
                }
            },
            j_tje_Kusuri3szk = {
                name = 'Shizuka',
                text = {
                    "{C:inactive}[Active Drug]",
                    "{C:inactive}-------------------------------------{}",
                    "{s:1.25,C:thmtron}Ultimate Ennui Destroyer{}",
                    "{C:inactive}-------------------------------------{}",
                    "{s:0.65,C:inactive}(#1# Rounds Remaining)",
                    "{C:inactive}[Effect]",
                    "{C:attention}Switch{} Kusuri's {C:blue}Soul{}",
                    "With a {C:green}random{} Girlfriend!",
                    "{C:inactive,s:0.85}[Shizuka]",
                    "Selecting a {C:attention}#4#{}",
                    "{C:blue}Levels{} it by {C:blue}#3#",
                    "{C:inactive,s:0.75}[Changes when triggered]{}",
                    "{C:inactive}-------------------------------------{}",
                    '{s:0.85,C:inactive}"Tis a pleasure to make thine acquaintance!"'
                }
            },
            j_tje_Kusuri3nno = {
                name = 'Nano',
                text = {
                    "{C:inactive}[Active Drug]",
                    "{C:inactive}-------------------------------------{}",
                    "{s:1.25,C:thmtron}Ultimate Ennui Destroyer{}",
                    "{C:inactive}-------------------------------------{}",
                    "{s:0.65,C:inactive}(#1# Rounds Remaining)",
                    "{C:inactive}[Effect]",
                    "{C:attention}Switch{} Kusuri's {C:blue}Soul{}",
                    "With a {C:green}random{} Girlfriend!",
                    "{C:inactive,s:0.85}[Nano]{}",
                    "{C:blue}Played{} cards are turned into",
                    "{C:attention}Ace King Queen Jack 10",
                    "{C:attention}Respectively{} on their order",
                    "{X:mult,C:white}X#2#{} for each card {C:attention}Changed{}",
                    "{C:inactive,s:0.75}Currently{} {C:white,X:mult,s:0.75}X#1#{}",
                    "{C:inactive}-------------------------------------{}",
                    '{s:0.85,C:inactive}"High Straights are far more efficient."'
                }
            },
            j_tje_Kusuri3hhr = {
                name = 'Hahari',
                text = {
                    "{C:inactive}[Active Drug]",
                    "{C:inactive}-------------------------------------{}",
                    "{s:1.25,C:thmtron}Ultimate Ennui Destroyer{}",
                    "{C:inactive}-------------------------------------{}",
                    "{s:0.65,C:inactive}(#1# Rounds Remaining)",
                    "{C:inactive}[Effect]",
                    "{C:attention}Switch{} Kusuri's {C:blue}Soul{}",
                    "With a {C:green}random{} Girlfriend!",
                    "{C:inactive,s:0.85}[Hahari]{}",
                    "{C:blue}Played{} cards are turned into",
                    "{C:attention}2{}s",
                    "{C:attention}2{}s Scored give {X:mult,C:white}X#1#{}",
                    "{C:blue}Held in hand{} {C:attention}2{}s",
                    "Give {C:money}${} and {C:attention}Increase{} {C:money}${} by {X:money,C:white}X#3#{}",
                    "{s:0.65,C:inactive}[Increase resets when playing hand]",
                    "{C:inactive}-------------------------------------{}",
                    '{s:0.85,C:inactive}"Rentarou Sweetheart, I cant take it!~"'
                }
            },
            j_tje_Schneider = {
                name = 'Schneider',
                text = {
                    "At the {C:chips}Start{} of each {C:attention}Round{},",
                    "{C:mult}Schneider{} {C:attention}records{} each card {C:attention}scored{}",
                    "{C:hearts}Hearts{} {C:diamonds}Diamonds{} {C:clubs}Clubs{} and {C:spades}Spades{} give",
                    "{X:mult,C:white}X#5#{} {C:money}$#6#{} {C:mult}#7# Mult{} and {C:chips}#8# Chips{} {C:attention}Respectively{}",
                    '{s:0.75,C:inactive}Once per round{}',
                    "Takes a rest {C:attention}After Scoring{} {C:chips}First Hand{}",
                    '{c:attention}Gains{} {X:mult,C:white}X0.1{} per scored {C:hearts}Hearts{}',
                    '{X:mult,C:white,s:0.75}Xmult{} {C:inactive,s:0.75}only applies during{} {C:attention,s:0.75}resting{}',
                    '{C:inactive}Currently {X:mult,C:white}X#3#{}',
                    '{s:0.7,C:inactive}Additionally, after defeating{} {s:0.7,C:attention}Boss Blind{}{s:0.7,C:inactive},{} {s:0.7,C:attention,s:0.7}Fill{}',
                    "{C:inactive,s:0.7}your{} {s:0.7,C:attention}Consumable Slots{} {C:inactive,s:0.7}with{}",
                    '{C:inactive,s:0.7}A{} {s:0.7,C:mult}Slice{} {C:inactive,s:0.7}of{} {s:0.7,C:attention}Life{}',
                    "{C:inactive}--------------------------------{}",
                    '{s:0.85,C:inactive}"Who cares whether the shelter is the eave...{}',
                    '{s:0.85,C:inactive}Or the rubble?"{}'
                }
            },
            j_tje_Crystal = {
                name = 'CRYSTA//',
                text = {
                    "{C:clstite}Purifies{} {C:mult}Polychrome{} {C:attention}Stone Cards{} to",
                    "{C:clstite}Celestite{} {C:attention}when{} {C:blue}Played{} {C:attention}by itself{}",
                    "{C:inactive,s:0.75}[Must Have Room]{}",
                    "{X:clstite,C:white}N^N2{} {C:mult}Mult{}",
                    "{C:inactive,s:0.75}Where N is your played hands current level{}",
                    "{C:inactive,s:0.75}and N2 is your current Charge{}",
                    "{X:clstite,C:white}Charge{} : {X:clstite,C:white}#5#{}",
                    "{s:0.75,C:green}#1#{} {s:0.75,C:inactive}in{} {s:0.75,C:green}#2#{} {C:inactive,s:0.75}chance{} {s:0.75,C:inactive}to create a{} {s:0.75,C:mult}Polychrome{}",
                    "{C:attention,s:0.75}Stone Card when{} {s:0.75,C:blue}Opening a Booster Pack.{}",
                    "{C:inactive}--------------------------------------{}",
                    '{s:0.85,C:inactive}"...Do I talk too much?"{}'
                }
            },
            j_tje_summersend = {
                name = "Summer's End",
                text = {
                    "#1# in #2#"
                }
            },
            j_tje_mineturtle = {
                name = "Mine Turtle",
                text = {
                    {"{X:mult,C:white}X#3#",
                    "{C:green}#1#{} in {C:green}#2#{} chance to",
                    "{C:attention}Triple{} {C:mult}Blind size{}"},
                    {'{s:0.85,C:inactive}"Hello!"{}'}
                }
            },
            j_tje_tsunova = {
                name = "Tsunova Express",
                text = {
                    {"{C:green}#1#{} in {C:green}#2#{} chance to create",
                    "a {C:green}random{} {C:planet}Planet{} when using a",
                    "non {C:planet}Planet{} {C:attention}Consumable{}"},
                    {"{C:green}#1#{} in {C:green}#3#{} chance to {C:red}level down{}",
                    "most played hand when",
                    "using a {C:planet}Planet{} {C:attention}Consumable{}",
                    "{C:inactive,s:0.85}[Needs Room]{}"},
                    {'{s:0.85,C:inactive}"Planetary expeditions are my favorite!"{}'}
                }
            },
            j_tje_hauntinglysweetvices = {
                name = "Hauntingly Sweet Vices",
                text = {
                    "{C:chips}+#3# Chips{} {C:mult}+#4# Mult{}",
                    "{C:green}#1#{} in {C:green}#2#{} chance to {C:attention}Decrease{} by",
                    "{C:chips}-#5# Chips{} {C:mult}-#6# Mult{} at end of round",
                    "{s:0.75,C:inactive}[3 Rolls]{}",
                    "{C:inactive}-------------------------{}",
                    '{s:0.85,C:inactive}"Tight bars little man."{}'
                }
            },
            j_tje_dacnovania = {
                name = "Dacnovania",
                text = {
                    "{C:attention}Stores{} half of {C:blue}played hands{} {C:mult}Mult{}",
                    "{C:green}#1#{} in {C:green}#3#{} chance to {C:attention}Score{} stored {C:mult}Mult{}",
                    "{C:green}#1#{} in {C:green}#2#{} chance to {C:mult}Halve{} stored {C:mult}Mult{}",
                    "at end of round",
                    "{C:inactive,s:0.75}Currently{} {C:mult,s:0.75}#4# Mult{} {C:inactive,s:0.75}stored{}",
                    "{C:inactive}-----------------------------{}",
                    '{s:0.85,C:inactive}*tch.{}'
                }
            },
            j_tje_nomorenuzzles = {
                name = "No More Nuzzles",
                text = {
                    "when no {C:mult}Discards{} were used",
                    "this gains {C:attention}1{} trigger of",
                    "{X:mult,C:white}X#1#{} by end of round",
                    "Lose {C:attention}1{} trigger when {C:mult}Discarding{}",
                    "{C:inactive,s:0.75}Currently{} {C:attention,s:0.75}#2# triggers{}",
                    "{C:inactive}-----------------------------{}",
                    '{s:0.5,C:inactive}"Toby Fox composing the greatest song ever made using only"{}',
                    '{s:0.5,C:inactive}"The Scrimblo Bimblos Scrunky Adventure soundfont"{}',
                }
            },
            j_tje_cookiecat = {
                name = "Cookie Cat",
                text = {
                    "{C:green}#1#{} in {C:green}#2#{} chance to",
                    "{C:blue}level up{} played hand",
                    "{C:green}#1#{} in {C:green}#2#{} to also {C:red}lose{} {C:money}$2{}",
                    "{C:inactive,s:0.75}[#3# Hands Remaining]{}",
                    "{C:inactive}-------------------------{}",
                    '{s:0.85,C:inactive}"He left his family behind!"{}'
                }
            },
            j_tje_intertwiningluck = {
                name = "Intertwining Luck",
                text = {
                    "When starting {C:attention}Blind{}",
                    "{C:money}-$#2#{}",
                    "{C:green}#1#{} in {C:green}#3#{} chance for an",
                    "{C:uncommon}Uncommon{} {C:attention}Joker{}",
                    "{C:green}#1#{} in {C:green}#4#{} chance for a",
                    "{C:rare}Rare{} {C:attention}Joker{}",
                    "{C:green}#1#{} in {C:green}#5#{} chance for a",
                    "{C:legendary}Legendary{} {C:attention}Joker{}",
                    "{C:inactive,s:0.75}[Needs Room]{}",
                    "{C:inactive,s:0.75}[{}{C:rare,s:0.75}Rare{} {C:inactive,s:0.75}Pity:#6#]{}",
                    "{C:inactive,s:0.75}[{}{C:legendary,s:0.75}Legendary{} {C:inactive,s:0.75}Pity:#7#]{}",
                    "{C:inactive}-------------------------{}",
                    '{s:0.85,C:inactive}"I Pulled a Qiqi~..."{}'
                }
            },
            j_tje_luckylucy = {
                name = "Lucky Lucy",
                text = {
                    "{C:green}+4{} to all listed {C:green}probabilities{}",
                    "{C:red}When removed{}",
                    "{C:red}Set all probabilities to 1{}",
                    "{C:red}Regardless of other sources{}"
                }
            },
            j_tje_burrowingbangboo = {
                name = "Burrowing Bangboo",
                text = {
                    "When starting {C:attention}Blind{}",
                    "Digs up {C:inactive}Something{} for you",
                    "{C:inactive}--------------------{}",
                    '{s:0.85,C:inactive}"Guahaha!"{}'
                }
            },
            j_tje_candyblossom = {
                name = "Candy Blossom",
                text = {
                    "{C:inactive}Buy to find out Mutation, Weight, and Value{}",
                    "{C:inactive}-------------------------------{}",
                    "{C:inactive}[ Mutation : ??? ]{} {C:inactive}[ Weight : ??.?? kg ]{}",
                    "{C:inactive}[ Value :{} {C:money}$??{} {C:inactive}]{}",
                    "{C:inactive}--------------------{}",
                    '{s:0.85,C:inactive}"Oh, holy Candy Blossom. Bring forth bountiful riches!"{}'
                }

            },
            j_tje_candyblossomnone = {
                name = "Candy Blossom",
                text = {
                    "{C:inactive,s:0.85}[None]",
                    "{C:inactive}No Modifications{}",
                    "{C:inactive}-------------------------------{}",
                    "{C:inactive}[ Mutation : None ]{} {C:inactive}[Weight : #2# kg ]{}",
                    "{C:inactive}[ Value :{} {C:money}$#3#{} {C:inactive}]{}",
                    "{C:inactive}--------------------{}",
                    '{s:0.85,C:inactive}"Oh, holy Candy Blossom. Bring forth bountiful riches!"{}'
                }
            },
            j_tje_candyblossomshocked = {
                name = "Candy Blossom",
                text = {
                    "{C:inactive,s:0.85}[{}{C:shocked}Shocked{}{C:inactive,s:0.85}]{}",
                    "Gains {C:white,X:chips}XChips{} Based on {C:money}Value{}",
                    "{C:inactive,s:0.75}Currently{} {C:white,X:chips,s:0.75}X#4#{}",
                    "{C:inactive}-------------------------------{}",
                    "{C:inactive}[ Mutation :{} {C:shocked}Shocked{} {C:inactive}]{} {C:inactive}[Weight : #2# kg ]{}",
                    "{C:inactive}[ Value :{} {C:money}$#3#{} {C:inactive}]{}",
                    "{C:inactive}--------------------{}",
                    '{s:0.85,C:inactive}"Oh, holy Candy Blossom. Bring forth bountiful riches!"{}'
                }
            },
            j_tje_candyblossomchocolate = {
                name = "Candy Blossom",
                text = {
                    "{C:inactive,s:0.85}[{}{C:chocolate}Chocolate{}{C:inactive,s:0.85}]{}",
                    "{C:red}Lower{} Mutation {C:money}Value{}, {C:attention}Higher{} Weight {C:money}Value{}",
                    "{C:inactive}-------------------------------{}",
                    "{C:inactive}[ Mutation :{} {C:chocolate}Chocolate{} {C:inactive}]{} {C:inactive}[Weight : #2# kg ]{}",
                    "{C:inactive}[ Value :{} {C:money}$#3#{} {C:inactive}]{}",
                    "{C:inactive}--------------------{}",
                    '{s:0.85,C:inactive}"Oh, holy Candy Blossom. Bring forth bountiful riches!"{}'
                }
            },
            j_tje_candyblossomrainbow = {
                name = "Candy Blossom",
                text = {
                    "{C:inactive,s:0.85}[{}{C:rainbowgradient}Rainbow{}{C:inactive,s:0.85}]{}",
                    "Gains {C:white,X:mult}XMult{} Based on {C:money}Value{}",
                    "{C:inactive,s:0.75}Currently{} {C:white,X:mult,s:0.75}X#4#{}",
                    "{C:inactive}-------------------------------{}",
                    "{C:inactive}[ Mutation :{} {C:rainbowgradient}Rainbow{} {C:inactive}]{} {C:inactive}[Weight : #2# kg ]{}",
                    "{C:inactive}[ Value :{} {C:money}$#3#{} {C:inactive}]{}",
                    "{C:inactive}--------------------{}",
                    '{s:0.85,C:inactive}"Oh, holy Candy Blossom. Bring forth bountiful riches!"{}'
                }
            },
            j_tje_candyblossomwet = {
                name = "Candy Blossom",
                text = {
                    "{C:inactive,s:0.85}[{}{C:chips}Wet{}{C:inactive,s:0.85}]{}",
                    "{C:attention}Higher{} Mutation {C:money}Value{}, {C:red}Lower{} Weight {C:money}Value{}",
                    "{C:inactive}-------------------------------{}",
                    "{C:inactive}[ Mutation :{} {C:chips}Wet{} {C:inactive}]{} {C:inactive}[Weight : #2# kg ]{}",
                    "{C:inactive}[ Value :{} {C:money}$#3#{} {C:inactive}]{}",
                    "{C:inactive}--------------------{}",
                    '{s:0.85,C:inactive}"Oh, holy Candy Blossom. Bring forth bountiful riches!"{}'
                }
            },
            j_tje_candyblossomgolden = {
                name = "Candy Blossom",
                text = {
                    "{C:inactive,s:0.85}[{}{C:money}Golden{}{C:inactive,s:0.85}]{}",
                    "{C:inactive}-------------------------------{}",
                    "Gain {C:money}${} Based on {C:money}Value{} when {C:attention}Playing Hand{}",
                    "{C:inactive,s:0.75}Currently{} {C:money,s:0.75}$#4#{}",
                    "{C:inactive}-------------------------------{}",
                    "{C:inactive}[ Mutation :{} {C:money}Golden{} {C:inactive}]{} {C:inactive}[Weight : #2# kg ]{}",
                    "{C:inactive}[ Value :{} {C:money}$#3#{} {C:inactive}]{}",
                    "{C:inactive}--------------------{}",
                    '{s:0.85,C:inactive}"Oh, holy Candy Blossom. Bring forth bountiful riches!"{}'
                }
            },
            j_tje_candyblossomtree = {
                name = "Candy Blossom Tree",
                text = {
                    "{C:attention}Creates{} a {C:Attention}Candy Blossom{}",
                    "When starting a {C:attention}Blind{}",
                    "{C:inactive}[Needs Room]{}",
                    "{C:inactive}-------------------------------{}",
                    '{s:0.85,C:inactive}"The Most Expensive Tree In The World (TM)"{}'
                }
            },
            j_tje_divine = {
                name = "Divine Comedy",
                text = {
                    "{C:green}#1#{} in {C:green}#2#{} chance to {C:red}Destroy{}",
                    "{C:attention}Each{} card {C:blue}Held in Hand{} when {C:blue}Playing Hand{}",
                    "{C:tarot}+#10# EXP{} for each card",
                    "{C:attention}Destroyed{} at end of round{}",
                    "{C:inactive}---------------------------------{}",
                    "{C:inactive,s:0.75}[LV #4#]{}",
                    "{C:white,X:mult}X#7#{} {C:white,X:chips}X#8#{}",
                    "{C:inactive,s:0.75}EXP{}",
                    "{C:inactive,s:0.65}[#5#/#6#]{}",
                    "{C:inactive}---------------------------------{}",
                    '{s:0.85,C:inactive}"*defying death means getting stronger"{}'
                }
            },
            j_tje_divine20 = {
                name = "DIVINE COMEDY", ---------thanks mr SentientDreams AUT
                text = {
                    "{C:red}*but nobody came!{}",
                    "{C:inactive}---------------------------------{}",
                    "{C:red,s:0.75}[LV 20]{}",
                    "{C:white,X:mult}X#7#{} {C:white,X:chips}X#8#{}",
                    "{C:inactive,s:0.75}EXP{}",
                    "{C:red,s:0.65}[MAX/MAX]{}",
                    "{C:inactive}---------------------------------{}",
                    '{s:0.85,C:inactive}"*and personally, i dont like dying all that much."{}'
                }
            },
            j_tje_uneducatedguess = {
                name = "(Un)educated Guess",
                text = {
                    "{C:attention}Ranks{} are {C:ttention}Chosen{}",
                    "At {C:green}Random{}",
                    "{C:green}One{} of the listed {C:attention}Ranks{} is",
                    "the {C:tsusjeopardytxt}Correct{} rank",
                    "{C:money}$#4#{} for each scored {C:tsusjeopardytxt}Correct{} rank",
                    "{C:inactive,s:0.85}[{}{C:attention,s:0.85}#1#{} {C:attention,s:0.85}#2#{} {C:attention,s:0.85}#3#{}{C:inactive,s:0.85}]{}",
                    "{C:inactive}---------------------------------{}",
                    '{s:0.85,C:inactive}"SHES STROGGIN MY BEEF TILL IM OFF."{}'
                }
            },
            j_tje_risingshine = {
                name = "Rising Shine",
                text = {
                    "{C:attention}Gain{} {C:money}Payout{} based on",
                    "{C:tsusjeopardytxt}Stage{} and {C:attention}Interest Cap{}",
                    "{C:tsusjeopardytxt}Stage{} is increased when Defeating {C:attention}Boss Blind{}",
                    "{C:green}#1#{} in {C:green}#2#{} chance to give",
                    "{C:red}Negative{} {C:money}Payout{} at end of round",
                    "{C:inactive,s:0.85}[Stage]{}",
                    "{C:inactive,s:0.75}[#3#/#4#]{}",
                    "{C:inactive}---------------------------------------{}",
                    '{s:0.85,C:inactive}"It aint easy keeping things light in the shadows."{}'
                }
            },
            j_tje_markeddownmerchandise = {
                name = "Marked Down Merchandise",
                text = {
                    "{C:red}+#3# Mult{}",
                    "{C:green}#1#{} in {C:green}#2#{} chance for",
                    "{C:red}#4#${} during {C:money}Payout{}",
                    "{C:inactive}-----------------------------{}",
                    '{s:0.85,C:inactive}"Im already inside ;)"{}'
                }
            },
            j_tje_chibimita = {
                name = "ChibiMita.fbx",
                text = {
                    "{C:attention}Retrigger{} played cards",
                    "A {C:green}random{} amount of times",
                    "If played hand is a {C:attention}High Card{}",
                    "{C:inactive}----------------------------------{}",
                    '{s:0.85,C:inactive}"Tons of lines, simplest models"{}',
                    '{s:0.85,C:inactive}"And best of all, gorgeous hair!"{}'
                }
            },
            j_tje_kindmita = {
                name = "Kind Mita",
                text = {
                    "If played hand is a {C:attention}Straight{}",
                    "Enhance all {C:attention}Played{} Cards to a",
                    "{C:green}Random{} {C:attention}Enhancement{}",
                    "{C:inactive}----------------------------{}",
                    '{s:0.85,C:inactive}"What else can you do but rely on me, Kind Mita!"{}'
                }
            },
            j_tje_incomingbattlecats = {
                name = "Incoming Battling Cats",
                text = {
                    "{C:attention}Advances{} the {C:green}values{} listed to the {C:attention}Left{}",
                    "When {C:attention}Starting{} a {C:attention}Blind{}, {C:attention}Playing{} a {C:attention}Hand{}",
                    "Or {C:attention}Rerolling{} the {C:attention}Shop{}",
                    "The {C:attention}Leftmost{} {c:green}value{} is used when {C:attention}Scoring{}",
                    "{C:inactive}[{} {s:1.25,V:3}+#6# #3#{} {C:inactive}/{} {V:2}+#5# #2#{} {C:inactive}/{} {V:1}+#4# #1#{}{C:inactive}]{}",
                    "{C:inactive}----------------------------{}",
                    '{s:0.85,C:inactive}"???!"{}'
                }
            },
            j_tje_backalleyboning = {
                name = "Back-Alley Boning",
                text = {
                    "If played hand isnt {C:attention}Most{} played hand",
                    "{C:planet}Level{} it up and {C:attention}Retrigger{} all played cards",
                    "and cards with {C:attention}In Hand Scoring{} effects",
                    "{C:inactive}------------------------------------{}",
                    '{s:0.85,C:inactive}"*color me starstruck"{}'
                }
            },
            j_tje_antibiotic = {
                name = "Antibiotics",
                text = {
                    "{C:attention}+#1# Hand Size{}",
                    "Final {C:chips}Chips{} and {C:mult}Mult{}",
                    "Are {C:red}Halved",
                    "{C:inactive,s:0.75}[Self Destructs at end of Round]{}",
                    "{C:inactive,s:0.65}[Gains {C:attention,s:0.65}Eternal{} {C:inactive,s:0.65}when in Blind]{}",
                    "{C:inactive}-------------------------------{}",
                    '{s:0.85,C:inactive}"Always take your doctors advice."{}'
                }
            },
            j_tje_jealousy = {
                name = "Jealousy",
                text = {
                    "{C:green}1{} in {C:green}#2#{} chance to",
                    "Increase {C:attention}Final{} {C:red}Mult{}",
                    "By {C:white,X:mult}X#3#{} to for each",
                    "{C:attention}Scoring{} {C:hearts}Hearts{} in played hand"
                }
            },
            j_tje_nostalgia = {
                name = "Jealousy",
                text = {
                    "Increase {C:attention}Consumable Slots{}",
                    "By {C:attention}#2#{} for every {C:money}$#1#{}",
                    "You have",
                    "{C:inactive,s:0.75}[Updates during Scoring]{}"
                }
            },
            j_tje_overloadedsnacking = {
                name = "Overloaded Snacking",
                text = {
                    "If played hand contains only",
                    "{C:spades}Spades{} and {C:hearts}Hearts{}",
                    "Decrease {C:attention}Blind Size{} by {C:attention}40%{}",
                    "{C:inactive,s:0.75}[Must contain both suits]",
                    "{s:0.85,C:inactive}Once per round{}",
                    "{C:inactive}#1#!{}",
                    "{C:inactive}--------------------------{}",
                    '{s:0.85,C:inactive}"*Crunch* What? Im off-duty."{}'
                }
            },
            j_tje_fourofakind = {
                name = "Four Of A Kind",
                text = {
                    "If played hand is a {C:attention}Four of a Kind{}",
                    "{C:green}50%{} chance for {X:red,C:white}X#1#{}",
                    "{C:red}+#2#{} otherwise",
                    "{C:inactive,s:0.75}[% chance CANNOT be modified]{}",
                    "{C:inactive}----------------------------{}",
                    '{s:0.85,C:inactive}"dont you want a mult with that?"{}'
                }
            },
            j_tje_fanfarefever = {
                name = "Fanfare Fever",
                text = {
                    "This gains {C:white,X:red}X#4#{} for every {C:blue}Chip{}",
                    "a {C:attention}scored card{} has",
                    "scored cards have a {C:green}#2#{} in {C:green}#3#{}",
                    "chance to be {C:red}Destroyed{}",
                    "{C:inactive}Currently{} {C:white,X:red}X#1#{}",
                    "{C:inactive,s:0.75}Resets at end of round{}",
                    "{C:inactive}----------------------------{}",
                    '{s:0.85,C:inactive}"Let my name echo in song!"{}'
                }
            }
        },
        
        Enhanced = {
            m_tje_nptminty = {
                name = "Minty Card",
                text = {
                    "Gain {C:money}$#2#{} for every {C:blue}Hand{} played this round",
                    "{C:attention}Resets{} when score catches on {C:attention}Fire{}",
                    "{C:inactive,s:0.85}[Currently {C:money,s:0.85}$#3#{}{C:inactive,s:0.85}]{}"
                },
            },
            m_tje_nptshell = {
                name = "Shell Card",
                text = {
                    "{C:attention}Retrigger{} this card {C:attention}#1#{} times",
                    "When Playing a {C:attention}High Card{}",
                    "{C:red}Destroy{} this card if not"
                }
            },
            m_tje_sullied = {
                name = "Sullied Card",
                text = {
                    "{C:green}65%{} chance to increase {C:blue}Bonus Chips{} by {X:blue,C:white}X2{}",
                    "Until chance {C:red}fails{}",
                    "resets after scoring",
                    "Starts at {C:blue}+2 Bonus Chips{}",
                    "{C:inactive,s:0.75}[% chance CANNOT be modified]{}"
                },
            },
            m_tje_candied = {
                name = "Candied Card",
                text = {
                    "Playing a {C:attention}#1#{} while",
                    "this is in-hand gives {C:money}$#2#{}",
                    "{C:red}Destroy{} this card afterwards",
                    "{C:inactive}Resets when first hand is drawn{}",
                    "{C:inactive,s:0.65}[Payout depends on half the cards chip value]{}"

                }
            },
            m_tje_fadedremnant = {
                name = "Faded Remnant",
                text = {
                    {"{C:green}#1# in #2#{} to score",
                    "{C:white,X:red}X#3#{} Mult",
                    "{C:inactive,E:1}#4#{} {C:enhanced,E:1}Rolls{}"},
                    {"Destroy this card if",
                    "there are {C:inactive, E:1}#5#{} or more",
                    "{C:green,E:1}successful{} {C:enhanced,E:1}Rolls{}"}

                }
            }
        },
        Other = {
            tje_nptgum_seal = {
                name = "Gum Seal",
                text = {
                    "This card is {C:attention}always selected{} when in Hand",
                    "After being played #1# {C:inactive}[#2#]{} change Seal into",
                    "{C:candyseal}Candy Seal{}"
                }
            },
            tje_nptcandy_seal = {
                name = "Candy Seal",
                text = {
                    "{C:white,X:mult}X#3#{} Mul when scored",
                    "Gains {C:white,X:mult}X#4#{} Mult when played",
                    "{C:green}#1# in #2#{} chance to {C:red}lose{}",
                    "{C:white,X:mult}X#5#{} Mult when scored"
                }
            },
            tje_nptsummer_seal = {
                name = "Summer Seal",
                text = {
                    "yeah"
                }
            },

            -- Waterproof Stickers

            tje_digitized_wpsticker = {
                name = "Digitized",
                text = {
                    "Decrease {C:mult}Mult{} by {C:dark_edition}#1#%{}",
                    "of this cards {C:dark_edition,E:1}Absolute{}",
                    "{C:chips}Chip value{}",
                    "{C:inactive}------------------------{}",
                    "Increase {C:dark_edition}percentage{} by",
                    "{C:dark_edition}#2#%{} when scored",
                    "{C:inactive}------------------------{}",
                    "Remove this",
                    "{C:enhanced} Waterproof Sticker{}",
                    "when scored {C:attention}#3#{} {C:inactive}(#4#){} times"
                }
            },
            tje_palerose_wpsticker = {
                name = "Pale Rose",
                text = {
                    "yeah"
                }
            },
            tje_haunted_wpsticker = {
                name = "Haunted",
                text = {
                    "yeah"
                }
            },
            tje_contract_wpsticker = {
                name = "Contract",
                text = {
                    "yeah"
                }
            },
            tje_faded_wpsticker = {
                name = "Faded",
                text = {
                    "yeah"
                }
            },
            tje_achingheart_wpsticker = {
                name = "Aching Heart",
                text = {
                    "yeah"
                }
            },
            tje_reverse_wpsticker = {
                name = "Reverse",
                text = {
                    "yeah"
                }
            },
            tje_bliss_wpsticker = {
                name = "Bliss",
                text = {
                    "yeah"
                }
            },
            tje_fishhead_wpsticker = {
                name = "Fish Head",
                text = {
                    "yeah"
                }
            },
            tje_charmed_wpsticker = {
                name = "Charming Sparkles",
                text = {
                    "yeah"
                }
            },
        },
        TjeDescriptionDummy = { --taken from aikoshen (thanks feli)
            cdd_tje_lhterm = {
                name = "{C:tje_lunar_version,E:1}Lunar House{}",
                text = {
                    "{C:tje_lunar_version,E:1}Lunar House{}'s {C:planet}Planet{}",
                    "Has {C:red}0{} {C:planet}Level{} value",
                    "for both {C:chips}Chips{} and",
                    "{C:mult}Mult{}"
                    
                }
            },
            cdd_tje_csterm = {
                name = "Crossy-side",
                text = {
                    "Content added by",
                    "{C:tje_label,X:tje_label_inverse}Crossy{}"
                    
                }
            },
            cdd_tje_rollterm = {
                name = "Rolling/Roll(s)",
                text = {
                    "Refers to a {C:attention}repeatable{}",
                    "instance where the",
                    "{C:enhanced}above effect{} is repeated",
                    "{C:inactive}number listed{} times"
                }

            }
        }
    }
}
