	db DEX_ROARDAN ; pokedex id

	db 101, 130, 105,  35,  70
	;   hp  atk  def  spd  spc

	db ROCK, FERAL ; type
	db 45 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/roardan.pic", 0, 1 ; sprite dimensions
	dw RoardanPicFront, RoardanPicBack

	db SUBSTITUTE, GROWL, TACKLE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         DRAGON_RAGE,  EARTHQUAKE,   FISSURE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   SKULL_BASH,   \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(RoardanPicFront)
	assert BANK(RoardanPicFront) == BANK(RoardanPicBack)
