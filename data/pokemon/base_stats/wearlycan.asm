	db DEX_WEARLYCAN ; pokedex id

	db  70,  90,  80, 100,  85
	;   hp  atk  def  spd  spc

	db ICE, FERAL ; type
	db 75 ; catch rate
	db 149 ; base exp

	INCBIN "gfx/pokemon/front/wearlycan.pic", 0, 1 ; sprite dimensions
	dw WearlycanPicFront, WearlycanPicBack

	db SCRATCH, LEER, RAGE, FURY_SWIPES ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, RAGE,         ICE_BEAM,     BLIZZARD,     DIG,          \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF,         STRENGTH
	; end

	db 0 ; padding
