	db DEX_STACKTUS ; pokedex id

	db  60,  95, 100,  90,  75
	;   hp  atk  def  spd  spc

	db GRASS, FERAL ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/front/stacktus.pic", 0, 1 ; sprite dimensions
	dw StacktusPicFront, StacktusPicBack

	db TACKLE, SAND_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm WHIRLWIND,    MEGA_KICK,    TOXIC,        HORN_DRILL,   BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   RAGE,         MEGA_DRAIN,   \
	     SOLARBEAM,    EARTHQUAKE,   FISSURE,      MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SELFDESTRUCT, SWIFT,        REST,         EXPLOSION,    \
	     TRI_ATTACK,   SUBSTITUTE
	; end

	db BANK(StacktusPicFront)
	assert BANK(StacktusPicFront) == BANK(StacktusPicBack)
