	db DEX_SCARIBOU ; pokedex id

	db  85, 110,  85,  60,  90
	;   hp  atk  def  spd  spc

	db NORMAL, COSMIC ; type
	db 45 ; catch rate
	db 165 ; base exp

	INCBIN "gfx/pokemon/front/scaribou.pic", 0, 1 ; sprite dimensions
	dw ScaribouPicFront, ScaribouPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         ICE_BEAM,     BLIZZARD,     THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     REST,         THUNDER_WAVE, PSYWAVE,      SUBSTITUTE,   STRENGTH,     \
	     FLASH,        TRI_ATTACK
	; end

	db BANK(ScaribouPicFront)
	assert BANK(ScaribouPicFront) == BANK(ScaribouPicBack)
