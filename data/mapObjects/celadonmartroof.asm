CeladonMartRoofObject: ; 0x485a8 (size=36)
	db $42 ; border block

	db $1 ; warps
	db $2, $f, $0, CELADON_MART_5

	db $4 ; signs
	db $1, $a, $3 ; CeladonMartRoofText3
	db $1, $b, $4 ; CeladonMartRoofText4
	db $2, $c, $5 ; CeladonMartRoofText5
	db $2, $d, $6 ; CeladonMartRoofText6

	db $2 ; people
	db SPRITE_BLACK_HAIR_BOY_2, $4 + 4, $a + 4, $ff, $d2, $1 ; person
	db SPRITE_LITTLE_GIRL, $5 + 4, $5 + 4, $fe, $0, $2 ; person

	; warp-to
	EVENT_DISP CELADON_MART_ROOF_WIDTH, $2, $f ; CELADON_MART_5
