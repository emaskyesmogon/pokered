	db DEX_WARFURS ; pokedex id

	db  70,  60,  50,  55,  70
	;   hp  atk  def  spd  spc

	db ICE, FERAL ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/warfurs.pic", 0, 1 ; sprite dimensions
	dw WarfursPicFront, WarfursPicBack

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         ICE_BEAM,     BLIZZARD,     DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         METRONOME,    SWIFT,        SKULL_BASH,   \
	     REST,         SUBSTITUTE,   STRENGTH
	; end

	db 0 ; padding
