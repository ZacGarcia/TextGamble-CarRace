.model small 
.code
org 500h
jmp main
;----------------TXT GAMBLE----------------------------------
t_ink 		db		0
t_ink1		db		0

t_pcol1		dw		0
t_prow1		dw		0

t_pcol		dw		0
t_prow		dw		0

txt_post 		db		1
page_num	db		?
tip1		dw		15

temp_tpcol	dw		0
temp_tprow	dw		0


;--------------FLAGS------------------------
flag1		db		0
flag2		db		0
flag3		db		0
flag4		db		0
flag5		db		0
flag6		db		0
flag7		db		0
flag8		db		0
flag9		db		0
flag10		db		0
exflag1		db		0
exflag2		db		0
exflag3		db		0
exflag4		db		0

;-------------------------------------------

;---------------------------------------------
;            LEVEL 1
;---------------------------------------------
word1comp			db 		'her'
word2comp			db 		'their'
word3comp			db 		'hit'
word4comp			db 		'the'
word5comp			db 		'tie'
word6comp			db 		'hire'
word7comp			db 		'tire'
word8comp			db 		'heir'
word9comp			db 		'rite'
word10comp			db 		'tier'
;--------------------------------------------
word1			db 		'H E R','$'
word2			db 		'T H E I R','$'
word3			db 		'H I T','$'
word4			db 		'T H E','$'
word5			db 		'T I E','$'
word6			db 		'H I R E','$'
word7			db 		'T I R E','$'
word8			db 		'H E I R','$'
word9			db 		'R I T E','$'
word10			db 		'T I E R','$'
;---------------------------------------------
wrd1shuf0		db		'T H E I R','$'
wrd1shuf1		db		'H E I R T','$'
wrd1shuf2		db		'E I R T H','$'
wrd1shuf3		db		'I R T H E','$'
wrd1shuf4		db		'R T H E I','$'
wrd1shuf5		db		'T R E I H','$'
wrd1shuf6		db		'H T R E I','$'
wrd1shuf7		db		'E I H T R','$'
wrd1shuf8		db		'I H T R E','$'
wrd1shuf9		db		'R E I H T','$'
;---------------------------------------------
;            LEVEL 2
;---------------------------------------------
word1comp2			db 		'lay'
word2comp2			db 		'sat'
word3comp2			db 		'say'
word4comp2			db 		'sly'
word5comp2			db 		'last'
word6comp2			db 		'salt'
word7comp2			db 		'stay'
word8comp2			db 		'slat'
word9comp2			db 		'slay'
word10comp2			db 		'salty'
;--------------------------------------------
word1_lvl2			db 		'L A Y','$'
word2_lvl2			db 		'S A T','$'
word3_lvl2			db 		'S A Y','$'
word4_lvl2			db 		'S L Y','$'
word5_lvl2			db 		'L A S T','$'
word6_lvl2			db 		'S A L T','$'
word7_lvl2			db 		'S T A Y','$'
word8_lvl2			db 		'S L A T','$'
word9_lvl2			db 		'S L A Y','$'
word10_lvl2			db 		'S A L T Y','$'
;---------------------------------------------
wrd2shuf0		db		'S A L T Y','$'
wrd2shuf1		db		'A L T Y S','$'
wrd2shuf2		db		'L T Y S A','$'
wrd2shuf3		db		'T Y S A L','$'
wrd2shuf4		db		'Y S A L T','$'
wrd2shuf5		db		'S Y L T A','$'
wrd2shuf6		db		'A S Y L T','$'
wrd2shuf7		db		'L T A S Y','$'
wrd2shuf8		db		'T A S Y L','$'
wrd2shuf9		db		'Y L T A S','$'
;---------------------------------------------
;            LEVEL 3
;---------------------------------------------
word1comp3			db 		'pale'
word2comp3			db 		'plea'
word3comp3			db 		'place'
word4comp3			db 		'ape'
word5comp3			db 		'cap'
word6comp3			db 		'pea'
word7comp3			db 		'pace'
word8comp3			db 		'cape'
word9comp3			db 		'lace'
word10comp3			db 		'leap'
extra1comp3			db		'ale'
extra2comp3			db		'pal'
;--------------------------------------------
word1_lvl3			db 		'P A L E','$'
word2_lvl3			db 		'P L E A','$'
word3_lvl3			db 		'P L A C E','$'
word4_lvl3			db 		'A P E','$'
word5_lvl3			db 		'C A P','$'
word6_lvl3			db 		'P E A','$'
word7_lvl3			db 		'P A C E','$'
word8_lvl3			db 		'C A P E','$'
word9_lvl3			db 		'L A C E','$'
word10_lvl3			db 		'L E A P','$'
;---------------------------------------------
wrd3shuf0		db		'L P A C E','$'
wrd3shuf1		db		'E L A C P','$'
wrd3shuf2		db		'L P E C A','$'
wrd3shuf3		db		'A L E P C','$'
wrd3shuf4		db		'A L P C E','$'
wrd3shuf5		db		'C L P A E','$'
wrd3shuf6		db		'E A P C L','$'
wrd3shuf7		db		'P E L C A','$'
wrd3shuf8		db		'L P E A C','$'
wrd3shuf9		db		'C A L E P','$'
;---------------------------------------------
;            LEVEL 4
;---------------------------------------------
word1comp4			db 		'ate'
word2comp4			db 		'beat'
word3comp4			db 		'beta'
word4comp4			db 		'hate'
word5comp4			db 		'heat'
word6comp4			db 		'bathe'
word7comp4			db 		'bat'
word8comp4			db 		'bet'
word9comp4			db 		'eat'
word10comp4			db 		'hat'
extra1comp4			db		'tab'
extra2comp4			db		'tea'
extra3comp4			db		'the'
extra4comp4			db		'bath'
;--------------------------------------------
word1_lvl4			db 		'A T E','$'
word2_lvl4			db 		'B E A T','$'
word3_lvl4			db 		'B E T A','$'
word4_lvl4			db 		'H A T E','$'
word5_lvl4			db 		'H E A T','$'
word6_lvl4			db 		'B A T H E','$'
word7_lvl4			db 		'B A T','$'
word8_lvl4			db 		'B E T','$'
word9_lvl4			db 		'E A T','$'
word10_lvl4			db 		'H A T','$'
;---------------------------------------------
wrd4shuf0		db		'A B T H E','$'
wrd4shuf1		db		'H B T E A','$'
wrd4shuf2		db		'E A H B T','$'
wrd4shuf3		db		'E T A B H','$'
wrd4shuf4		db		'T A H E B','$'
wrd4shuf5		db		'B T H E A','$'
wrd4shuf6		db		'A E B H T','$'
wrd4shuf7		db		'B E T A H','$'
wrd4shuf8		db		'H A B E T','$'
wrd4shuf9		db		'H T B E A','$'
;---------------------------------------------
;            LEVEL 5
;---------------------------------------------
word1comp5			db 		'and'
word2comp5			db 		'mean'
word3comp5			db 		'name'
word4comp5			db 		'dame'
word5comp5			db 		'named'
word6comp5			db 		'amend'
word7comp5			db 		'dam'
word8comp5			db 		'mad'
word9comp5			db 		'man'
word10comp5			db 		'men'
extra1comp5			db		'amen'
extra2comp5			db		'dean'
extra3comp5			db		'made'
extra4comp5			db		'mane'
;--------------------------------------------
word1_lvl5			db 		'A N D','$'
word2_lvl5			db 		'M E A N','$'
word3_lvl5			db 		'N A M E','$'
word4_lvl5			db 		'D A M E','$'
word5_lvl5			db 		'N A M E D','$'
word6_lvl5			db 		'A M E N D','$'
word7_lvl5			db 		'D A M','$'
word8_lvl5			db 		'M A D','$'
word9_lvl5			db 		'M A N','$'
word10_lvl5			db 		'M E N','$'
;---------------------------------------------
wrd5shuf0		db		'M N A E D','$'
wrd5shuf1		db		'M D A N E','$'
wrd5shuf2		db		'A E D M N','$'
wrd5shuf3		db		'N E M D A','$'
wrd5shuf4		db		'E N M A D','$'
wrd5shuf5		db		'A D M N E','$'
wrd5shuf6		db		'D N E A M','$'
wrd5shuf7		db		'N E A D M','$'
wrd5shuf8		db		'E D M N A','$'
wrd5shuf9		db		'D A M E N','$'
;---------------------------------------------      

 
;---------------------------------------------
char_count	db	0
shuff_num 	db	0

shuffler	db		'SHUFFLE','$'
shuffler1 	db		' PRESS','$'
shuffler2	db		'(SPACE)','$'

scrab		db		'  G A M B L E ',0ah,0dh
			db	09h,20h,20h,'                ',0aH,0dH 
			db	09h,20h,20h,'      PLAY      ',0aH,0dH 
			db	09h,20h,20h,'                ',0aH,0dH 
			db	09h,20h,20h,'    MAIN MENU   ','$'
ward 			db		 '_ _ _ _ _ ','$'			
cmp_ward	db		10 dup('$')
txt_lvl_counter	db	49
word_counter	db	0
tmp_char		db	?

p_dec		db		1
extra_counter	db		'0'

tscore_0	db	'0'
tscore_00	db	'0'
tscore_000	db	'0'
tscore_0000	db	'0'
tscore 		db	'SCORE: ','$'
nxt_word	db	'LEVEL: ','$'
bonus_word	db	'BONUS WORDS:','$'
try_againtxt	db	'(T) TRY AGAIN   (Q)QUIT TXT GAMBLE','$'
;-----------------------MONGIE KART---------------------------------------------
;----------------------------------------------

line db' ','$'
line1 db '                      ========','$'
line2 db '===========                   ','$'
line3 db '                ==============','$'
line4 db '==========              ======','$'

;------------------------------------------------
carsign db 0
dh1  db 4
dh2  db 5
dh3  db 6
dh4  db 7
dh5  db 8
dh6  db 13
dh7  db 14
dh8  db 15
dh9  db 16
dh10 db 17

dha  db 21
dhb  db 5
dhc  db	10
dhd  db	16

;-----------------------------------------------
cara db  '_ _','$'
carb db '0   0','$'
carc db  '   ','$'
card db '0   0','$'
carah db 17
caral db 30
carbh db 18
carbl db 29
carch db 19
carcl db 30
cardh db 20
cardl db 29
carrow1 db 9
carcol1 db 25
carrow2 db 8
carcol2 db 26
carrow3 db 8
carcol3 db 27
carrow4 db 9
carcol4 db 28
carscore dw 0 
caronesplace	dw 0
cartensplace	db 0
carhundplace	db 0
carones 	db '0','$'
cartens 	db '0','$'
carhundreds 	db '0','$'
;------------------------------------------
car0 db'                                                                               ',0ah, 0dh
     db'                                                                               ',0ah, 0dh
     db'  ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱   ',0ah, 0dh
     db'    ۱  ۱  ۱                                      ۱                  ۱  ۱ ',0ah, 0dh
	 db'  ۱  ۱  ۱                                      ۱  ۱              ۱  ۱   ',0ah, 0dh
	 db'    ۱  ۱  ۱                                      ۱                  ۱  ۱ ',0ah, 0dh
	 db'  ۱  ۱  ۱                                      ۱  ۱              ۱  ۱   ',0ah, 0dh
	 db'    ۱  ۱  ۱                                      ۱                  ۱  ۱ ',0ah, 0dh
	 db'  ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱   ',0ah, 0dh
     db'    ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱ ',0ah, 0dh
	 db'  ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱   ',0ah, 0dh
	 db'    ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱ ',0ah, 0dh
	 db'  ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱   ',0ah, 0dh
     db'    ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱ ',0ah, 0dh
	 db'  ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱   ',0ah, 0dh
	 db'    ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱ ',0ah, 0dh
	 db'  ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱   ',0ah, 0dh
	 db'    ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱ ',0ah, 0dh
	 db'  ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱   ',0ah, 0dh
	 db'    ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱ ',0ah, 0dh
	 db'  ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱   ',0ah, 0dh
	 db'    ۱  ۱  ۱                                      ۱  ۱  ۱  ۱  ۱  ۱  ۱ ',0ah, 0dh
     db'                                                                               ',0ah, 0dh
     db'				 						 									   ','$'


;------------------------------------------
;----------------------------------------------

c_ink	db		0
c_prow	dw		0
c_pcol	dw		0

c_ink1	db		0
c_prow1	dw		0
c_pcol1	dw		0
car_choice	db	1
carbs		db		'    K A R T ',0ah,0dh
			db	09h,20h,20h,'                 ',0aH,0dH 
			db	09h,20h,20h,'                 ',0aH,0dH 
			db	09h,20h,20h,'                 ',0aH,0dH 
			db	09h,20h,20h,'       PLAY      ',0aH,0dH 
			db	09h,20h,20h,'                 ',0aH,0dH 
			db	09h,20h,20h,'     MAIN MENU   ','$'







;-----------------------------------------------------------------------------------------

;-----------------LOADING SCREEN NI CYA---------------------------------

;text mode col & row
col 	 db 		0
row		 db 		0
;video mode col & row
pcol	 dw			0
prow	 dw			0

pcol1	 dw			0
prow1	 dw			0
;clear screen points
pt1		 dw			0000h
pt2		 dw			184fh

temp 	 dw		   	?
temp1	 dw 		?
temp2	 dw			?
ink		 db			0
ink1 	 db 		15
msg 	 db 'INPUT A STRING: ','$'
;---------------
rowm	db 	0
colm 	db	0

rowall 	db	0
colall	db 0
slec_choice 	db		1
game_menu	db	09h,'       TXT  GAMBLE         ',0aH,0dH 
			db	09h,20h,20h,'                                ',0aH,0dH 
			db	09h,20h,,'      MONGIE KART        ',0aH,0dH 
			db	09h,20h,20h,'                                ',0aH,0dH 
			db	09h,20h,'   PRESS(ESC) TO QUIT ','$'
;----------------------------------------------------------------

main proc near
	
	
	call clrscr
	call set_cursor
	call video_mode
	call hide_cursor
main_jump:	
	call clrscr
	call set_cursor
	call hide_cursor
	call intro_mongie
	call color_mongie
	mov t_ink,54
	call game
	call menu_main
	call slection
	;call text_mode
	int 20h
main endp
slection proc near
pusha
	cmp slec_choice,1
	if e jmp go_txt
	cmp slec_choice,2
	if e jmp go_kart
popa
ret
go_txt:
call clrscr
call loader
call main_text
go_kart:
call clrscr
call loader
call main_kart
int 20h
slection endp
menu_main proc near
pusha
	mov row,5
	mov col,16
	call set_cursor
	
	mov ah,09h
	lea dx,game_menu
	int 21h
	mov pcol,102
	mov prow,122
get_key:
	mov ah,11h
	int 16h
	jz not_found
	mov ah,10h
	int 16h
	cmp ah,50h
	if e jmp slec_dwn
	cmp ah,48h
	if e jmp slec_up
	cmp al,0dh
	if e jmp entre_game
	cmp al,1bh
	if e jmp quit_game
jmp get_key
	


not_found: 
	inc t_ink
	mov ink1,14
	call delay_slow
	call game
	call selection_boarder
	mov ink1,0
	call delay_slow
	call game
	call selection_boarder
jmp get_key
slec_dwn:
	mov pcol,102
	mov prow,122
	mov ink1,0
	call selection_boarder
	
	mov slec_choice,2
	mov pcol,102
	mov prow,146
	mov ink1,14
	call selection_boarder
jmp get_key
slec_up:
	mov pcol,102
	mov prow,146
	mov ink1,0
	call selection_boarder

	mov slec_choice,1
	mov pcol,102
	mov prow,122
	mov ink1,14
	call selection_boarder
jmp get_key
entre_game:
popa
ret
quit_game:
call clrscr
call text_mode
int 20h
menu_main endp

delay_slow proc near
        pusha
 
  mov cx,099999h
    del_s:nop
        nop
		nop
		nop
		nop
        nop
		nop
		nop
		nop
        nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
        loop del_s
	
        popa
        ret
delay_slow endp


selection_boarder proc near
pusha
		
	mov cl,17
slec_vert1:
	call pen1
	inc prow
	
loop slec_vert1
	
	mov cl,128
slec_hori1:
	call pen1
	inc pcol
	
loop slec_hori1
	
	mov cl,17
slec_vert2:
	call pen1
	dec prow
	
loop slec_vert2
	
	mov cl,128
slec_hori2:
	call pen1
	dec pcol
	
loop slec_hori2

popa
ret 
selection_boarder endp

color_mongie proc near
call delay
call delay
mov ink,0
pusha
	mov bx,temp1
	mov prow,bx
	mov bx,temp2
	mov pcol,bx
	add ink,9
	mov cl,13
m1:
	
	call pen3
	inc pcol
loop m1
	
	add pcol,24
	mov cl,13
m2:
	
	call pen3
	inc pcol
loop m2
	
	add pcol,12
	mov cl,24
	sub ink,5
o1:

	call pen3
	inc pcol
loop o1
	
	add pcol,12
	mov cl,13
	add ink,10
n1:

	call pen3
	inc pcol
loop n1

	add pcol,28
	mov cl,12
n2:

	call pen3
	inc pcol
loop n2

	sub ink,13
	add pcol,12
	mov cl,33
g1:

	call pen3
	inc pcol
loop g1

	add pcol,8
	inc ink
	mov cl, 12
i1:

	call pen3
	inc pcol
loop i1
	
	add pcol,8
	add ink,2
	mov cl,32
e1:

	call pen3
	inc pcol
loop e1
;------------------------
call delay
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,14
m3:
	
	call pen3
	inc pcol
loop m3
	
	add pcol,22
	mov cl,14
m4:
	
	call pen3
	inc pcol
loop m4

	add pcol,11
	mov cl,26
	sub ink,5
o2:

	call pen3
	inc pcol
loop o2

	add pcol,11
	mov cl,14
	add ink,10
n3:

	call pen3
	inc pcol
loop n3

	add pcol,27
	mov cl,12
n4:

	call pen3
	inc pcol
loop n4

	
	sub ink,13
	add pcol,11
	mov cl,34
g2:

	call pen3
	inc pcol
loop g2

	add pcol,8
	inc ink
	mov cl, 12
i2:

	call pen3
	inc pcol
loop i2

	add pcol,8
	add ink,2
	mov cl,32
e2:

	call pen3
	inc pcol
loop e2
;------------------------
call delay
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,15
m5:
	
	call pen3
	inc pcol
loop m5
	
	add pcol,20
	mov cl,15
m6:
	
	call pen3
	inc pcol
loop m6

	add pcol,10
	mov cl,28
	sub ink,5
o3:

	call pen3
	inc pcol
loop o3

	add pcol,10
	mov cl,15
	add ink,10
n5:

	call pen3
	inc pcol
loop n5

	add pcol,26
	mov cl,12
n6:

	call pen3
	inc pcol
loop n6

	sub ink,13
	add pcol,10
	mov cl,35
g3:

	call pen3
	inc pcol
loop g3

	add pcol,8
	inc ink
	mov cl, 12
i3:

	call pen3
	inc pcol
loop i3

	add pcol,8
	add ink,2
	mov cl,32
e3:

	call pen3
	inc pcol
loop e3
;--------------------------
call delay
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,16
m7:
	
	call pen3
	inc pcol
loop m7
	
	add pcol,18
	mov cl,16
m8:
	
	call pen3
	inc pcol
loop m8

	add pcol,9
	mov cl,30
	sub ink,5
o4:

	call pen3
	inc pcol
loop o4

	add pcol,9
	mov cl,16
	add ink,10
n7:

	call pen3
	inc pcol
loop n7

	add pcol,25
	mov cl,12
n8:

	call pen3
	inc pcol
loop n8

	sub ink,13
	add pcol,9
	mov cl,36
g4:

	call pen3
	inc pcol
loop g4

	add pcol,8
	inc ink
	mov cl, 12
i4:

	call pen3
	inc pcol
loop i4

	add pcol,8
	add ink,2
	mov cl,32
e4:

	call pen3
	inc pcol
loop e4
;----------------------
call delay
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,17
m9:
	
	call pen3
	inc pcol
loop m9
	
	add pcol,16
	mov cl,17
m10:
	
	call pen3
	inc pcol
loop m10
	
	add pcol,8
	mov cl,32
	sub ink,5
o5:

	call pen3
	inc pcol
loop o5
	
	add pcol,8
	mov cl,17
	add ink,10
n9:

	call pen3
	inc pcol
loop n9

	add pcol,24
	mov cl,12
n10:

	call pen3
	inc pcol
loop n10

	sub ink,13
	add pcol,8
	mov cl,37
g4:

	call pen3
	inc pcol
loop g4

	add pcol,8
	inc ink
	mov cl, 12
i4:

	call pen3
	inc pcol
loop i4

	add pcol,8
	add ink,2
	mov cl,32
e4:

	call pen3
	inc pcol
loop e4
;----------------------
call delay
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,18
m11:
	
	call pen3
	inc pcol
loop m11
	
	add pcol,14
	mov cl,18
m12:
	
	call pen3
	inc pcol
loop m12
	
	add pcol,8
	mov cl,32
	sub ink,5
o6:

	call pen3
	inc pcol
loop o6
	
	add pcol,8
	mov cl,18
	add ink,10
n11:

	call pen3
	inc pcol
loop n11

	add pcol,23
	mov cl,12
n12:

	call pen3
	inc pcol
loop n12

	sub ink,13
	add pcol,8
	mov cl,37
g6:

	call pen3
	inc pcol
loop g6

	add pcol,8
	inc ink
	mov cl, 12
i6:

	call pen3
	inc pcol
loop i6

	add pcol,8
	add ink,2
	mov cl,32
e6:

	call pen3
	inc pcol
loop e6
;----------------------------
call delay
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,19
m13:
	
	call pen3
	inc pcol
loop m13
	
	add pcol,12
	mov cl,19
m14:
	
	call pen3
	inc pcol
loop m14
	
	add pcol,8
	mov cl,32
	sub ink,5
o7:

	call pen3
	inc pcol
loop o7
	
	add pcol,8
	mov cl,19
	add ink,10
n13:

	call pen3
	inc pcol
loop n13

	add pcol,22
	mov cl,12
n14:

	call pen3
	inc pcol
loop n14

	sub ink,13
	add pcol,8
	mov cl,37
g7:

	call pen3
	inc pcol
loop g7

	add pcol,8
	inc ink
	mov cl, 12
i7:

	call pen3
	inc pcol
loop i7

	add pcol,8
	add ink,2
	mov cl,32
e7:

	call pen3
	inc pcol
loop e7
;-----------------------------
call delay
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,20
m15:
	
	call pen3
	inc pcol
loop m15
	
	add pcol,10
	mov cl,20
m16:
	
	call pen3
	inc pcol
loop m16
	
	add pcol,8
	mov cl,32
	sub ink,5
o8:

	call pen3
	inc pcol
loop o8
	
	add pcol,8
	mov cl,20
	add ink,10
n15:

	call pen3
	inc pcol
loop n15

	add pcol,21
	mov cl,12
n16:

	call pen3
	inc pcol
loop n16

	sub ink,13
	add pcol,8
	mov cl,37
g8:

	call pen3
	inc pcol
loop g8

	add pcol,8
	inc ink
	mov cl, 12
i8:

	call pen3
	inc pcol
loop i8

	add pcol,8
	add ink,2
	mov cl,32
e8:

	call pen3
	inc pcol
loop e8
;-----------------------
call delay
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,21
m17:
	
	call pen3
	inc pcol
loop m17
	
	add pcol,8
	mov cl,21
m18:
	
	call pen3
	inc pcol
loop m18
	
	add pcol,8
	mov cl,12
	sub ink,5
o9:

	call pen3
	inc pcol
loop o9
	
	add pcol,8
	mov cl,12
o10:

	call pen3
	inc pcol
loop o10
	
	add pcol,8
	mov cl,21
	add ink,10
n17:

	call pen3
	inc pcol
loop n17

	add pcol,20
	mov cl,12
n18:

	call pen3
	inc pcol
loop n18

	sub ink,13
	add pcol,8
	mov cl,37
g9:

	call pen3
	inc pcol
loop g9

	add pcol,8
	inc ink
	mov cl, 12
i9:

	call pen3
	inc pcol
loop i9

	add pcol,8
	add ink,2
	mov cl,32
e9:

	call pen3
	inc pcol
loop e9
;-----------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,22
m19:
	
	call pen3
	inc pcol
loop m19
	
	add pcol,6
	mov cl,22
m20:
	
	call pen3
	inc pcol
loop m20
	
	add pcol,8
	mov cl,12
	sub ink,5
o11:

	call pen3
	inc pcol
loop o11
	
	add pcol,8
	mov cl,12
o12:

	call pen3
	inc pcol
loop o12
	
	add pcol,8
	mov cl,22
	add ink,10
n19:

	call pen3
	inc pcol
loop n19

	add pcol,19
	mov cl,12
n20:

	call pen3
	inc pcol
loop n20

	sub ink,13
	add pcol,8
	mov cl,37
g10:

	call pen3
	inc pcol
loop g10

	add pcol,8
	inc ink
	mov cl, 12
i10:

	call pen3
	inc pcol
loop i10

	add pcol,8
	add ink,2
	mov cl,32
e10:

	call pen3
	inc pcol
loop e10
;--------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,23
m21:
	
	call pen3
	inc pcol
loop m21
	
	add pcol,4
	mov cl,23
m22:
	
	call pen3
	inc pcol
loop m22
	
	add pcol,8
	mov cl,12
	sub ink,5
o13:

	call pen3
	inc pcol
loop o13
	
	add pcol,8
	mov cl,12
o14:

	call pen3
	inc pcol
loop o14
	
	add pcol,8
	mov cl,23
	add ink,10
n21:

	call pen3
	inc pcol
loop n21

	add pcol,18
	mov cl,12
n22:

	call pen3
	inc pcol
loop n22

	sub ink,13
	add pcol,8
	mov cl,11
g11:

	call pen3
	inc pcol
loop g11

	add pcol,34
	inc ink
	mov cl, 12
i11:

	call pen3
	inc pcol
loop i11

	add pcol,8
	add ink,2
	mov cl,9
e11:

	call pen3
	inc pcol
loop e11
;------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,24
m23:
	
	call pen3
	inc pcol
loop m23
	
	add pcol,3
	mov cl,23
m24:
	
	call pen3
	inc pcol
loop m24
	
	add pcol,8
	mov cl,12
	sub ink,5
o15:

	call pen3
	inc pcol
loop o15
	
	add pcol,8
	mov cl,12
o16:

	call pen3
	inc pcol
loop o16
	
	add pcol,8
	mov cl,24
	add ink,10
n23:

	call pen3
	inc pcol
loop n23

	add pcol,17
	mov cl,12
n24:

	call pen3
	inc pcol
loop n24

	sub ink,13
	add pcol,8
	mov cl,11
g12:

	call pen3
	inc pcol
loop g12

	add pcol,34
	inc ink
	mov cl, 12
i12:

	call pen3
	inc pcol
loop i12

	add pcol,8
	add ink,2
	mov cl,9
e12:

	call pen3
	inc pcol
loop e12
;---------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m25:
	
	call pen3
	inc pcol
loop m25
	
	add pcol,3
	mov cl,21
m26:
	
	call pen3
	inc pcol
loop m26
	
	add pcol,3
	mov cl,12
m27:

	call pen3
	inc pcol
loop m27
	
	add pcol,8
	mov cl,12
	sub ink,5
o17:

	call pen3
	inc pcol
loop o17
	
	add pcol,8
	mov cl,12
o18:

	call pen3
	inc pcol
loop o18
	
	add pcol,8
	mov cl,11
	add ink,10
n25:

	call pen3
	inc pcol
loop n25

	add pcol,3
	mov cl,11
n26:

	call pen3
	inc pcol
loop n26

	add pcol,16
	mov cl,12
n27:
	
	call pen3
	inc pcol
loop n27


	sub ink,13
	add pcol,8
	mov cl,11
g13:

	call pen3
	inc pcol
loop g13

	add pcol,34
	inc ink
	mov cl, 12
i13:

	call pen3
	inc pcol
loop i13

	add pcol,8
	add ink,2
	mov cl,9
e13:

	call pen3
	inc pcol
loop e13
;---------------------------------
call delay
		inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m28:
	
	call pen3
	inc pcol
loop m28
	
	add pcol,4
	mov cl,19
m29:
	
	call pen3
	inc pcol
loop m29
	
	add pcol,4
	mov cl,12
m30:

	call pen3
	inc pcol
loop m30
	
	add pcol,8
	mov cl,12
	sub ink,5
o19:

	call pen3
	inc pcol
loop o19
	
	add pcol,8
	mov cl,12
o20:

	call pen3
	inc pcol
loop o20
	
	add pcol,8
	mov cl,11
	add ink,10
n28:

	call pen3
	inc pcol
loop n28

	add pcol,4
	mov cl,11
n29:

	call pen3
	inc pcol
loop n29

	add pcol,15
	mov cl,12
n30:
	
	call pen3
	inc pcol
loop n30


	sub ink,13
	add pcol,8
	mov cl,11
g14:

	call pen3
	inc pcol
loop g14

	add pcol,34
	inc ink
	mov cl, 12
i14:

	call pen3
	inc pcol
loop i14

	add pcol,8
	add ink,2
	mov cl,9
e14:

	call pen3
	inc pcol
loop e14
;----------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m31:
	
	call pen3
	inc pcol
loop m31
	
	add pcol,5
	mov cl,17
m32:
	
	call pen3
	inc pcol
loop m32
	
	add pcol,5
	mov cl,12
m33:

	call pen3
	inc pcol
loop m33
	
	add pcol,8
	mov cl,12
	sub ink,5
o21:

	call pen3
	inc pcol
loop o21
	
	add pcol,8
	mov cl,12
o22:

	call pen3
	inc pcol
loop o22
	
	add pcol,8
	mov cl,11
	add ink,10
n31:

	call pen3
	inc pcol
loop n31

	add pcol,5
	mov cl,11
n32:

	call pen3
	inc pcol
loop n32

	add pcol,14
	mov cl,12
n33:
	
	call pen3
	inc pcol
loop n33


	sub ink,13
	add pcol,8
	mov cl,11
g15:

	call pen3
	inc pcol
loop g15

	add pcol,34
	inc ink
	mov cl, 12
i15:

	call pen3
	inc pcol
loop i15

	add pcol,8
	add ink,2
	mov cl,9
e15:

	call pen3
	inc pcol
loop e15
;---------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m34:
	
	call pen3
	inc pcol
loop m34
	add pcol,6
	mov cl,15
m35:
	
	call pen3
	inc pcol
loop m35
	
	add pcol,6
	mov cl,12
m36:

	call pen3
	inc pcol
loop m36
	
	add pcol,8
	mov cl,12
	sub ink,5
o23:

	call pen3
	inc pcol
loop o23
	
	add pcol,8
	mov cl,12
o24:

	call pen3
	inc pcol
loop o24
	
	add pcol,8
	mov cl,11
	add ink,10
n34:

	call pen3
	inc pcol
loop n34

	add pcol,6
	mov cl,11
n35:

	call pen3
	inc pcol
loop n35

	add pcol,13
	mov cl,12
n36:
	
	call pen3
	inc pcol
loop n36


	sub ink,13
	add pcol,8
	mov cl,11
g16:

	call pen3
	inc pcol
loop g16

	add pcol,34
	inc ink
	mov cl, 12
i16:

	call pen3
	inc pcol
loop i16

	add pcol,8
	add ink,2
	mov cl,9
e16:

	call pen3
	inc pcol
loop e16
;------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m37:
	
	call pen3
	inc pcol
loop m37
	add pcol,7
	mov cl,13
m38:
	
	call pen3
	inc pcol
loop m38
	
	add pcol,7
	mov cl,12
m39:

	call pen3
	inc pcol
loop m39
	
	add pcol,8
	mov cl,12
	sub ink,5
o25:

	call pen3
	inc pcol
loop o25
	
	add pcol,8
	mov cl,12
o26:

	call pen3
	inc pcol
loop o26
	
	add pcol,8
	mov cl,11
	add ink,10
n37:

	call pen3
	inc pcol
loop n37

	add pcol,7
	mov cl,11
n38:

	call pen3
	inc pcol
loop n38

	add pcol,12
	mov cl,12
n39:
	
	call pen3
	inc pcol
loop n39


	sub ink,13
	add pcol,8
	mov cl,11
g17:

	call pen3
	inc pcol
loop g17
	
	add pcol,6
	mov cl,20
g18:

	call pen3
	inc pcol
loop g18

	add pcol,8
	inc ink
	mov cl, 12
i17:

	call pen3
	inc pcol
loop i17

	add pcol,8
	add ink,2
	mov cl,29
e17:

	call pen3
	inc pcol
loop e17
;---------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m40:
	
	call pen3
	inc pcol
loop m40
	add pcol,8
	mov cl,11
m41:
	
	call pen3
	inc pcol
loop m41
	
	add pcol,8
	mov cl,12
m42:

	call pen3
	inc pcol
loop m42
	
	add pcol,8
	mov cl,12
	sub ink,5
o27:

	call pen3
	inc pcol
loop o27
	
	add pcol,8
	mov cl,12
o28:

	call pen3
	inc pcol
loop o28
	
	add pcol,8
	mov cl,11
	add ink,10
n40:

	call pen3
	inc pcol
loop n40

	add pcol,8
	mov cl,11
n41:

	call pen3
	inc pcol
loop n41

	add pcol,11
	mov cl,12
n42:
	
	call pen3
	inc pcol
loop n42


	sub ink,13
	add pcol,8
	mov cl,11
g19:

	call pen3
	inc pcol
loop g19

	add pcol,6
	mov cl,20
g20:

	call pen3
	inc pcol
loop g20

	add pcol,8
	inc ink
	mov cl, 12
i18:
	call pen3
	inc pcol
loop i18

	add pcol,8
	add ink,2
	mov cl,29
e18:

	call pen3
	inc pcol
loop e18
;------------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m43:
	
	call pen3
	inc pcol
loop m43

	add pcol,9
	mov cl,9
m44:
	
	call pen3
	inc pcol
loop m44
	
	add pcol,9
	mov cl,12
m45:

	call pen3
	inc pcol
loop m45
	
	add pcol,8
	mov cl,12
	sub ink,5
o29:

	call pen3
	inc pcol
loop o29
	
	add pcol,8
	mov cl,12
o30:

	call pen3
	inc pcol
loop o30
	
	add pcol,8
	mov cl,11
	add ink,10
n43:

	call pen3
	inc pcol
loop n43

	add pcol,9
	mov cl,11
n44:

	call pen3
	inc pcol
loop n44

	add pcol,10
	mov cl,12
n45:
	
	call pen3
	inc pcol
loop n45


	sub ink,13
	add pcol,8
	mov cl,11
g23:

	call pen3
	inc pcol
loop g23

	add pcol,6
	mov cl,20
g24:

	call pen3
	inc pcol
loop g24

	add pcol,8
	inc ink
	mov cl, 12
i20:

	call pen3
	inc pcol
loop i20

	add pcol,8
	add ink,2
	mov cl,29
e20:

	call pen3
	inc pcol
loop e20
;--------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m46:
	
	call pen3
	inc pcol
loop m46

	add pcol,10
	mov cl,7
m47:
	
	call pen3
	inc pcol
loop m47
	
	add pcol,10
	mov cl,12
m48:

	call pen3
	inc pcol
loop m48
	
	add pcol,8
	mov cl,12
	sub ink,5
o31:

	call pen3
	inc pcol
loop o31
	
	add pcol,8
	mov cl,12
o32:

	call pen3
	inc pcol
loop o32
	
	add pcol,8
	mov cl,11
	add ink,10
n46:

	call pen3
	inc pcol
loop n46

	add pcol,10
	mov cl,11
n47:

	call pen3
	inc pcol
loop n47

	add pcol,9
	mov cl,12
n48:
	
	call pen3
	inc pcol
loop n48


	sub ink,13
	add pcol,8
	mov cl,11
g25:

	call pen3
	inc pcol
loop g25

	add pcol,6
	mov cl,20
g26:

	call pen3
	inc pcol
loop g26

	add pcol,8
	inc ink
	mov cl, 12
i21:

	call pen3
	inc pcol
loop i21

	add pcol,8
	add ink,2
	mov cl,29
e21:

	call pen3
	inc pcol
loop e21
;---------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m49:
	
	call pen3
	inc pcol
loop m49

	add pcol,11
	mov cl,5
m50:
	
	call pen3
	inc pcol
loop m50
	
	add pcol,11
	mov cl,12
m51:

	call pen3
	inc pcol
loop m51
	
	add pcol,8
	mov cl,12
	sub ink,5
o33:

	call pen3
	inc pcol
loop o33
	
	add pcol,8
	mov cl,12
o34:

	call pen3
	inc pcol
loop o34
	
	add pcol,8
	mov cl,11
	add ink,10
n49:

	call pen3
	inc pcol
loop n49

	add pcol,11
	mov cl,11
n50:

	call pen3
	inc pcol
loop n50

	add pcol,8
	mov cl,12
n51:
	
	call pen3
	inc pcol
loop n51


	sub ink,13
	add pcol,8
	mov cl,11
g27:

	call pen3
	inc pcol
loop g27

	add pcol,6
	mov cl,20
g28:

	call pen3
	inc pcol
loop g28

	add pcol,8
	inc ink
	mov cl, 12
i22:

	call pen3
	inc pcol
loop i22

	add pcol,8
	add ink,2
	mov cl,29
e22:

	call pen3
	inc pcol
loop e22
;-------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m53:
	
	call pen3
	inc pcol
loop m53

	add pcol,12
	mov cl,3
m54:
	
	call pen3
	inc pcol
loop m54
	
	add pcol,12
	mov cl,12
m55:

	call pen3
	inc pcol
loop m55
	
	add pcol,8
	mov cl,12
	sub ink,5
o34:

	call pen3
	inc pcol
loop o34
	
	add pcol,8
	mov cl,12
o36:

	call pen3
	inc pcol
loop o36
	
	add pcol,8
	mov cl,11
	add ink,10
n52:

	call pen3
	inc pcol
loop n52

	add pcol,12
	mov cl,11
n53:

	call pen3
	inc pcol
loop n53

	add pcol,7
	mov cl,12
n54:
	
	call pen3
	inc pcol
loop n54


	sub ink,13
	add pcol,8
	mov cl,11
g29:

	call pen3
	inc pcol
loop g29

	add pcol,6
	mov cl,20
g30:

	call pen3
	inc pcol
loop g30

	add pcol,8
	inc ink
	mov cl, 12
i23:

	call pen3
	inc pcol
loop i23

	add pcol,8
	add ink,2
	mov cl,29
e23:

	call pen3
	inc pcol
loop e23
;----------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m56:
	
	call pen3
	inc pcol
loop m56

	add pcol,13
	mov cl,1
m57:
	
	call pen3
	inc pcol
loop m57
	
	add pcol,13
	mov cl,12
m58:

	call pen3
	inc pcol
loop m58
	
	add pcol,8
	mov cl,12
	sub ink,5
o37:

	call pen3
	inc pcol
loop o37
	
	add pcol,8
	mov cl,12
o38:

	call pen3
	inc pcol
loop o38
	
	add pcol,8
	mov cl,11
	add ink,10
n55:

	call pen3
	inc pcol
loop n55

	add pcol,13
	mov cl,11
n56:

	call pen3
	inc pcol
loop n56

	add pcol,6
	mov cl,12
n57:
	
	call pen3
	inc pcol
loop n57


	sub ink,13
	add pcol,8
	mov cl,11
g31:

	call pen3
	inc pcol
loop g31

	add pcol,6
	mov cl,20
g32:

	call pen3
	inc pcol
loop g32

	add pcol,8
	inc ink
	mov cl, 12
i24:

	call pen3
	inc pcol
loop i24

	add pcol,8
	add ink,2
	mov cl,29
e24:

	call pen3
	inc pcol
loop e24
;---------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m59:
	
	call pen3
	inc pcol
loop m59

	add pcol,27
	mov cl,12
m60:
	
	call pen3
	inc pcol
loop m60
	
		
	add pcol,8
	mov cl,12
	sub ink,5
o39:

	call pen3
	inc pcol
loop o39
	
	add pcol,8
	mov cl,12
o40:

	call pen3
	inc pcol
loop o40
	
	add pcol,8
	mov cl,11
	add ink,10
n59:

	call pen3
	inc pcol
loop n59

	add pcol,14
	mov cl,11
n60:

	call pen3
	inc pcol
loop n60

	add pcol,5
	mov cl,12
n61:
	
	call pen3
	inc pcol
loop n61


	sub ink,13
	add pcol,8
	mov cl,11
g32:

	call pen3
	inc pcol
loop g32

	add pcol,6
	mov cl,20
g34:

	call pen3
	inc pcol
loop g34

	add pcol,8
	inc ink
	mov cl, 12
i25:

	call pen3
	inc pcol
loop i25

	add pcol,8
	add ink,2
	mov cl,9
e25:

	call pen3
	inc pcol
loop e25
;------------------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m61:
	
	call pen3
	inc pcol
loop m61

	add pcol,27
	mov cl,12
m62:
	
	call pen3
	inc pcol
loop m62
	
		
	add pcol,8
	mov cl,12
	sub ink,5
o41:

	call pen3
	inc pcol
loop o41
	
	add pcol,8
	mov cl,12
o42:

	call pen3
	inc pcol
loop o42
	
	add pcol,8
	mov cl,11
	add ink,10
n62:

	call pen3
	inc pcol
loop n62

	add pcol,15
	mov cl,11
n63:

	call pen3
	inc pcol
loop n63

	add pcol,4
	mov cl,12
n64:
	
	call pen3
	inc pcol
loop n64


	sub ink,13
	add pcol,8
	mov cl,11
g35:

	call pen3
	inc pcol
loop g35

	add pcol,18
	mov cl,8
g36:

	call pen3
	inc pcol
loop g36

	add pcol,8
	inc ink
	mov cl, 12
i26:

	call pen3
	inc pcol
loop i26

	add pcol,8
	add ink,2
	mov cl,9
e26:

	call pen3
	inc pcol
loop e26
;---------------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m63:
	
	call pen3
	inc pcol
loop m63

	add pcol,27
	mov cl,12
m64:
	
	call pen3
	inc pcol
loop m64
	
		
	add pcol,8
	mov cl,12
	sub ink,5
o43:

	call pen3
	inc pcol
loop o43
	
	add pcol,8
	mov cl,12
o44:

	call pen3
	inc pcol
loop o44
	
	add pcol,8
	mov cl,11
	add ink,10
n64:

	call pen3
	inc pcol
loop n64

	add pcol,16
	mov cl,11
n66:

	call pen3
	inc pcol
loop n66

	add pcol,3
	mov cl,12
n67:
	
	call pen3
	inc pcol
loop n67


	sub ink,13
	add pcol,8
	mov cl,11
g36:

	call pen3
	inc pcol
loop g36

	add pcol,18
	mov cl,8
g38:

	call pen3
	inc pcol
loop g38

	add pcol,8
	inc ink
	mov cl, 12
i27:

	call pen3
	inc pcol
loop i27

	add pcol,8
	add ink,2
	mov cl,9
e27:

	call pen3
	inc pcol
loop e27
;-----------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m65:
	
	call pen3
	inc pcol
loop m65

	add pcol,27
	mov cl,12
m66:
	
	call pen3
	inc pcol
loop m66
	
		
	add pcol,8
	mov cl,12
	sub ink,5
o45:

	call pen3
	inc pcol
loop o45
	
	add pcol,8
	mov cl,12
o46:

	call pen3
	inc pcol
loop o46
	
	add pcol,8
	mov cl,11
	add ink,10
n68:

	call pen3
	inc pcol
loop n68

	add pcol,17
	mov cl,11
n69:

	call pen3
	inc pcol
loop n69

	add pcol,2
	mov cl,12
n71:
	
	call pen3
	inc pcol
loop n71


	sub ink,13
	add pcol,8
	mov cl,11
g39:

	call pen3
	inc pcol
loop g39

	add pcol,18
	mov cl,8
g40:

	call pen3
	inc pcol
loop g40

	add pcol,8
	inc ink
	mov cl, 12
i28:

	call pen3
	inc pcol
loop i28

	add pcol,8
	add ink,2
	mov cl,9
e28:

	call pen3
	inc pcol
loop e28
;---------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m65:
	
	call pen3
	inc pcol
loop m65

	add pcol,27
	mov cl,12
m66:
	
	call pen3
	inc pcol
loop m66
	
		
	add pcol,8
	mov cl,12
	sub ink,5
o45:

	call pen3
	inc pcol
loop o45
	
	add pcol,8
	mov cl,12
o46:

	call pen3
	inc pcol
loop o46
	
	add pcol,8
	mov cl,11
	add ink,10
n68:

	call pen3
	inc pcol
loop n68

	add pcol,18
	mov cl,24
n69:

	call pen3
	inc pcol
loop n69

	sub ink,13
	add pcol,8
	mov cl,11
g41:

	call pen3
	inc pcol
loop g41

	add pcol,18
	mov cl,8
g42:

	call pen3
	inc pcol
loop g42

	add pcol,8
	inc ink
	mov cl, 12
i29:

	call pen3
	inc pcol
loop i29

	add pcol,8
	add ink,2
	mov cl,9
e29:

	call pen3
	inc pcol
loop e29
;-------------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m67:
	
	call pen3
	inc pcol
loop m67

	add pcol,27
	mov cl,12
m68:
	
	call pen3
	inc pcol
loop m68
	
		
	add pcol,8
	mov cl,12
	sub ink,5
o47:

	call pen3
	inc pcol
loop o47
	
	add pcol,8
	mov cl,12
o48:

	call pen3
	inc pcol
loop o48
	
	add pcol,8
	mov cl,11
	add ink,10
n70:

	call pen3
	inc pcol
loop n70

	add pcol,19
	mov cl,23
n71:

	call pen3
	inc pcol
loop n71

	sub ink,13
	add pcol,8
	mov cl,11
g43:

	call pen3
	inc pcol
loop g43

	add pcol,18
	mov cl,8
g44:

	call pen3
	inc pcol
loop g44

	add pcol,8
	inc ink
	mov cl, 12
i30:

	call pen3
	inc pcol
loop i30

	add pcol,8
	add ink,2
	mov cl,9
e30:

	call pen3
	inc pcol
loop e30
;-------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m69:
	
	call pen3
	inc pcol
loop m69

	add pcol,27
	mov cl,12
m70:
	
	call pen3
	inc pcol
loop m70
	
		
	add pcol,8
	mov cl,12
	sub ink,5
o49:

	call pen3
	inc pcol
loop o49
	
	add pcol,8
	mov cl,12
o50:

	call pen3
	inc pcol
loop o50
	
	add pcol,8
	mov cl,11
	add ink,10
n72:

	call pen3
	inc pcol
loop n72

	add pcol,20
	mov cl,22
n73:

	call pen3
	inc pcol
loop n73

	sub ink,13
	add pcol,8
	mov cl,11
g45:

	call pen3
	inc pcol
loop g45

	add pcol,18
	mov cl,8
g46:

	call pen3
	inc pcol
loop g46

	add pcol,8
	inc ink
	mov cl, 12
i31:

	call pen3
	inc pcol
loop i31

	add pcol,8
	add ink,2
	mov cl,32
e31:

	call pen3
	inc pcol
loop e31
;-----------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m71:
	
	call pen3
	inc pcol
loop m71

	add pcol,27
	mov cl,12
m72:
	
	call pen3
	inc pcol
loop m72
			
	add pcol,8
	mov cl,12
	sub ink,5
o51:

	call pen3
	inc pcol
loop o51
	
	add pcol,8
	mov cl,12
o52:

	call pen3
	inc pcol
loop o52
	
	add pcol,8
	mov cl,11
	add ink,10
n74:

	call pen3
	inc pcol
loop n74

	add pcol,21
	mov cl,21
n75:

	call pen3
	inc pcol
loop n75

	sub ink,13
	add pcol,8
	mov cl,37
g47:

	call pen3
	inc pcol
loop g47

	add pcol,8
	inc ink
	mov cl, 12
i32:

	call pen3
	inc pcol
loop i32

	add pcol,8
	add ink,2
	mov cl,32
e32:

	call pen3
	inc pcol
loop e32
;------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m73:
	
	call pen3
	inc pcol
loop m73

	add pcol,27
	mov cl,12
m74:
	
	call pen3
	inc pcol
loop m74
			
	add pcol,8
	mov cl,32
	sub ink,5
o53:

	call pen3
	inc pcol
loop o53
	
	add pcol,8
	mov cl,11
	add ink,10
n76:

	call pen3
	inc pcol
loop n76

	add pcol,22
	mov cl,20
n77:

	call pen3
	inc pcol
loop n77

	sub ink,13
	add pcol,8
	mov cl,37
g48:

	call pen3
	inc pcol
loop g48

	add pcol,8
	inc ink
	mov cl, 12
i33:

	call pen3
	inc pcol
loop i33

	add pcol,8
	add ink,2
	mov cl,32
e33:

	call pen3
	inc pcol
loop e33
;-------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m75:
	
	call pen3
	inc pcol
loop m75

	add pcol,27
	mov cl,12
m76:
	
	call pen3
	inc pcol
loop m76
			
	add pcol,8
	mov cl,32
	sub ink,5
o54:

	call pen3
	inc pcol
loop o54
	
	add pcol,8
	mov cl,11
	add ink,10
n78:

	call pen3
	inc pcol
loop n78

	add pcol,23
	mov cl,19
n79:

	call pen3
	inc pcol
loop n79

	sub ink,13
	add pcol,8
	mov cl,37
g49:

	call pen3
	inc pcol
loop g49

	add pcol,8
	inc ink
	mov cl, 12
i34:

	call pen3
	inc pcol
loop i34

	add pcol,8
	add ink,2
	mov cl,32
e34:

	call pen3
	inc pcol
loop e34
;---------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m77:
	
	call pen3
	inc pcol
loop m77

	add pcol,27
	mov cl,12
m78:
	
	call pen3
	inc pcol
loop m78
			
	add pcol,8
	mov cl,32
	sub ink,5
o55:

	call pen3
	inc pcol
loop o55
	
	add pcol,8
	mov cl,11
	add ink,10
n80:

	call pen3
	inc pcol
loop n80

	add pcol,24
	mov cl,18
n81:

	call pen3
	inc pcol
loop n81

	sub ink,13
	add pcol,8
	mov cl,37
g50:

	call pen3
	inc pcol
loop g50

	add pcol,8
	inc ink
	mov cl, 12
i35:

	call pen3
	inc pcol
loop i35

	add pcol,8
	add ink,2
	mov cl,32
e35:

	call pen3
	inc pcol
loop e35
;---------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m79:
	
	call pen3
	inc pcol
loop m79

	add pcol,27
	mov cl,12
m80:
	
	call pen3
	inc pcol
loop m80
			
	add pcol,8
	mov cl,32
	sub ink,5
o56:

	call pen3
	inc pcol
loop o56
	
	add pcol,8
	mov cl,11
	add ink,10
n82:

	call pen3
	inc pcol
loop n82

	add pcol,25
	mov cl,17
n83:

	call pen3
	inc pcol
loop n83

	sub ink,13
	add pcol,8
	mov cl,37
g51:

	call pen3
	inc pcol
loop g51

	add pcol,8
	inc ink
	mov cl, 12
i36:

	call pen3
	inc pcol
loop i36

	add pcol,8
	add ink,2
	mov cl,32
e36:

	call pen3
	inc pcol
loop e36
;---------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m81:
	
	call pen3
	inc pcol
loop m81

	add pcol,27
	mov cl,12
m82:
	
	call pen3
	inc pcol
loop m82
			
	add pcol,9
	mov cl,30
	sub ink,5
o57:

	call pen3
	inc pcol
loop o57
	
	add pcol,9
	mov cl,11
	add ink,10
n84:

	call pen3
	inc pcol
loop n84

	add pcol,26
	mov cl,16
n85:

	call pen3
	inc pcol
loop n85

	sub ink,13
	add pcol,9
	mov cl,35
g52:

	call pen3
	inc pcol
loop g52

	add pcol,9
	inc ink
	mov cl, 12
i37:

	call pen3
	inc pcol
loop i37

	add pcol,8
	add ink,2
	mov cl,32
e37:

	call pen3
	inc pcol
loop e37
;---------------------------------

call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m83:
	
	call pen3
	inc pcol
loop m83

	add pcol,27
	mov cl,12
m84:
	
	call pen3
	inc pcol
loop m84
			
	add pcol,10
	mov cl,28
	sub ink,5
o58:

	call pen3
	inc pcol
loop o58
	
	add pcol,10
	mov cl,11
	add ink,10
n84:

	call pen3
	inc pcol
loop n84

	add pcol,27
	mov cl,15
n85:

	call pen3
	inc pcol
loop n85

	sub ink,13
	add pcol,10
	mov cl,33
g53:

	call pen3
	inc pcol
loop g53

	add pcol,10
	inc ink
	mov cl, 12
i38:

	call pen3
	inc pcol
loop i38

	add pcol,8
	add ink,2
	mov cl,32
e38:

	call pen3
	inc pcol
loop e38

;---------------------------------
call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m85:
	
	call pen3
	inc pcol
loop m85

	add pcol,27
	mov cl,12
m86:
	
	call pen3
	inc pcol
loop m86
			
	add pcol,11
	mov cl,26
	sub ink,5
o59:

	call pen3
	inc pcol
loop o59
	
	add pcol,11
	mov cl,11
	add ink,10
n86:

	call pen3
	inc pcol
loop n86

	add pcol,28
	mov cl,14
n87:

	call pen3
	inc pcol
loop n87

	sub ink,13
	add pcol,11
	mov cl,31
g54:

	call pen3
	inc pcol
loop g54

	add pcol,11
	inc ink
	mov cl, 12
i39:

	call pen3
	inc pcol
loop i39

	add pcol,8
	add ink,2
	mov cl,32
e39:

	call pen3
	inc pcol
loop e39

;---------------------------------

call delay
	inc prow
	mov bx,temp2
	mov pcol,bx
	add ink,5
	mov cl,11
m87:
	
	call pen3
	inc pcol
loop m87

	add pcol,27
	mov cl,12
m88:
	
	call pen3
	inc pcol
loop m88
			
	add pcol,12
	mov cl,24
	sub ink,5
o60:

	call pen3
	inc pcol
loop o60
	
	add pcol,12
	mov cl,11
	add ink,10
n80:

	call pen3
	inc pcol
loop n80

	add pcol,29
	mov cl,13
n81:

	call pen3
	inc pcol
loop n81

	sub ink,13
	add pcol,12
	mov cl,29
g55:

	call pen3
	inc pcol
loop g55

	add pcol,12
	inc ink
	mov cl, 12
i35:

	call pen3
	inc pcol
loop i35

	add pcol,8
	add ink,2
	mov cl,32
e40:

	call pen3
	inc pcol
loop e40

popa

ret
pen3 proc near
	pusha 
	mov ah,0ch
	mov al,ink
	mov cx,pcol
	mov dx,prow
	int 10h
	popa
	ret
pen3 endp

color_mongie endp
;----------------------------
intro_mongie proc near

pusha
	mov prow,49 
	mov prow1,51 
	mov pcol,0
	mov pcol1,0
	mov ink1,15
	
	mov cl,30
q1:
	call delay1
	call pen1
	call pen2
	inc pcol1
	inc pcol
loop q1
	
	mov cl,20
q2:
	call delay1
	call pen1
	call pen2
	dec prow
	inc prow1

loop q2
	
	mov bx,prow
	mov temp1,bx
	mov bx,pcol
	mov temp2,bx
	add temp2,2
	add temp1,2
	
	mov cl,15
q3:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
loop q3
	
	mov cl,27
	dec pcol1
q4:
	call delay1
	call pen2
	dec prow1
loop q4

	mov cl,12
q5:
	call delay1
	call pen1
	call pen2
	inc prow
	inc prow1
	inc pcol
	inc pcol1
loop q5

	mov cl,12
q6:
	call delay1
	call pen1
	call pen2
	dec prow
	dec prow1
	inc pcol
	inc pcol1
loop q6

	mov cl,27
	
q7:
	call delay1
	call pen2
	inc prow1
loop q7

	mov cl,15
q8:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
loop q8

	mov cl,20
	dec pcol
q9:
	call delay1
	call pen1
	call pen2
	dec prow1
	inc prow

loop q9
	
	mov cl,5
q10:
	call pen1
	call pen2
	inc pcol1
	inc pcol
loop q10

	mov cl,15
q11:
	call delay1
	call pen1
	call pen2
	dec prow
	inc prow1
loop q11

	mov cl,5
q12:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
	dec prow
	inc prow1
loop q12

	mov cl,25
q13:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
loop q13

	mov cl,5
q14:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
	dec prow1
	inc prow
loop q14
	mov cl,15
q15:
	call delay1
	call pen1
	call pen2
	dec prow1
	inc prow
loop q15
;------------------------------------------------------------------------
	mov bx,pcol 
	mov temp,bx
	
	sub pcol,15
	
	mov cl,9
o1:
	call delay1
	call pen1
	dec prow
loop o1

	mov cl,5
o2:
	call delay1
	call pen1
	dec pcol
loop o2

	mov cl,20
o3:
	call delay1
	call pen1
	inc prow
loop o3
	
	mov cl,5
o4:
	call delay1
	call pen1
	inc pcol
loop o4
	
	mov cl,11
o5:
	call delay1
	call pen1
	dec prow
loop o5

	mov bx,temp
	mov pcol,bx

	mov cl,5
q16:
	call delay1
	call pen1
	call pen2
	inc pcol1
	inc pcol
loop q16

	mov cl,20
q17:
	call delay1
	call pen1
	call pen2
	dec prow
	inc prow1

loop q17

	mov cl,15
q18:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
loop q18

	mov cl,27
	dec pcol1
q19:
	call delay1
	call pen2
	dec prow1
loop q19

	mov cl,27
q20:
	call delay1
	call pen1
	call pen2
	inc prow
	inc prow1
	inc pcol
	inc pcol1
loop q20

	mov cl,27
	dec pcol
	
q21:
	call delay1
	call pen1
	dec prow
loop q21
	
	
	mov cl,15
q22:
	
	call delay1
	call pen2
	call pen1
	inc pcol1
	inc pcol
loop q22

	mov cl,20
q23:
	call delay1
	call pen1
	call pen2
	dec prow1
	inc prow

loop q23

	mov cl,5
q24:
	call delay1
	call pen1
	call pen2
	inc pcol1
	inc pcol
loop q24

	mov cl,15
q25:
	call delay1
	call pen1
	call pen2
	dec prow
	inc prow1
loop q25

	mov cl,5
q26:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
	dec prow
	inc prow1
loop q26

	mov cl,30
q27:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
loop q27

	mov cl,5
q28:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
	dec prow1
loop q28

	mov cl,15
q29:
	call delay1
	call pen2
	dec prow1
loop q29

	mov cl,13
q30:
	call delay1
	call pen1
	inc prow
loop q30

	mov cl,26
q31:
	call delay1
	call pen1
	dec pcol
loop q31

	mov cl,17
q32:
	call delay1
	call pen1
	inc prow
loop q32

	mov cl,15
q33:
	call delay1
	call pen1
	inc pcol
loop q33

	call pen1
	dec prow
	call pen1
	dec prow
	call pen1
	dec prow
	
	mov cl,12
q34:
	call delay1
	call pen1
	dec pcol
loop q34

	mov cl,11
q35:
	call delay1
	call pen1
	dec prow
loop q35

	mov cl,24
q36:
	call delay1
	call pen1
	inc pcol
loop q36
	
	dec pcol
	
	mov cl,4
q37:
	call delay1
	call pen1
	inc prow
loop q37

	mov cl,5
q38:
	call delay1
	call pen1
	call pen2
	inc pcol1
	inc pcol
loop q38
	
	mov cl,20
q39:
	call delay1
	call pen1
	call pen2
	inc prow1
	dec prow
loop q39

	mov cl,15
q40:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
loop q40

	mov cl,20
q41:
	call delay1
	call pen1
	call pen2
	inc prow
	dec prow1
loop q41

	mov cl,5
q42:
	call delay1
	call pen1
	call pen2
	inc pcol1
	inc pcol
loop q42

	mov cl,20
q43:
	call delay1
	call pen1
	call pen2
	inc prow1
	dec prow
loop q43

	mov cl,35
q44:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
loop q44

	mov cl,13
q45:
	call delay1
	call pen1
	call pen2
	inc prow
	dec prow1
loop q45

	mov cl,23
q46:
	call delay1
	call pen1
	call pen2
	dec pcol
	dec pcol1
loop q46
	
	mov cl,3
q47:
	call delay1
	call pen1
	call pen2
	inc prow
	dec prow1
loop q47

	mov cl,20
q48:
	call delay1
	call pen1
	call pen2
	inc pcol
	inc pcol1
loop q48

	mov cl,4
q49:
	call delay1
	call pen1
	call pen2
	inc prow
	dec prow1
loop q49

	mov cl,34
q50:
	call delay1
	call pen1
	call pen2
	inc pcol1
	inc pcol
loop q50
	
popa
ret
pen1 proc near
	pusha 
	mov ah,0ch
	mov al,ink1
	mov cx,pcol
	mov dx,prow
	int 10h
	popa
	ret
pen1 endp

pen2 proc near
	pusha 
	mov ah,0ch
	mov al,ink1
	mov cx,pcol1
	mov dx,prow1
	int 10h
	popa
	ret
pen2 endp

intro_mongie endp

delay proc near
        pusha
 
  mov cx,09991h
    del:nop
        nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
        loop del
	
        popa
        ret
delay endp

delay1 proc near
        pusha
 
  mov cx,1991h
    del1:

		nop
        nop
		nop
		nop
		nop
		loop del1
	
        popa
        ret
delay1 endp


video_mode proc near
	pusha
	mov ah,0
	mov al,13h
	int 10h
	popa
	ret
video_mode endp

text_mode proc near
	pusha
		mov al,03h
		mov ah,0
		int 10h
	popa
	ret
text_mode endp

hide_cursor proc near
pusha
	mov ch,32
	mov ah,1
	int 10h
popa
	ret
hide_cursor endp

display_cursor proc near
pusha
	mov ah,01h
	mov ch,6
	mov cl,7
	int 10h
popa
	ret
display_cursor endp

clrscr proc near
pusha
	mov ax,0600h
	mov bh,00h
	mov cx,pt1
	mov dx,pt2
	int 10h
popa
	ret
clrscr endp

clrscr_video proc near
pusha
	mov ax,0600h
	mov bh,00h
	mov cx,40
	mov dx,25
	int 10h
popa
	ret
clrscr_video endp

set_cursor proc near
pusha
	mov ah,02h
	mov bh,0h
	mov dh,col
	mov dl,row
	int 10h
popa
	ret
set_cursor endp
;---------------------------------------

game proc near
	pusha
	mov t_pcol,90
	mov t_prow,85
	
	
	mov cl,44
	g_over1_intro:
		pusha
		mov cl,10
		over_g1_intro:
			call t_pen1
			inc t_prow
		loop over_g1_intro
		popa
		sub t_prow,10
		dec t_pcol
		
	loop g_over1_intro
	
	mov cl,26
	g_over2_intro:
		pusha
		mov cl,10
		over_g2_intro:
			call t_pen1
			inc t_pcol
		loop over_g2_intro
		popa
		sub t_pcol,10
		inc t_prow
		
	loop g_over2_intro
	
	mov cl,45
	g_over3_intro:
		pusha
		mov cl,10
		over_g3_intro:
			call t_pen1
			inc t_prow
		loop over_g3_intro
		popa
		sub t_prow,10
		inc t_pcol
		
	loop g_over3_intro
	
	
	sub t_pcol,10
	
	mov cl,14
	g_over4_intro:
		pusha
		mov cl,10
		over_g4_intro:
			call t_pen1
			inc t_pcol
		loop over_g4_intro
		popa
		sub t_pcol,10
		dec t_prow
		
	loop g_over4_intro
	inc t_prow
	mov cl,23
	g_over5_intro:
		pusha
		mov cl,10
		over_g5_intro:
			call t_pen1
			inc t_prow
		loop over_g5_intro
		popa
		sub t_prow,10
		dec t_pcol
		
	loop g_over5_intro
	
	mov t_pcol,150
	mov t_prow,120
	
	mov cl,36
	a_over1_intro:
		pusha
		mov cl,10
		over_a1_intro:
			call t_pen1
			dec t_pcol
		loop over_a1_intro
		popa
		add t_pcol,10
		dec t_prow
		
	loop a_over1_intro
	
	inc t_prow
	
	mov cl,44
	a_over2_intro:
		pusha
		mov cl,10
		over_a2_intro:
			call t_pen1
			inc t_prow
		loop over_a2_intro
		popa
		sub t_prow,10
		dec t_pcol
		
	loop a_over2_intro
	
	mov cl,36
	a_over3_intro:
		pusha
		mov cl,10
		over_a3_intro:
			call t_pen1
			inc t_pcol
		loop over_a3_intro
		popa
		sub t_pcol,10
		inc t_prow
		
	loop a_over3_intro
	
	sub t_prow,23
	
	mov cl,44
	a_over4_intro:
		pusha
		mov cl,10
		over_a4_intro:
			call t_pen1
			inc t_prow
		loop over_a4_intro
		popa
		sub t_prow,10
		inc t_pcol
		
	loop a_over4_intro
	
	mov t_pcol,170
	mov t_prow,120
	
	mov cl,36
	m_over1_intro:
		pusha
		mov cl,10
		over_m1_intro:
			call t_pen1
			inc t_pcol
		loop over_m1_intro
		popa
		sub t_pcol,10
		dec t_prow
		
	loop m_over1_intro
	
	inc t_prow
	
	mov cl,18
	m_over2_intro:
		pusha
		mov cl,13
		over_m2_intro:
			call t_pen1
			inc t_pcol
		loop over_m2_intro
		popa
		sub t_pcol,12
		inc t_prow
		
	loop m_over2_intro
	
	
	
	mov cl,18
	m_over3_intro:
		pusha
		mov cl,12
		over_m3_intro:
			call t_pen1
			inc t_pcol
		loop over_m3_intro
		popa
		sub t_pcol,12
		inc t_prow
		
	loop m_over3_intro
	
	sub t_prow,19
	
	mov cl,18
	m_over4_intro:
		pusha
		mov cl,13
		over_m4_intro:
			call t_pen1
			inc t_pcol
		loop over_m4_intro
		popa
		sub t_pcol,12
		dec t_prow
		
	loop m_over4_intro
	
	add t_pcol,11
	inc t_prow
	
	mov cl,36
	m_over5_intro:
		pusha
		mov cl,10
		over_m5_intro:
			call t_pen1
			dec t_pcol
		loop over_m5_intro
		popa
		add t_pcol,10
		inc t_prow
		
	loop m_over5_intro
	
	dec t_prow
	
	add t_pcol,15

	mov t_prow,120
	
	mov cl,36
	e_over1_intro:
		pusha
		mov cl,10
		over_o1_intro:
			call t_pen1
			inc t_pcol
		loop over_o1_intro
		popa
		sub t_pcol,10
		dec t_prow
		
	loop e_over1_intro
	
	mov cl,44
	e_over2_intro:
		pusha
		mov cl,10
		over_e2_intro:
			call t_pen1
			inc t_prow
		loop over_e2_intro
		popa
		sub t_prow,10
		inc t_pcol
		
	loop e_over2_intro
	
	sub t_pcol,44
	add t_prow,27
	
	mov cl,44
	e_over3_intro:
		pusha
		mov cl,10
		over_e3_intro:
			call t_pen1
			inc t_prow
		loop over_e3_intro
		popa
		sub t_prow,10
		inc t_pcol
		
	loop e_over3_intro
	
	sub t_pcol,44
	sub t_prow,14
	
	
	mov cl,38
	e_over5_intro:
		pusha
		mov cl,10
		over_e5_intro:
			call t_pen1
			inc t_prow
		loop over_e5_intro
		popa
		sub t_prow,10
		inc t_pcol
		
	loop e_over5_intro
		
        popa
	ret
game endp
;-------------------------------TXT GAMBLE GAME----------------------------------------------





main_text proc near
	call clrscr
	call video_mode
	call hide_cursor
	add t_ink,11
	call text_lodscrn
	call pencil
	call reset_txt
	call txt_select
	call txt_choice
	
	int 20h
main_txt endp

reset_txt proc near
pusha
mov extra_counter,'0'

mov tscore_0,'0'
mov tscore_00,'0'
mov tscore_000,'0'
mov tscore_0000,'0'
popa
ret
reset_txt endp

txt_flags proc near
pusha

mov flag1,0
mov flag2,0
mov flag3,0
mov flag4,0
mov flag5,0
mov flag6,0
mov flag7,0
mov flag8,0
mov flag9,0
mov flag10,0
mov exflag1,0
mov exflag2,0
mov exflag3,0
mov exflag4,0
popa
ret
txt_flags endp

extra_word_disp proc near
pusha
	mov col,23
	mov row,18
	call set_cursor
	
	mov ah,09h
	lea dx,bonus_word
	int 21h
	
	add row,12
	
	mov ah,02
	mov dl,extra_counter
	int 21h
	
popa
ret
extra_word_disp endp

txt_choice proc near
pusha
	cmp txt_post,1
	if e call play_txt
	cmp txt_post,2
	if e jmp main_jump
	 ;balik sa main menu MONGIE
popa
ret
txt_choice endp

play_txt proc near
pusha
call clrscr
;--------------INSTRUCTIONS-------
txt_lvls:
	cmp txt_lvl_counter,49
	if e jmp lvl1
	cmp txt_lvl_counter,50
	if e jmp lvl2
	cmp txt_lvl_counter,51
	if e jmp lvl3
	cmp txt_lvl_counter,52
	if e jmp lvl4
	cmp txt_lvl_counter,53
	if e jmp lvl5
int 20h
popa
ret
lvl1:
	call clrscr
	mov col,10
	mov row,15
	call set_cursor
	
	mov ah,09h
	lea dx,nxt_word
	int 21h
	
	add row,7
	call set_cursor
	
	mov ah,02h
	mov dl,txt_lvl_counter
	int 21h
	call loader
	call delay_slow
	call word_lvl1
	
	
jmp txt_lvls	

lvl2:
	call clrscr
	;----WINNER-----
	mov col,10
	mov row,15
	call set_cursor
	
	mov ah,09h
	lea dx,nxt_word
	int 21h
	
	add row,7
	call set_cursor
	
	mov ah,02h
	mov dl,txt_lvl_counter
	int 21h
	call loader
	call delay_slow
	call word_lvl2
	
	
jmp txt_lvls

lvl3:	
	call clrscr
	;----WINNER-----
	mov col,10
	mov row,15
	call set_cursor
	
	mov ah,09h
	lea dx,nxt_word
	int 21h
	
	add row,7
	call set_cursor
	
	mov ah,02h
	mov dl,txt_lvl_counter
	int 21h
	
	call loader
	call delay_slow
	call word_lvl3
	
	
jmp txt_lvls

lvl4:	
	call clrscr
	;----WINNER-----
	mov col,10
	mov row,15
	call set_cursor
	
	mov ah,09h
	lea dx,nxt_word
	int 21h
	
	add row,7
	call set_cursor
	
	mov ah,02h
	mov dl,txt_lvl_counter
	int 21h
	call loader
	call delay_slow
	call word_lvl4
	
	
jmp txt_lvls

lvl5:	
	call clrscr
	;----WINNER-----
	mov col,10
	mov row,15
	call set_cursor
	
	mov ah,09h
	lea dx,nxt_word
	int 21h
	
	add row,7
	call set_cursor
	
	mov ah,02h
	mov dl,txt_lvl_counter
	int 21h
	call loader
	call delay_slow
	call word_lvl5
	;finish_txt
	
jmp txt_lvls
play_txt endp

word_lvl5 proc near
pusha
	call clrscr
	
	mov temp_tpcol,0
	mov temp_tprow,0
	mov extra_counter,52
	mov word_counter,0
	call txt_boarder
	call space_shuffle
	
	call pencil_timer
	mov col,15
	mov row,10
	call set_cursor
	
	mov ah,09h
	lea dx,wrd5shuf0
	int 21h
	;--------------------------------------------
	call txt_flags
load_t5:
	pusha
	lea di,cmp_ward
	mov al,'$'
	mov cl,10
	cld
	rep stosb
	popa
	
	call disp_txtscore
	call extra_word_disp
	mov col,21
	mov row,10
	call set_cursor
	
	mov ah,09h
	lea dx,ward
	int 21h
	
	call boarder_wrdlvl5
	lea di,cmp_ward
	cld
	mov char_count,0
	mov col,21
	mov row,10
	call set_cursor
	call run_timer
	mov p_dec,1
	
get_char5:
	
	cmp temp_tprow,190
	ja quit_wrd5
	
	cmp word_counter,10
	if e jmp proceed5
	
	mov ah,00h
	int 16h
	
	
	mov tmp_char,al
	cmp al,0dh		;enter
	if e jmp compare_txt5
	cmp al,1bh		;ESC
	if e jmp quit_wrd5
	cmp al,20h		;space
	if e jmp shuffle5	;shuffle
	cmp al,08h
	if e jmp load_t5
	
	
	cmp char_count,5
	if e jmp compare_txt5
	
	mov al,tmp_char
	call set_cursor
	mov ah,02h
	mov dl,al
	int 21h
	add row,2
	
	stosb
	inc char_count
	
jmp get_char5

quit_wrd5:
call clrscr
call tgame_over
int 20h

proceed5:
	inc txt_lvl_counter
	call play_txt

compare_txt5:

	cmp char_count,1
	if e jmp woords1_lvl5
	cmp char_count,2
	if e jmp woords2_lvl5
	cmp char_count,3
	if e jmp woords3_lvl5
	cmp char_count,4
	if e jmp woords4_lvl5
	cmp char_count,5
	if e jmp woords5_lvl5
	cmp char_count,0
	if e jmp load_t5
	
woords1_lvl5:
	mov p_dec,2
jmp load_t5	
woords2_lvl5:
	mov p_dec,4
jmp load_t5

woords5_lvl5:
		
		lea si,cmp_ward
		lea di,word5comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w5_lvl5
		
;------------------------------------------
			
		lea si,cmp_ward
		lea di,word6comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w6_lvl5
		
	mov p_dec,10
jmp load_t5	
woords4_lvl5:
;------------------------------
		
		
		lea si,cmp_ward
		lea di,word4comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w4_lvl5
		
;---------------------------------
		
		
		lea si,cmp_ward
		lea di,word2comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w2_lvl5
		
;----------------------------------
		
		
		lea si,cmp_ward
		lea di,word3comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w3_lvl5
		
;-----------------------------------
		lea si,cmp_ward
		lea di,extra1comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp extra1_lvl5
		
;----------------------------------------------------
		
		lea si,cmp_ward
		lea di,extra2comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp extra2_lvl5
		
;----------------------------------------------------
		
		lea si,cmp_ward
		lea di,extra3comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp extra3_lvl5		
;----------------------------------------------------
		
		lea si,cmp_ward
		lea di,extra4comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp extra4_lvl5
		
;----------------------------------------------------		

		
		
		
		mov p_dec,8
jmp load_t5
woords3_lvl5:

		lea si,cmp_ward
		lea di,word1comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w1_lvl5
		
;-------------------------------------------
		lea si,cmp_ward
		lea di,word10comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w10_lvl5
		

;----------------------------------------
		
		lea si,cmp_ward
		lea di,word7comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w7_lvl5
		
;-----------------------------------------
		
		lea si,cmp_ward
		lea di,word8comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w8_lvl5
		
;------------------------------------------------
		
		lea si,cmp_ward
		lea di,word9comp5
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w9_lvl5
		
;----------------------------------------------------
		
		
		
	mov p_dec,6
jmp load_t5	
;------------------------------------------------------		
pusha
extra1_lvl5:
	cmp exflag1,1
	if e jmp load_t5
	
	dec extra_counter
	mov exflag1,1
jmp score_lvl5

extra2_lvl5:
	cmp exflag2,1
	if e jmp load_t5
	
	dec extra_counter
	mov exflag2,1
jmp score_lvl5

extra3_lvl5:
	cmp exflag3,1
	if e jmp load_t5
	
	dec extra_counter
	mov exflag3,1
jmp score_lvl5

extra4_lvl5:
	cmp exflag4,1
	if e jmp load_t5
	
	dec extra_counter
	mov exflag4,1
jmp score_lvl5

w1_lvl5:	
	cmp flag1,1
	if e jmp load_t5
	
	mov row,3
	mov col,2
	call set_cursor
	mov ah,09h
	lea dx,word1_lvl5
	int 21h
	inc word_counter
	mov flag1,1
jmp score_lvl5	

w2_lvl5:
	cmp flag2,1
	if e jmp load_t5
	
	mov col,4
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word2_lvl5
	int 21h
	inc word_counter
	mov flag2,1
jmp score_lvl5

w3_lvl5:	
	cmp flag3,1
	if e jmp load_t5

	mov col,6
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word3_lvl5
	int 21h
	inc word_counter
	mov flag3,1
jmp score_lvl5	
w4_lvl5:	
	cmp flag4,1
	if e jmp load_t5
	
	mov col,8
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word4_lvl5
	int 21h
	inc word_counter
	mov flag4,1
	
jmp score_lvl5		
w5_lvl5:	
	cmp flag5,1
	if e jmp load_t5
	
	mov col,10
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word5_lvl5
	int 21h
	inc word_counter
	mov flag5,1
	
jmp score_lvl5

w6_lvl5:	
	cmp flag6,1
	if e jmp load_t5
	
	mov row,15
	mov col,2
	call set_cursor
	mov ah,09h
	lea dx,word6_lvl5
	int 21h
	inc word_counter
	mov flag6,1
	
jmp score_lvl5	
w7_lvl5:	
	cmp flag7,1
	if e jmp load_t5
	
	mov row,15
	mov col,4
	call set_cursor
	mov ah,09h
	lea dx,word7_lvl5
	int 21h
	inc word_counter
	mov flag7,1
	
jmp score_lvl5	
w8_lvl5:	
	cmp flag8,1
	if e jmp load_t5
	
	mov row,15
	mov col,6
	call set_cursor
	mov ah,09h
	lea dx,word8_lvl5
	int 21h
	inc word_counter
	mov flag8,1
	
jmp score_lvl5		
w9_lvl5:	
	cmp flag9,1
	if e jmp load_t5
	
	mov row,15
	mov col,8
	call set_cursor
	mov ah,09h
	lea dx,word9_lvl5
	int 21h
	inc word_counter
	mov flag9,1
	
jmp score_lvl5		
w10_lvl5:	
	cmp flag10,1
	if e jmp load_t5
	
	mov row,15
	mov col,10
	call set_cursor
	mov ah,09h
	lea dx,word10_lvl5
	int 21h
	inc word_counter
	mov flag10,1
	 
jmp score_lvl5
	;--------------------------------------------
score_lvl5:
	call scoretxt_count
jmp load_t5
shuffle5:
	call random_word
	call clor_spc_shuffler
	call delay_slow
	call space_shuffle
	mov col,15
	mov row,10
	call set_cursor
	cmp shuff_num,'0'
	if e jmp w5shuff0
	cmp shuff_num,'1'
	if e jmp w5shuff1
	cmp shuff_num,'2'
	if e jmp w5shuff2
	cmp shuff_num,'3'
	if e jmp w5shuff3
	cmp shuff_num,'4'
	if e jmp w5shuff4
	cmp shuff_num,'5'
	if e jmp w5shuff5
	cmp shuff_num,'6'
	if e jmp w5shuff6
	cmp shuff_num,'7'
	if e jmp w5shuff7
	cmp shuff_num,'8'
	if e jmp w5shuff8
	cmp shuff_num,'9'
	if e jmp w5shuff9
;---------------------------------------------
w5shuff0:
	mov ah,09h
	lea dx,wrd5shuf0
	int 21h
	
	
jmp load_t5
w5shuff1:
	mov ah,09h
	lea dx,wrd5shuf1
	int 21h
	
	
jmp load_t5
w5shuff2:
	mov ah,09h
	lea dx,wrd5shuf2
	int 21h
	
	
jmp load_t5
w5shuff3:
	mov ah,09h
	lea dx,wrd5shuf3
	int 21h
	
	
jmp load_t5
w5shuff4:
	mov ah,09h
	lea dx,wrd5shuf4
	int 21h
	

jmp load_t5
w5shuff5:
	mov ah,09h
	lea dx,wrd5shuf5
	int 21h
	
	
jmp load_t5
w5shuff6:
	mov ah,09h
	lea dx,wrd5shuf6
	int 21h
	
	
jmp load_t5
w5shuff7:
	mov ah,09h
	lea dx,wrd5shuf7
	int 21h
	
	
jmp load_t5
w5shuff8:
	mov ah,09h
	lea dx,wrd5shuf8
	int 21h
	
	
jmp load_t5
w5shuff9:
	mov ah,09h
	lea dx,wrd5shuf9
	int 21h
	
jmp load_t5



word_lvl5 endp

word_lvl4 proc near
pusha
	call clrscr
	
	mov temp_tpcol,0
	mov temp_tprow,0
	mov extra_counter,52
	mov word_counter,0
	call txt_boarder
	call space_shuffle
	
	call pencil_timer
	mov col,15
	mov row,10
	call set_cursor
	
	mov ah,09h
	lea dx,wrd4shuf0
	int 21h
	;--------------------------------------------
	call txt_flags
load_t4:
	pusha
	lea di,cmp_ward
	mov al,'$'
	mov cl,10
	cld
	rep stosb
	popa
	
	call disp_txtscore
	call extra_word_disp
	mov col,21
	mov row,10
	call set_cursor
	
	mov ah,09h
	lea dx,ward
	int 21h
	
	call boarder_wrdlvl4
	lea di,cmp_ward
	cld
	mov char_count,0
	mov col,21
	mov row,10
	call set_cursor
	call run_timer
	mov p_dec,1
	
get_char4:
	
	cmp temp_tprow,190
	ja quit_wrd4
	
	cmp word_counter,10
	if e jmp proceed4
	
	mov ah,00h
	int 16h
	
	
	mov tmp_char,al
	cmp al,0dh		;enter
	if e jmp compare_txt4
	cmp al,1bh		;ESC
	if e jmp quit_wrd4
	cmp al,20h		;space
	if e jmp shuffle4	;shuffle
	cmp al,08h
	if e jmp load_t4
	
	
	cmp char_count,5
	if e jmp compare_txt4
	
	mov al,tmp_char
	call set_cursor
	mov ah,02h
	mov dl,al
	int 21h
	add row,2
	
	stosb
	inc char_count
	
jmp get_char4

quit_wrd4:
call clrscr
call tgame_over
int 20h

proceed4:
	inc txt_lvl_counter
	call delay_slow
	call play_txt

compare_txt4:

	cmp char_count,1
	if e jmp woords1_lvl4
	cmp char_count,2
	if e jmp woords2_lvl4
	cmp char_count,3
	if e jmp woords3_lvl4
	cmp char_count,4
	if e jmp woords4_lvl4
	cmp char_count,5
	if e jmp woords5_lvl4
	cmp char_count,0
	if e jmp load_t4
	
woords1_lvl4:
	mov p_dec,2
jmp load_t4	
woords2_lvl4:
	mov p_dec,4
jmp load_t4

woords5_lvl4:
		
			
		lea si,cmp_ward
		lea di,word6comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w6_lvl4
		
	mov p_dec,10
jmp load_t4	
woords4_lvl4:
;------------------------------
		
		
		lea si,cmp_ward
		lea di,word4comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w4_lvl4
		
;---------------------------------
		
		
		lea si,cmp_ward
		lea di,word2comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w2_lvl4
		
;----------------------------------
		
		
		lea si,cmp_ward
		lea di,word3comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w3_lvl4
		
;-----------------------------------
		
		lea si,cmp_ward
		lea di,word5comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w5_lvl4
		
;------------------------------------------

		lea si,cmp_ward
		lea di,extra4comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp extra4_lvl4
		
		
		
		mov p_dec,8
jmp load_t4
woords3_lvl4:

		lea si,cmp_ward
		lea di,word1comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w1_lvl4
		
;-------------------------------------------
		lea si,cmp_ward
		lea di,word10comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w10_lvl4
		

;----------------------------------------
		
		lea si,cmp_ward
		lea di,word7comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w7_lvl4
		
;-----------------------------------------
		
		lea si,cmp_ward
		lea di,word8comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w8_lvl4
		
;------------------------------------------------
		
		lea si,cmp_ward
		lea di,word9comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w9_lvl4
		
;----------------------------------------------------
		
		lea si,cmp_ward
		lea di,extra1comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp extra1_lvl4
		
;----------------------------------------------------
		
		lea si,cmp_ward
		lea di,extra2comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp extra2_lvl4
		
;----------------------------------------------------
		
		lea si,cmp_ward
		lea di,extra3comp4
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp extra3_lvl4
		
	mov p_dec,6
jmp load_t3	
;------------------------------------------------------		
pusha
extra1_lvl4:
	cmp exflag1,1
	if e jmp load_t4
	
	dec extra_counter
	mov exflag1,1
jmp score_lvl4

extra2_lvl4:
	cmp exflag2,1
	if e jmp load_t4
	
	dec extra_counter
	mov exflag2,1
jmp score_lvl4

extra3_lvl4:
	cmp exflag3,1
	if e jmp load_t4
	
	dec extra_counter
	mov exflag3,1
jmp score_lvl4

extra4_lvl4:
	cmp exflag4,1
	if e jmp load_t4
	
	dec extra_counter
	mov exflag4,1
jmp score_lvl4

w1_lvl4:	
	cmp flag1,1
	if e jmp load_t4
	
	mov row,3
	mov col,2
	call set_cursor
	mov ah,09h
	lea dx,word1_lvl4
	int 21h
	inc word_counter
	mov flag1,1
jmp score_lvl4	

w2_lvl4:
	cmp flag2,1
	if e jmp load_t4
	
	mov col,4
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word2_lvl4
	int 21h
	inc word_counter
	mov flag2,1
jmp score_lvl4

w3_lvl4:	
	cmp flag3,1
	if e jmp load_t4

	mov col,6
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word3_lvl4
	int 21h
	inc word_counter
	mov flag3,1
jmp score_lvl4	
w4_lvl4:	
	cmp flag4,1
	if e jmp load_t4
	
	mov col,8
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word4_lvl4
	int 21h
	inc word_counter
	mov flag4,1
	
jmp score_lvl4		
w5_lvl4:	
	cmp flag5,1
	if e jmp load_t4
	
	mov col,10
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word5_lvl4
	int 21h
	inc word_counter
	mov flag5,1
	
jmp score_lvl4

w6_lvl4:	
	cmp flag6,1
	if e jmp load_t4
	
	mov row,15
	mov col,2
	call set_cursor
	mov ah,09h
	lea dx,word6_lvl4
	int 21h
	inc word_counter
	mov flag6,1
	
jmp score_lvl4	
w7_lvl4:	
	cmp flag7,1
	if e jmp load_t4
	
	mov row,15
	mov col,4
	call set_cursor
	mov ah,09h
	lea dx,word7_lvl4
	int 21h
	inc word_counter
	mov flag7,1
	
jmp score_lvl4	
w8_lvl4:	
	cmp flag8,1
	if e jmp load_t4
	
	mov row,15
	mov col,6
	call set_cursor
	mov ah,09h
	lea dx,word8_lvl4
	int 21h
	inc word_counter
	mov flag8,1
	
jmp score_lvl4		
w9_lvl4:	
	cmp flag9,1
	if e jmp load_t4
	
	mov row,15
	mov col,8
	call set_cursor
	mov ah,09h
	lea dx,word9_lvl4
	int 21h
	inc word_counter
	mov flag9,1
	
jmp score_lvl4		
w10_lvl4:	
	cmp flag10,1
	if e jmp load_t4
	
	mov row,15
	mov col,10
	call set_cursor
	mov ah,09h
	lea dx,word10_lvl4
	int 21h
	inc word_counter
	mov flag10,1
	 
jmp score_lvl4
	;--------------------------------------------
score_lvl4:
	call scoretxt_count
jmp load_t4
shuffle4:
	call random_word
	call clor_spc_shuffler
	call delay_slow
	call space_shuffle
	mov col,15
	mov row,10
	call set_cursor
	cmp shuff_num,'0'
	if e jmp w4shuff0
	cmp shuff_num,'1'
	if e jmp w4shuff1
	cmp shuff_num,'2'
	if e jmp w4shuff2
	cmp shuff_num,'3'
	if e jmp w4shuff3
	cmp shuff_num,'4'
	if e jmp w4shuff4
	cmp shuff_num,'5'
	if e jmp w4shuff5
	cmp shuff_num,'6'
	if e jmp w4shuff6
	cmp shuff_num,'7'
	if e jmp w4shuff7
	cmp shuff_num,'8'
	if e jmp w4shuff8
	cmp shuff_num,'9'
	if e jmp w4shuff9
;---------------------------------------------
w4shuff0:
	mov ah,09h
	lea dx,wrd4shuf0
	int 21h
	
	
jmp load_t4
w4shuff1:
	mov ah,09h
	lea dx,wrd4shuf1
	int 21h
	
	
jmp load_t4
w4shuff2:
	mov ah,09h
	lea dx,wrd4shuf2
	int 21h
	
	
jmp load_t4
w4shuff3:
	mov ah,09h
	lea dx,wrd4shuf3
	int 21h
	
	
jmp load_t4
w4shuff4:
	mov ah,09h
	lea dx,wrd4shuf4
	int 21h
	

jmp load_t4
w4shuff5:
	mov ah,09h
	lea dx,wrd4shuf5
	int 21h
	
	
jmp load_t4
w4shuff6:
	mov ah,09h
	lea dx,wrd4shuf6
	int 21h
	
	
jmp load_t4
w4shuff7:
	mov ah,09h
	lea dx,wrd4shuf7
	int 21h
	
	
jmp load_t4
w4shuff8:
	mov ah,09h
	lea dx,wrd4shuf8
	int 21h
	
	
jmp load_t4
w4shuff9:
	mov ah,09h
	lea dx,wrd4shuf9
	int 21h
	
jmp load_t4



word_lvl4 endp

word_lvl3 proc near
pusha
	call clrscr
	
	mov temp_tpcol,0
	mov temp_tprow,0
	mov extra_counter,50
	mov word_counter,0
	call txt_boarder
	call space_shuffle
	
	call pencil_timer
	mov col,15
	mov row,10
	call set_cursor
	
	mov ah,09h
	lea dx,wrd3shuf0
	int 21h
	;--------------------------------------------
	call txt_flags
load_t3:
	pusha
	lea di,cmp_ward
	mov al,'$'
	mov cl,10
	cld
	rep stosb
	popa
	
	call disp_txtscore
	call extra_word_disp
	mov col,21
	mov row,10
	call set_cursor
	
	mov ah,09h
	lea dx,ward
	int 21h
	
	call boarder_wrdlvl3
	lea di,cmp_ward
	cld
	mov char_count,0
	mov col,21
	mov row,10
	call set_cursor
	call run_timer
	mov p_dec,1
	
get_char3:
	
	cmp temp_tprow,190
	ja quit_wrd3
	
	cmp word_counter,10
	if e jmp proceed3
	
	mov ah,00h
	int 16h
	
	
	mov tmp_char,al
	cmp al,0dh		;enter
	if e jmp compare_txt3
	cmp al,1bh		;ESC
	if e jmp quit_wrd3
	cmp al,20h		;space
	if e jmp shuffle3	;shuffle
	cmp al,08h
	if e jmp load_t3
	
	
	cmp char_count,5
	if e jmp compare_txt3
	
	mov al,tmp_char
	call set_cursor
	mov ah,02h
	mov dl,al
	int 21h
	add row,2
	
	stosb
	inc char_count
	
jmp get_char3

quit_wrd3:
call clrscr
call tgame_over
int 20h

proceed3:
	inc txt_lvl_counter
	call delay_slow
	call play_txt

compare_txt3:

	cmp char_count,1
	if e jmp woords1_lvl3
	cmp char_count,2
	if e jmp woords2_lvl3
	cmp char_count,3
	if e jmp woords3_lvl3
	cmp char_count,4
	if e jmp woords4_lvl3
	cmp char_count,5
	if e jmp woords5_lvl3
	cmp char_count,0
	if e jmp load_t3
	
woords1_lvl3:
	mov p_dec,2
jmp load_t3	
woords2_lvl3:
	mov p_dec,4
jmp load_t3

woords5_lvl3:
		
			
		lea si,cmp_ward
		lea di,word3comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w3_lvl3
		
	mov p_dec,10
jmp load_t3	
woords4_lvl3:
;------------------------------
		
		
		lea si,cmp_ward
		lea di,word1comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w1_lvl3
		
;---------------------------------
		
		
		lea si,cmp_ward
		lea di,word2comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w2_lvl3
		
;----------------------------------
		
		
		lea si,cmp_ward
		lea di,word7comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w7_lvl3
		
;-----------------------------------
		
		lea si,cmp_ward
		lea di,word8comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w8_lvl3
		
;------------------------------------------

		
		lea si,cmp_ward
		lea di,word9comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w9_lvl3
		
;-------------------------------------------
		lea si,cmp_ward
		lea di,word10comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w10_lvl3
		
;-------------------------------------------
		
		mov p_dec,8
jmp load_t3
woords3_lvl3:
;----------------------------------------
		
		lea si,cmp_ward
		lea di,word4comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w4_lvl3
		
;-----------------------------------------
		
		lea si,cmp_ward
		lea di,word5comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w5_lvl3
		
;------------------------------------------------
		
		lea si,cmp_ward
		lea di,word6comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w6_lvl3
		
;----------------------------------------------------
		
		lea si,cmp_ward
		lea di,extra1comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp extra1_lvl3
		
;----------------------------------------------------
		
		lea si,cmp_ward
		lea di,extra2comp3
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp extra2_lvl3
		
	mov p_dec,6
jmp load_t3	
;------------------------------------------------------		
pusha
extra1_lvl3:
	cmp exflag1,1
	if e jmp load_t3
	
	dec extra_counter
	mov exflag1,1
jmp score_lvl3

extra2_lvl3:
	cmp exflag2,1
	if e jmp load_t3
	
	dec extra_counter
	mov exflag2,1
jmp score_lvl3

w1_lvl3:	
	cmp flag1,1
	if e jmp load_t3
	
	mov row,3
	mov col,2
	call set_cursor
	mov ah,09h
	lea dx,word1_lvl3
	int 21h
	inc word_counter
	mov flag1,1
jmp score_lvl3	

w2_lvl3:
	cmp flag2,1
	if e jmp load_t3
	
	mov col,4
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word2_lvl3
	int 21h
	inc word_counter
	mov flag2,1
jmp score_lvl3

w3_lvl3:	
	cmp flag3,1
	if e jmp load_t3

	mov col,6
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word3_lvl3
	int 21h
	inc word_counter
	mov flag3,1
jmp score_lvl3	
w4_lvl3:	
	cmp flag4,1
	if e jmp load_t3
	
	mov col,8
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word4_lvl3
	int 21h
	inc word_counter
	mov flag4,1
	
jmp score_lvl3		
w5_lvl3:	
	cmp flag5,1
	if e jmp load_t3
	
	mov col,10
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word5_lvl3
	int 21h
	inc word_counter
	mov flag5,1
	
jmp score_lvl3

w6_lvl3:	
	cmp flag6,1
	if e jmp load_t3
	
	mov row,15
	mov col,2
	call set_cursor
	mov ah,09h
	lea dx,word6_lvl3
	int 21h
	inc word_counter
	mov flag6,1
	
jmp score_lvl3	
w7_lvl3:	
	cmp flag7,1
	if e jmp load_t3
	
	mov row,15
	mov col,4
	call set_cursor
	mov ah,09h
	lea dx,word7_lvl3
	int 21h
	inc word_counter
	mov flag7,1
	
jmp score_lvl3	
w8_lvl3:	
	cmp flag8,1
	if e jmp load_t3
	
	mov row,15
	mov col,6
	call set_cursor
	mov ah,09h
	lea dx,word8_lvl3
	int 21h
	inc word_counter
	mov flag8,1
	
jmp score_lvl3		
w9_lvl3:	
	cmp flag9,1
	if e jmp load_t3
	
	mov row,15
	mov col,8
	call set_cursor
	mov ah,09h
	lea dx,word9_lvl3
	int 21h
	inc word_counter
	mov flag9,1
	
jmp score_lvl3		
w10_lvl3:	
	cmp flag10,1
	if e jmp load_t3
	
	mov row,15
	mov col,10
	call set_cursor
	mov ah,09h
	lea dx,word10_lvl3
	int 21h
	inc word_counter
	mov flag10,1
	 
jmp score_lvl3
	;--------------------------------------------
score_lvl3:
	call scoretxt_count
jmp load_t3
shuffle3:
	call random_word
	call clor_spc_shuffler
	call delay_slow
	call space_shuffle
	mov col,15
	mov row,10
	call set_cursor
	cmp shuff_num,'0'
	if e jmp w3shuff0
	cmp shuff_num,'1'
	if e jmp w3shuff1
	cmp shuff_num,'2'
	if e jmp w3shuff2
	cmp shuff_num,'3'
	if e jmp w3shuff3
	cmp shuff_num,'4'
	if e jmp w3shuff4
	cmp shuff_num,'5'
	if e jmp w3shuff5
	cmp shuff_num,'6'
	if e jmp w3shuff6
	cmp shuff_num,'7'
	if e jmp w3shuff7
	cmp shuff_num,'8'
	if e jmp w3shuff8
	cmp shuff_num,'9'
	if e jmp w3shuff9
;---------------------------------------------
w3shuff0:
	mov ah,09h
	lea dx,wrd3shuf0
	int 21h
	
	
jmp load_t3
w3shuff1:
	mov ah,09h
	lea dx,wrd3shuf1
	int 21h
	
	
jmp load_t3
w3shuff2:
	mov ah,09h
	lea dx,wrd3shuf2
	int 21h
	
	
jmp load_t3
w3shuff3:
	mov ah,09h
	lea dx,wrd3shuf3
	int 21h
	
	
jmp load_t3
w3shuff4:
	mov ah,09h
	lea dx,wrd3shuf4
	int 21h
	

jmp load_t3
w3shuff5:
	mov ah,09h
	lea dx,wrd3shuf5
	int 21h
	
	
jmp load_t3
w3shuff6:
	mov ah,09h
	lea dx,wrd3shuf6
	int 21h
	
	
jmp load_t3
w3shuff7:
	mov ah,09h
	lea dx,wrd3shuf7
	int 21h
	
	
jmp load_t3
w3shuff8:
	mov ah,09h
	lea dx,wrd3shuf8
	int 21h
	
	
jmp load_t3
w3shuff9:
	mov ah,09h
	lea dx,wrd3shuf9
	int 21h
	
jmp load_t3



word_lvl3 endp

word_lvl2 proc near
pusha
	call clrscr
	
	mov temp_tpcol,0
	mov temp_tprow,0
	mov extra_counter,48
	mov word_counter,0
	call txt_boarder
	call space_shuffle
	
	call pencil_timer
	mov col,15
	mov row,10
	call set_cursor
	
	mov ah,09h
	lea dx,wrd2shuf2
	int 21h
	;--------------------------------------------
	call txt_flags
load_t2:
	pusha
	lea di,cmp_ward
	mov al,'$'
	mov cl,10
	cld
	rep stosb
	popa
	
	call disp_txtscore
	call extra_word_disp
	mov col,21
	mov row,10
	call set_cursor
	
	mov ah,09h
	lea dx,ward
	int 21h
	
	call boarder_wrdlvl2
	lea di,cmp_ward
	cld
	mov char_count,0
	mov col,21
	mov row,10
	call set_cursor
	call run_timer
	mov p_dec,1
	
get_char2:
	
	cmp temp_tprow,190
	ja quit_wrd2
	
	cmp word_counter,10
	if e jmp proceed2
	
	mov ah,00h
	int 16h
	
	
	mov tmp_char,al
	cmp al,0dh		;enter
	if e jmp compare_txt2
	cmp al,1bh		;ESC
	if e jmp quit_wrd2
	cmp al,20h		;space
	if e jmp shuffle2	;shuffle
	cmp al,08h
	if e jmp load_t2
	
	
	cmp char_count,5
	if e jmp compare_txt2
	
	mov al,tmp_char
	call set_cursor
	mov ah,02h
	mov dl,al
	int 21h
	add row,2
	
	stosb
	inc char_count
	
jmp get_char2

quit_wrd2:
call clrscr
call tgame_over
int 20h
proceed2:
	inc txt_lvl_counter
	call delay_slow
	call play_txt

compare_txt2:
	
	cmp char_count,1
	if e jmp woords1_lvl2
	cmp char_count,2
	if e jmp woords2_lvl2
	cmp char_count,3
	if e jmp woords3_lvl2
	cmp char_count,4
	if e jmp woords4_lvl2
	cmp char_count,5
	if e jmp woords5_lvl2
	cmp char_count,0
	if e jmp load_t2
	
woords1_lvl2:
	mov p_dec,2
jmp load_t2	
woords2_lvl2:
	mov p_dec,4
jmp load_t2	
woords5_lvl2:
		
			
		lea si,cmp_ward
		lea di,word10comp2
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w10_lvl2
		
	mov p_dec,10
jmp load_t2	
woords4_lvl2:
;------------------------------
		
		
		lea si,cmp_ward
		lea di,word5comp2
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w5_lvl2
		
;---------------------------------
		
		
		lea si,cmp_ward
		lea di,word6comp2
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w6_lvl2
		
;----------------------------------
		
		
		lea si,cmp_ward
		lea di,word7comp2
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w7_lvl2
		
;-----------------------------------
		
		lea si,cmp_ward
		lea di,word8comp2
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w8_lvl2
		
;------------------------------------------

		
		lea si,cmp_ward
		lea di,word9comp2
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w9_lvl2
		
;-------------------------------------------
		mov p_dec,8
jmp load_t2
woords3_lvl2:
;----------------------------------------
		
		lea si,cmp_ward
		lea di,word1comp2
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w1_lvl2
		
;-----------------------------------------
		
		lea si,cmp_ward
		lea di,word2comp2
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w2_lvl2
		
;------------------------------------------------
		
		lea si,cmp_ward
		lea di,word3comp2
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w3_lvl2
		
;----------------------------------------------------
		
		lea si,cmp_ward
		lea di,word4comp2
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w4_lvl2
		
	mov p_dec,6
jmp load_t2	
;------------------------------------------------------		
pusha
w1_lvl2:	
	cmp flag1,1
	if e jmp load_t2
	
	mov row,3
	mov col,2
	call set_cursor
	mov ah,09h
	lea dx,word1_lvl2
	int 21h
	inc word_counter
	mov flag1,1
jmp score_lvl2	

w2_lvl2:
	cmp flag2,1
	if e jmp load_t2
	
	mov col,4
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word2_lvl2
	int 21h
	inc word_counter
	mov flag2,1
jmp score_lvl2

w3_lvl2:	
	cmp flag3,1
	if e jmp load_t2

	mov col,6
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word3_lvl2
	int 21h
	inc word_counter
	mov flag3,1
jmp score_lvl2	
w4_lvl2:	
	cmp flag4,1
	if e jmp load_t2
	
	mov col,8
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word4_lvl2
	int 21h
	inc word_counter
	mov flag4,1
	
jmp score_lvl2		
w5_lvl2:	
	cmp flag5,1
	if e jmp load_t2
	
	mov col,10
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word5_lvl2
	int 21h
	inc word_counter
	mov flag5,1
	
jmp score_lvl2

w6_lvl2:	
	cmp flag6,1
	if e jmp load_t2
	
	mov row,15
	mov col,2
	call set_cursor
	mov ah,09h
	lea dx,word6_lvl2
	int 21h
	inc word_counter
	mov flag6,1
	
jmp score_lvl2	
w7_lvl2:	
	cmp flag7,1
	if e jmp load_t2
	
	mov row,15
	mov col,4
	call set_cursor
	mov ah,09h
	lea dx,word7_lvl2
	int 21h
	inc word_counter
	mov flag7,1
	
jmp score_lvl2	
w8_lvl2:	
	cmp flag8,1
	if e jmp load_t2
	
	mov row,15
	mov col,6
	call set_cursor
	mov ah,09h
	lea dx,word8_lvl2
	int 21h
	inc word_counter
	mov flag8,1
	
jmp score_lvl2		
w9_lvl2:	
	cmp flag9,1
	if e jmp load_t2
	
	mov row,15
	mov col,8
	call set_cursor
	mov ah,09h
	lea dx,word9_lvl2
	int 21h
	inc word_counter
	mov flag9,1
	
jmp score_lvl2		
w10_lvl2:	
	cmp flag10,1
	if e jmp load_t2
	
	mov row,15
	mov col,10
	call set_cursor
	mov ah,09h
	lea dx,word10_lvl2
	int 21h
	inc word_counter
	mov flag10,1
	 
jmp score_lvl2
	;--------------------------------------------
score_lvl2:
	call scoretxt_count
jmp load_t2
shuffle2:
	call random_word
	call clor_spc_shuffler
	call delay_slow
	call space_shuffle
	mov col,15
	mov row,10
	call set_cursor
	cmp shuff_num,'0'
	if e jmp w2shuff0
	cmp shuff_num,'1'
	if e jmp w2shuff1
	cmp shuff_num,'2'
	if e jmp w2shuff2
	cmp shuff_num,'3'
	if e jmp w2shuff3
	cmp shuff_num,'4'
	if e jmp w2shuff4
	cmp shuff_num,'5'
	if e jmp w2shuff5
	cmp shuff_num,'6'
	if e jmp w2shuff6
	cmp shuff_num,'7'
	if e jmp w2shuff7
	cmp shuff_num,'8'
	if e jmp w2shuff8
	cmp shuff_num,'9'
	if e jmp w2shuff9
;---------------------------------------------
w2shuff0:
	mov ah,09h
	lea dx,wrd2shuf0
	int 21h
	
	
jmp load_t2
w2shuff1:
	mov ah,09h
	lea dx,wrd2shuf1
	int 21h
	
	
jmp load_t2
w2shuff2:
	mov ah,09h
	lea dx,wrd2shuf2
	int 21h
	
	
jmp load_t2
w2shuff3:
	mov ah,09h
	lea dx,wrd2shuf3
	int 21h
	
	
jmp load_t2
w2shuff4:
	mov ah,09h
	lea dx,wrd2shuf4
	int 21h
	

jmp load_t2
w2shuff5:
	mov ah,09h
	lea dx,wrd2shuf5
	int 21h
	
	
jmp load_t2
w2shuff6:
	mov ah,09h
	lea dx,wrd2shuf6
	int 21h
	
	
jmp load_t2
w2shuff7:
	mov ah,09h
	lea dx,wrd2shuf7
	int 21h
	
	
jmp load_t2
w2shuff8:
	mov ah,09h
	lea dx,wrd2shuf8
	int 21h
	
	
jmp load_t2
w2shuff9:
	mov ah,09h
	lea dx,wrd2shuf9
	int 21h
	
jmp load_t2



word_lvl2 endp

word_lvl1 proc near
pusha
	call clrscr
	
	mov temp_tpcol,0
	mov temp_tprow,0
	mov extra_counter,48
	mov word_counter,0
	call txt_boarder
	call space_shuffle
	
	call pencil_timer
	mov col,15
	mov row,10
	call set_cursor
	
	mov ah,09h
	lea dx,wrd1shuf2
	int 21h
	;--------------------------------------------
	call txt_flags
load_t1:
	pusha
	lea di,cmp_ward
	mov al,'$'
	mov cl,10
	cld
	rep stosb
	popa
	
	call disp_txtscore
	call extra_word_disp
	mov col,21
	mov row,10
	call set_cursor
	
	mov ah,09h
	lea dx,ward
	int 21h
	
	call boarder_wrdlvl1
	lea di,cmp_ward
	cld
	mov char_count,0
	mov col,21
	mov row,10
	call set_cursor
	call run_timer
	mov p_dec,1
	
get_char:
	
	cmp temp_tprow,190
	ja quit_wrd1
	
	cmp word_counter,10
	if e jmp proceed1
	
	mov ah,00h
	int 16h
	
	
	mov tmp_char,al
	cmp al,0dh		;enter
	if e jmp compare_txt1
	cmp al,1bh		;ESC
	if e jmp quit_wrd1
	cmp al,20h		;space
	if e jmp shuffle1	;shuffle
	cmp al,08h
	if e jmp load_t1
	
	
	cmp char_count,5
	if e jmp compare_txt1
	
	mov al,tmp_char
	call set_cursor
	mov ah,02h
	mov dl,al
	int 21h
	add row,2
	
	stosb
	inc char_count
	
jmp get_char

quit_wrd1:
call clrscr
call tgame_over

int 20h
proceed1:
	inc txt_lvl_counter
	call delay_slow
	call play_txt

compare_txt1:
	
	cmp char_count,1
	if e jmp woords1
	cmp char_count,2
	if e jmp woords2
	cmp char_count,3
	if e jmp woords3
	cmp char_count,4
	if e jmp woords4
	cmp char_count,5
	if e jmp woords5
	cmp char_count,0
	if e jmp load_t1
woords1:
	mov p_dec,2
jmp load_t1	
woords2:
	mov p_dec,4
jmp load_t1	
woords5:

		lea si,cmp_ward
		lea di,word2comp
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w2_lvl1
		
		mov al,'$'
		cmp [di],al
		if e jmp load_t1
				
	mov p_dec,10
jmp load_t1	
woords4:

;-----------------------------------------
		
		lea si,cmp_ward
		lea di,word10comp
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w10_lvl1
		
		
		
		lea si,cmp_ward
		lea di,word9comp
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w9_lvl1
		

		
		lea si,cmp_ward
		lea di,word8comp
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w8_lvl1
		

		
		lea si,cmp_ward
		lea di,word7comp
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w7_lvl1
		
		
		
		lea si,cmp_ward
		lea di,word6comp
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w6_lvl1
		
		mov al,'$'
		cmp [di],al
		if e jmp load_t1

		mov p_dec,8
jmp load_t1
woords3:
;----------------------------------------

		
		lea si,cmp_ward
		lea di,word5comp
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w5_lvl1
		
		lea si,cmp_ward
		lea di,word4comp
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w4_lvl1
		
		lea si,cmp_ward
		lea di,word3comp
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w3_lvl1
		
		lea si,cmp_ward
		lea di,word1comp
		cld
		mov cl,char_count
		repe cmpsb
		if e jmp w1_lvl1
		
		mov al,'$'
		cmp [di],al
		if e jmp load_t1
		
mov p_dec,6
jmp load_t1	
;------------------------------------------------------		
pusha
w1_lvl1:	
	cmp flag1,1
	if e jmp load_t1
	
	mov row,3
	mov col,2
	call set_cursor
	mov ah,09h
	lea dx,word1
	int 21h
	inc word_counter
	mov flag1,1
	
jmp score_lvl1	

w2_lvl1:
	cmp flag2,1
	if e jmp load_t1
	
	mov col,4
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word2
	int 21h
	inc word_counter
	mov flag2,1
	
jmp score_lvl1	

w3_lvl1:	
	cmp flag3,1
	if e jmp load_t1
	
	mov col,6
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word3
	int 21h
	inc word_counter
	mov flag3,1
	
jmp score_lvl1	
w4_lvl1:	
	cmp flag4,1
	if e jmp load_t1
	
	mov col,8
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word4
	int 21h
	inc word_counter
	mov flag4,1
	
jmp score_lvl1		
w5_lvl1:	
	cmp flag5,1
	if e jmp load_t1
	
	mov col,10
	mov row,3
	call set_cursor
	mov ah,09h
	lea dx,word5
	int 21h
	inc word_counter
	mov flag5,1
	
jmp score_lvl1	

w6_lvl1:	
	cmp flag6,1
	if e jmp load_t1
	
	mov row,15
	mov col,2
	call set_cursor
	mov ah,09h
	lea dx,word6
	int 21h
	inc word_counter
	mov flag6,1
	
jmp score_lvl1	
w7_lvl1:	
	cmp flag7,1
	if e jmp load_t1
	
	mov row,15
	mov col,4
	call set_cursor
	mov ah,09h
	lea dx,word7
	int 21h
	inc word_counter
	mov flag7,1
	
jmp score_lvl1	
w8_lvl1:	
	cmp flag8,1
	if e jmp load_t1
	
	mov row,15
	mov col,6
	call set_cursor
	mov ah,09h
	lea dx,word8
	int 21h
	inc word_counter
	mov flag8,1
	
jmp score_lvl1		
w9_lvl1:	
	cmp flag9,1
	if e jmp load_t1

	mov row,15
	mov col,8
	call set_cursor
	mov ah,09h
	lea dx,word9
	int 21h
	inc word_counter
	mov flag9,1
	
jmp score_lvl1		
w10_lvl1:	
	cmp flag10,1
	if e jmp load_t1
	
	mov row,15
	mov col,10
	call set_cursor
	mov ah,09h
	lea dx,word10
	int 21h
	inc word_counter
	mov flag10,1
	
jmp score_lvl1
;--------------------------------------------------------
score_lvl1:
	call scoretxt_count
jmp load_t1
shuffle1:
	call random_word
	call clor_spc_shuffler
	call delay_slow
	call space_shuffle
	mov col,15
	mov row,10
	call set_cursor
	cmp shuff_num,'0'
	if e jmp w1shuff0
	cmp shuff_num,'1'
	if e jmp w1shuff1
	cmp shuff_num,'2'
	if e jmp w1shuff2
	cmp shuff_num,'3'
	if e jmp w1shuff3
	cmp shuff_num,'4'
	if e jmp w1shuff4
	cmp shuff_num,'5'
	if e jmp w1shuff5
	cmp shuff_num,'6'
	if e jmp w1shuff6
	cmp shuff_num,'7'
	if e jmp w1shuff7
	cmp shuff_num,'8'
	if e jmp w1shuff8
	cmp shuff_num,'9'
	if e jmp w1shuff9
;---------------------------------------------
w1shuff0:
	mov ah,09h
	lea dx,wrd1shuf0
	int 21h
	
	
jmp load_t1
w1shuff1:
	mov ah,09h
	lea dx,wrd1shuf1
	int 21h
	
	
jmp load_t1
w1shuff2:
	mov ah,09h
	lea dx,wrd1shuf2
	int 21h
	
	
jmp load_t1
w1shuff3:
	mov ah,09h
	lea dx,wrd1shuf3
	int 21h
	
	
jmp load_t1
w1shuff4:
	mov ah,09h
	lea dx,wrd1shuf4
	int 21h
	

jmp load_t1
w1shuff5:
	mov ah,09h
	lea dx,wrd1shuf5
	int 21h
	
	
jmp load_t1
w1shuff6:
	mov ah,09h
	lea dx,wrd1shuf6
	int 21h
	
	
jmp load_t1
w1shuff7:
	mov ah,09h
	lea dx,wrd1shuf7
	int 21h
	
	
jmp load_t1
w1shuff8:
	mov ah,09h
	lea dx,wrd1shuf8
	int 21h
	
	
jmp load_t1
w1shuff9:
	mov ah,09h
	lea dx,wrd1shuf9
	int 21h
	
jmp load_t1



word_lvl1 endp	

boarder_wrdlvl2 proc near
pusha 
	

	mov t_pcol,18
	mov t_prow,13
	call letter_boarder
	mov t_pcol,35
	mov t_prow,13
	call letter_boarder
	mov t_pcol,52
	mov t_prow,13
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,29
	call letter_boarder
	mov t_pcol,35
	mov t_prow,29
	call letter_boarder
	mov t_pcol,52
	mov t_prow,29
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,45
	call letter_boarder
	mov t_pcol,35
	mov t_prow,45
	call letter_boarder
	mov t_pcol,52
	mov t_prow,45
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,61
	call letter_boarder
	mov t_pcol,35
	mov t_prow,61
	call letter_boarder
	mov t_pcol,52
	mov t_prow,61
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,77
	call letter_boarder
	mov t_pcol,35
	mov t_prow,77
	call letter_boarder
	mov t_pcol,52
	mov t_prow,77
	call letter_boarder
	mov t_pcol,69
	mov t_prow,77
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,13
	call letter_boarder
	mov t_pcol,131
	mov t_prow,13
	call letter_boarder
	mov t_pcol,148
	mov t_prow,13
	call letter_boarder
	mov t_pcol,165
	mov t_prow,13
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,29
	call letter_boarder
	mov t_pcol,131
	mov t_prow,29
	call letter_boarder
	mov t_pcol,148
	mov t_prow,29
	call letter_boarder
	mov t_pcol,165
	mov t_prow,29
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,45
	call letter_boarder
	mov t_pcol,131
	mov t_prow,45
	call letter_boarder
	mov t_pcol,148
	mov t_prow,45
	call letter_boarder
	mov t_pcol,165
	mov t_prow,45
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,61
	call letter_boarder
	mov t_pcol,131
	mov t_prow,61
	call letter_boarder
	mov t_pcol,148
	mov t_prow,61
	call letter_boarder
	mov t_pcol,165
	mov t_prow,61
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,77
	call letter_boarder
	mov t_pcol,131
	mov t_prow,77
	call letter_boarder
	mov t_pcol,148
	mov t_prow,77
	call letter_boarder
	mov t_pcol,165
	mov t_prow,77
	call letter_boarder
	mov t_pcol,182
	mov t_prow,77
	call letter_boarder
	;------------------------------------
	
	mov t_pcol,74
	mov t_prow,117
	call letter_boarder
	mov t_pcol,91
	mov t_prow,117
	call letter_boarder
	mov t_pcol,108
	mov t_prow,117
	call letter_boarder
	mov t_pcol,125
	mov t_prow,117
	call letter_boarder
	mov t_pcol,142
	mov t_prow,117
	call letter_boarder
	
	mov t_pcol,84
	mov t_prow,133
	mov t_ink,2
	mov cl,28
	spc1_lvl2:
		call t_pen1
		inc t_prow
	loop spc1_lvl2
	
	mov cl,62
	spc2_lvl2:
		call t_pen1
		inc t_pcol
	loop spc2_lvl2
	
	mov cl,28
	spc3_lvl2:
		call t_pen1
		dec t_prow
	loop spc3_lvl2
	
	mov cl,62
	spc4_lvl2:
		call t_pen1
		dec t_pcol
	loop spc4_lvl2
	
popa
ret
boarder_wrdlvl2 endp

boarder_wrdlvl3 proc near
pusha 
	

	mov t_pcol,18
	mov t_prow,13
	call letter_boarder
	mov t_pcol,35
	mov t_prow,13
	call letter_boarder
	mov t_pcol,52
	mov t_prow,13
	call letter_boarder
	mov t_pcol,69
	mov t_prow,13
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,29
	call letter_boarder
	mov t_pcol,35
	mov t_prow,29
	call letter_boarder
	mov t_pcol,52
	mov t_prow,29
	call letter_boarder
	mov t_pcol,69
	mov t_prow,29
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,45
	call letter_boarder
	mov t_pcol,35
	mov t_prow,45
	call letter_boarder
	mov t_pcol,52
	mov t_prow,45
	call letter_boarder
	mov t_pcol,69
	mov t_prow,45
	call letter_boarder
	mov t_pcol,86
	mov t_prow,45
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,61
	call letter_boarder
	mov t_pcol,35
	mov t_prow,61
	call letter_boarder
	mov t_pcol,52
	mov t_prow,61
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,77
	call letter_boarder
	mov t_pcol,35
	mov t_prow,77
	call letter_boarder
	mov t_pcol,52
	mov t_prow,77
	call letter_boarder
	
	
	mov t_pcol,114
	mov t_prow,13
	call letter_boarder
	mov t_pcol,131
	mov t_prow,13
	call letter_boarder
	mov t_pcol,148
	mov t_prow,13
	call letter_boarder
	
	
	mov t_pcol,114
	mov t_prow,29
	call letter_boarder
	mov t_pcol,131
	mov t_prow,29
	call letter_boarder
	mov t_pcol,148
	mov t_prow,29
	call letter_boarder
	mov t_pcol,165
	mov t_prow,29
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,45
	call letter_boarder
	mov t_pcol,131
	mov t_prow,45
	call letter_boarder
	mov t_pcol,148
	mov t_prow,45
	call letter_boarder
	mov t_pcol,165
	mov t_prow,45
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,61
	call letter_boarder
	mov t_pcol,131
	mov t_prow,61
	call letter_boarder
	mov t_pcol,148
	mov t_prow,61
	call letter_boarder
	mov t_pcol,165
	mov t_prow,61
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,77
	call letter_boarder
	mov t_pcol,131
	mov t_prow,77
	call letter_boarder
	mov t_pcol,148
	mov t_prow,77
	call letter_boarder
	mov t_pcol,165
	mov t_prow,77
	call letter_boarder
	
	;------------------------------------
	
	mov t_pcol,74
	mov t_prow,117
	call letter_boarder
	mov t_pcol,91
	mov t_prow,117
	call letter_boarder
	mov t_pcol,108
	mov t_prow,117
	call letter_boarder
	mov t_pcol,125
	mov t_prow,117
	call letter_boarder
	mov t_pcol,142
	mov t_prow,117
	call letter_boarder
	
	mov t_pcol,84
	mov t_prow,133
	mov t_ink,2
	mov cl,28
	spc1_lvl3:
		call t_pen1
		inc t_prow
	loop spc1_lvl3
	
	mov cl,62
	spc2_lvl3:
		call t_pen1
		inc t_pcol
	loop spc2_lvl3
	
	mov cl,28
	spc3_lvl3:
		call t_pen1
		dec t_prow
	loop spc3_lvl3
	
	mov cl,62
	spc4_lvl3:
		call t_pen1
		dec t_pcol
	loop spc4_lvl3
	
popa
ret
boarder_wrdlvl3 endp

boarder_wrdlvl4 proc near
pusha 
	

	mov t_pcol,18
	mov t_prow,13
	call letter_boarder
	mov t_pcol,35
	mov t_prow,13			;1 
	call letter_boarder
	mov t_pcol,52
	mov t_prow,13
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,29
	call letter_boarder
	mov t_pcol,35
	mov t_prow,29
	call letter_boarder
	mov t_pcol,52			;2 
	mov t_prow,29
	call letter_boarder
	mov t_pcol,69
	mov t_prow,29
	call letter_boarder
	
	
	mov t_pcol,18
	mov t_prow,45
	call letter_boarder
	mov t_pcol,35
	mov t_prow,45
	call letter_boarder
	mov t_pcol,52			;3
	mov t_prow,45
	call letter_boarder
	mov t_pcol,69
	mov t_prow,45
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,61
	call letter_boarder
	mov t_pcol,35
	mov t_prow,61
	call letter_boarder		;4
	mov t_pcol,52
	mov t_prow,61
	call letter_boarder
	mov t_pcol,69
	mov t_prow,61
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,77
	call letter_boarder
	mov t_pcol,35
	mov t_prow,77
	call letter_boarder		;5
	mov t_pcol,52
	mov t_prow,77
	call letter_boarder
	mov t_pcol,69
	mov t_prow,77
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,13
	call letter_boarder
	mov t_pcol,131
	mov t_prow,13
	call letter_boarder		;6
	mov t_pcol,148
	mov t_prow,13
	call letter_boarder
	mov t_pcol,165
	mov t_prow,13
	call letter_boarder
	mov t_pcol,182
	mov t_prow,13
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,29
	call letter_boarder
	mov t_pcol,131
	mov t_prow,29
	call letter_boarder		;7
	mov t_pcol,148
	mov t_prow,29
	call letter_boarder
	
	
	mov t_pcol,114
	mov t_prow,45
	call letter_boarder
	mov t_pcol,131
	mov t_prow,45
	call letter_boarder		;8 
	mov t_pcol,148
	mov t_prow,45
	call letter_boarder
	
	
	mov t_pcol,114
	mov t_prow,61
	call letter_boarder
	mov t_pcol,131
	mov t_prow,61
	call letter_boarder		;9	
	mov t_pcol,148
	mov t_prow,61
	call letter_boarder
	
	
	mov t_pcol,114
	mov t_prow,77
	call letter_boarder
	mov t_pcol,131
	mov t_prow,77
	call letter_boarder
	mov t_pcol,148
	mov t_prow,77			;10
	call letter_boarder
	
	
	;------------------------------------
	
	mov t_pcol,74
	mov t_prow,117
	call letter_boarder
	mov t_pcol,91
	mov t_prow,117
	call letter_boarder
	mov t_pcol,108
	mov t_prow,117
	call letter_boarder
	mov t_pcol,125
	mov t_prow,117
	call letter_boarder
	mov t_pcol,142
	mov t_prow,117
	call letter_boarder
	
	mov t_pcol,84
	mov t_prow,133
	mov t_ink,2
	mov cl,28
	spc1_lvl4:
		call t_pen1
		inc t_prow
	loop spc1_lvl4
	
	mov cl,62
	spc2_lvl4:
		call t_pen1
		inc t_pcol
	loop spc2_lvl4
	
	mov cl,28
	spc3_lvl4:
		call t_pen1
		dec t_prow
	loop spc3_lvl4
	
	mov cl,62
	spc4_lvl4:
		call t_pen1
		dec t_pcol
	loop spc4_lvl4
	
popa
ret
boarder_wrdlvl4 endp

loader proc near
pusha
	
	
	mov t_pcol1,62
	mov t_prow1,102
	mov t_ink1,32
	mov t_ink,2
	call loader_brder
	mov cl,197
lder1:
	pusha
	call delay1
	mov cl,14
	lder2:
		call t_pen2
		inc t_prow1
	loop lder2
	popa
	sub t_prow1,14
	inc t_pcol1
	inc t_ink
	call loader_brder
	
loop lder1
popa
ret
loader endp

loader_brder proc near
pusha
	mov t_pcol,60
	mov t_prow,100
	
	
	mov cl,17
lod_brder1:
	call t_pen1
	inc t_prow	
loop lod_brder1	
	
	mov cl,200
lod_brder2:
	call t_pen1
	inc t_pcol
loop lod_brder2

	mov cl,17
lod_brder3:
	call t_pen1
	dec t_prow	
loop lod_brder3	

	mov cl,200
lod_brder4:
	call t_pen1
	dec t_pcol
loop lod_brder4
popa
ret
loader_brder endp

boarder_wrdlvl5 proc near
pusha 
	

	mov t_pcol,18
	mov t_prow,13
	call letter_boarder
	mov t_pcol,35
	mov t_prow,13			;1 
	call letter_boarder
	mov t_pcol,52
	mov t_prow,13
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,29
	call letter_boarder
	mov t_pcol,35
	mov t_prow,29
	call letter_boarder
	mov t_pcol,52			;2 
	mov t_prow,29
	call letter_boarder
	mov t_pcol,69
	mov t_prow,29
	call letter_boarder
	
	
	mov t_pcol,18
	mov t_prow,45
	call letter_boarder
	mov t_pcol,35
	mov t_prow,45
	call letter_boarder
	mov t_pcol,52			;3
	mov t_prow,45
	call letter_boarder
	mov t_pcol,69
	mov t_prow,45
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,61
	call letter_boarder
	mov t_pcol,35
	mov t_prow,61
	call letter_boarder		;4
	mov t_pcol,52
	mov t_prow,61
	call letter_boarder
	mov t_pcol,69
	mov t_prow,61
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,77
	call letter_boarder
	mov t_pcol,35
	mov t_prow,77
	call letter_boarder		;5
	mov t_pcol,52
	mov t_prow,77
	call letter_boarder
	mov t_pcol,69
	mov t_prow,77
	call letter_boarder
	mov t_pcol,86
	mov t_prow,77
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,13
	call letter_boarder
	mov t_pcol,131
	mov t_prow,13
	call letter_boarder		;6
	mov t_pcol,148
	mov t_prow,13
	call letter_boarder
	mov t_pcol,165
	mov t_prow,13
	call letter_boarder
	mov t_pcol,182
	mov t_prow,13
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,29
	call letter_boarder
	mov t_pcol,131
	mov t_prow,29
	call letter_boarder		;7
	mov t_pcol,148
	mov t_prow,29
	call letter_boarder
	
	
	mov t_pcol,114
	mov t_prow,45
	call letter_boarder
	mov t_pcol,131
	mov t_prow,45
	call letter_boarder		;8 
	mov t_pcol,148
	mov t_prow,45
	call letter_boarder
	
	
	mov t_pcol,114
	mov t_prow,61
	call letter_boarder
	mov t_pcol,131
	mov t_prow,61
	call letter_boarder		;9	
	mov t_pcol,148
	mov t_prow,61
	call letter_boarder
	
	
	mov t_pcol,114
	mov t_prow,77
	call letter_boarder
	mov t_pcol,131
	mov t_prow,77
	call letter_boarder
	mov t_pcol,148
	mov t_prow,77			;10
	call letter_boarder
	
	
	;------------------------------------
	
	mov t_pcol,74
	mov t_prow,117
	call letter_boarder
	mov t_pcol,91
	mov t_prow,117
	call letter_boarder
	mov t_pcol,108
	mov t_prow,117
	call letter_boarder
	mov t_pcol,125
	mov t_prow,117
	call letter_boarder
	mov t_pcol,142
	mov t_prow,117
	call letter_boarder
	
	mov t_pcol,84
	mov t_prow,133
	mov t_ink,2
	mov cl,28
	spc1_lvl5:
		call t_pen1
		inc t_prow
	loop spc1_lvl5
	
	mov cl,62
	spc2_lvl5:
		call t_pen1
		inc t_pcol
	loop spc2_lvl5
	
	mov cl,28
	spc3_lvl5:
		call t_pen1
		dec t_prow
	loop spc3_lvl5
	
	mov cl,62
	spc4_lvl5:
		call t_pen1
		dec t_pcol
	loop spc4_lvl5
	
popa
ret
boarder_wrdlvl5 endp

boarder_wrdlvl1 proc near
pusha 
	

	mov t_pcol,18
	mov t_prow,13
	call letter_boarder
	mov t_pcol,35
	mov t_prow,13
	call letter_boarder
	mov t_pcol,52
	mov t_prow,13
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,29
	call letter_boarder
	mov t_pcol,35
	mov t_prow,29
	call letter_boarder
	mov t_pcol,52
	mov t_prow,29
	call letter_boarder
	mov t_pcol,69
	mov t_prow,29
	call letter_boarder
	mov t_pcol,86
	mov t_prow,29
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,45
	call letter_boarder
	mov t_pcol,35
	mov t_prow,45
	call letter_boarder
	mov t_pcol,52
	mov t_prow,45
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,61
	call letter_boarder
	mov t_pcol,35
	mov t_prow,61
	call letter_boarder
	mov t_pcol,52
	mov t_prow,61
	call letter_boarder
	
	mov t_pcol,18
	mov t_prow,77
	call letter_boarder
	mov t_pcol,35
	mov t_prow,77
	call letter_boarder
	mov t_pcol,52
	mov t_prow,77
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,13
	call letter_boarder
	mov t_pcol,131
	mov t_prow,13
	call letter_boarder
	mov t_pcol,148
	mov t_prow,13
	call letter_boarder
	mov t_pcol,165
	mov t_prow,13
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,29
	call letter_boarder
	mov t_pcol,131
	mov t_prow,29
	call letter_boarder
	mov t_pcol,148
	mov t_prow,29
	call letter_boarder
	mov t_pcol,165
	mov t_prow,29
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,45
	call letter_boarder
	mov t_pcol,131
	mov t_prow,45
	call letter_boarder
	mov t_pcol,148
	mov t_prow,45
	call letter_boarder
	mov t_pcol,165
	mov t_prow,45
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,61
	call letter_boarder
	mov t_pcol,131
	mov t_prow,61
	call letter_boarder
	mov t_pcol,148
	mov t_prow,61
	call letter_boarder
	mov t_pcol,165
	mov t_prow,61
	call letter_boarder
	
	mov t_pcol,114
	mov t_prow,77
	call letter_boarder
	mov t_pcol,131
	mov t_prow,77
	call letter_boarder
	mov t_pcol,148
	mov t_prow,77
	call letter_boarder
	mov t_pcol,165
	mov t_prow,77
	call letter_boarder
	;------------------------------------
	
	mov t_pcol,74
	mov t_prow,117
	call letter_boarder
	mov t_pcol,91
	mov t_prow,117
	call letter_boarder
	mov t_pcol,108
	mov t_prow,117
	call letter_boarder
	mov t_pcol,125
	mov t_prow,117
	call letter_boarder
	mov t_pcol,142
	mov t_prow,117
	call letter_boarder
	
	mov t_pcol,84
	mov t_prow,133
	mov t_ink,2
	mov cl,28
	spc1:
		call t_pen1
		inc t_prow
	loop spc1
	
	mov cl,62
	spc2:
		call t_pen1
		inc t_pcol
	loop spc2
	
	mov cl,28
	spc3:
		call t_pen1
		dec t_prow
	loop spc3
	
	mov cl,62
	spc4:
		call t_pen1
		dec t_pcol
	loop spc4
	
popa
ret
boarder_wrdlvl1 endp


clor_spc_shuffler proc near
pusha
	mov t_pcol,84
	mov t_prow,133
	mov t_ink,14
	mov cl,28
	spc11:
		call t_pen1
		inc t_prow
	loop spc11
	
	mov cl,62
	spc22:
		call t_pen1
		inc t_pcol
	loop spc22
	
	mov cl,28
	spc33:
		call t_pen1
		dec t_prow
	loop spc33
	
	mov cl,62
	spc44:
		call t_pen1
		dec t_pcol
	loop spc44
popa
ret
clor_spc_shuffler endp



random_word proc near
pusha
   mov ah,00h 
   int 1ah      

   mov  ax, dx
   xor  dx, dx
   mov  cx, 10    
   div  cx       

   add  dl, '0'  
   mov shuff_num,dl
popa
ret
random_word endp

space_shuffle proc near
pusha
	mov col,17
	mov row,11
	call set_cursor
	mov ah,09h
	lea dx,shuffler
	int 21h
	
	inc col
	call set_cursor
	mov ah,09h
	lea dx,shuffler1
	int 21h
	inc col
	
	call set_cursor
	mov ah,09h
	lea dx,shuffler2
	int 21h
	
	
	
popa
ret
space_shuffle endp

pencil_timer proc near
pusha
	mov t_prow,190
	mov t_pcol,275
	mov t_ink,20
	call t_pen1
	dec t_pcol
	dec t_prow
	call delay1
	mov cl,3
pen_timer1:
	call t_pen1
	inc t_pcol
loop pen_timer1
	
	sub t_pcol,3
	dec t_prow
	mov cl,3
pen_timer2:
	call t_pen1
	inc t_pcol
loop pen_timer2
	
	sub t_pcol,4
	dec t_prow
	mov cl,5
pen_timer3:
	call t_pen1
	inc t_pcol
loop pen_timer3

	sub t_pcol,5
	dec t_prow
	mov cl,5
pen_timer4:
	call t_pen1
	inc t_pcol
loop pen_timer4
	call delay1
	mov t_ink,66
	sub t_pcol,6
	dec t_prow
	mov cl,7
pen_timer5:
	call t_pen1
	inc t_pcol
loop pen_timer5	

	sub t_pcol,7
	dec t_prow
	mov cl,7
pen_timer6:
	call t_pen1
	inc t_pcol
loop pen_timer6	
	call delay1
	sub t_pcol,8
	dec t_prow
	mov cl,9
pen_timer7:
	call t_pen1
	inc t_pcol
loop pen_timer7	

	sub t_pcol,9
	dec t_prow
	mov cl,9
pen_timer8:
	call t_pen1
	inc t_pcol
loop pen_timer8
	call delay1
	sub t_pcol,10
	dec t_prow
	mov cl,11
pen_timer9:
	call t_pen1
	inc t_pcol
loop pen_timer9

	sub t_pcol,11
	dec t_prow
	mov cl,11
pen_timer10:
	call t_pen1
	inc t_pcol
loop pen_timer10
	call delay1
	sub t_pcol,12
	dec t_prow
	mov cl,13
pen_timer11:
	call t_pen1
	inc t_pcol
loop pen_timer11

	sub t_pcol,13
	dec t_prow
	mov cl,13
pen_timer12:
	call t_pen1
	inc t_pcol
loop pen_timer12
	call delay1
	sub t_pcol,14
	dec t_prow
	mov cl,15
pen_timer13:
	call t_pen1
	inc t_pcol
loop pen_timer13

	sub t_pcol,15
	dec t_prow
	mov cl,15
pen_timer14:
	call t_pen1
	inc t_pcol
loop pen_timer14
	call delay1
	sub t_pcol,16
	dec t_prow
	mov cl,17
pen_timer15:
	call t_pen1
	inc t_pcol
loop pen_timer15

	sub t_pcol,17
	dec t_prow
	mov cl,17
pen_timer16:
	call t_pen1
	inc t_pcol
loop pen_timer16
	call delay1
	sub t_pcol,18
	dec t_prow
	mov cl,19
pen_timer17:
	call t_pen1
	inc t_pcol
loop pen_timer17

	mov t_ink,44
	sub t_pcol,19
	dec t_prow
	mov cl,120
pen_timer18:	
	pusha
	mov cl,19
	pen_timer19:
		call t_pen1
		inc t_pcol
	loop pen_timer19
	popa
	sub t_pcol,19
	dec t_prow
	call delay1
loop pen_timer18

	mov t_ink,18
	mov cl,15
pen_timer20:	
	pusha
	mov cl,19
	pen_timer21:
		call t_pen1
		inc t_pcol
	loop pen_timer21
	popa
	sub t_pcol,19
	dec t_prow
	call delay1
loop pen_timer20

	mov t_ink,4
	mov cl,18
pen_timer22:	
	pusha
	mov cl,19
	pen_timer23:
		call t_pen1
		inc t_pcol
	loop pen_timer23
	popa
	sub t_pcol,19
	dec t_prow
	call delay1
loop pen_timer22

mov ax,t_pcol
mov bx,t_prow

mov temp_tpcol,ax
mov temp_tprow,bx
popa
ret
pencil_timer endp



run_timer proc near
pusha
	
	cmp p_dec,1
	if e jmp exit_timer
	
	mov ax,temp_tpcol
	mov bx,temp_tprow
	
	mov t_pcol,ax
	mov t_prow,bx
	mov t_ink,0
	
	mov cl,p_dec
clock:
	pusha
	mov cl,19
	tiktok:
		call t_pen1
		inc t_pcol
	loop tiktok
	popa
	sub t_pcol,19
	call delay_slow
	inc t_prow
	
loop clock

	mov ax,t_pcol
	mov bx,t_prow
	
	mov temp_tpcol,ax
	mov temp_tprow,bx
exit_timer:
popa
ret
run_timer endp

scoretxt_count proc near
pusha
;tscore_0	db	'0'
;tscore_00	db	'0'
;tscore_000	db	'0'
;tscore_0000	db	'0'
	mov bl,char_count
	add tscore_0,bl
	cmp tscore_0,'9'
	ja skur_tens
	jmp done_count
skur_tens:
	sub tscore_0,9
	dec tscore_0
	inc tscore_00
	cmp tscore_00,'9'
	ja skur_hndrds
	jmp done_count
skur_hndrds:
	sub tscore_00,9
	dec tscore_00
	inc tscore_000
	
done_count:
popa
ret
scoretxt_count endp

disp_txtscore proc near
pusha
	mov col,23
	mov row,1
	call set_cursor
	
	mov ah,09h
	lea dx,tscore
	int 21h
	
	add row,6
	call set_cursor
	
	mov ah,02h
	mov dl,tscore_0000
	int 21h
	
	inc row
	call set_cursor
	
	mov ah,02h
	mov dl,tscore_000
	int 21h
	
	inc row
	call set_cursor
	
	mov ah,02h
	mov dl,tscore_00
	int 21h
	
	inc row
	call set_cursor
	
	mov ah,02h
	mov dl,tscore_0
	int 21h
	
	mov col,1
	mov row,29
	call set_cursor
	
	mov ah,09h
	lea dx,nxt_word
	int 21h
	
	add row,6
	
	mov ah,02h
	mov dl,txt_lvl_counter
	int 21h
popa
ret
disp_txtscore endp

tgame_over proc near
pusha
	mov t_pcol,110
	mov t_prow,50
	mov t_ink,48
;-------------GAME-----------------------
	mov cl,44
	g_over1:
		pusha
		mov cl,10
		over_g1:
			call t_pen1
			inc t_prow
		loop over_g1
		popa
		sub t_prow,10
		dec t_pcol
		
	loop g_over1
	
	mov cl,26
	g_over2:
		pusha
		mov cl,10
		over_g2:
			call t_pen1
			inc t_pcol
		loop over_g2
		popa
		sub t_pcol,10
		inc t_prow
		
	loop g_over2
	
	mov cl,45
	g_over3:
		pusha
		mov cl,10
		over_g3:
			call t_pen1
			inc t_prow
		loop over_g3
		popa
		sub t_prow,10
		inc t_pcol
		
	loop g_over3
	
	
	sub t_pcol,10
	
	mov cl,14
	g_over4:
		pusha
		mov cl,10
		over_g4:
			call t_pen1
			inc t_pcol
		loop over_g4
		popa
		sub t_pcol,10
		dec t_prow
		
	loop g_over4
	inc t_prow
	mov cl,23
	g_over5:
		pusha
		mov cl,10
		over_g5:
			call t_pen1
			inc t_prow
		loop over_g5
		popa
		sub t_prow,10
		dec t_pcol
		
	loop g_over5
	
	mov t_pcol,160
	mov t_prow,85
	
	mov cl,36
	a_over1:
		pusha
		mov cl,10
		over_a1:
			call t_pen1
			dec t_pcol
		loop over_a1
		popa
		add t_pcol,10
		dec t_prow
		
	loop a_over1
	
	inc t_prow
	
	mov cl,44
	a_over2:
		pusha
		mov cl,10
		over_a2:
			call t_pen1
			inc t_prow
		loop over_a2
		popa
		sub t_prow,10
		dec t_pcol
		
	loop a_over2
	
	mov cl,36
	a_over3:
		pusha
		mov cl,10
		over_a3:
			call t_pen1
			inc t_pcol
		loop over_a3
		popa
		sub t_pcol,10
		inc t_prow
		
	loop a_over3
	
	sub t_prow,23
	
	mov cl,44
	a_over4:
		pusha
		mov cl,10
		over_a4:
			call t_pen1
			inc t_prow
		loop over_a4
		popa
		sub t_prow,10
		inc t_pcol
		
	loop a_over4
	
	mov t_pcol,165
	mov t_prow,85
	
	mov cl,36
	m_over1:
		pusha
		mov cl,10
		over_m1:
			call t_pen1
			inc t_pcol
		loop over_m1
		popa
		sub t_pcol,10
		dec t_prow
		
	loop m_over1
	
	inc t_prow
	
	mov cl,18
	m_over2:
		pusha
		mov cl,13
		over_m2:
			call t_pen1
			inc t_pcol
		loop over_m2
		popa
		sub t_pcol,12
		inc t_prow
		
	loop m_over2
	
	
	
	mov cl,18
	m_over3:
		pusha
		mov cl,12
		over_m3:
			call t_pen1
			inc t_pcol
		loop over_m3
		popa
		sub t_pcol,12
		inc t_prow
		
	loop m_over3
	
	sub t_prow,19
	
	mov cl,18
	m_over4:
		pusha
		mov cl,13
		over_m4:
			call t_pen1
			inc t_pcol
		loop over_m4
		popa
		sub t_pcol,12
		dec t_prow
		
	loop m_over4
	
	add t_pcol,11
	inc t_prow
	
	mov cl,36
	m_over5:
		pusha
		mov cl,10
		over_m5:
			call t_pen1
			dec t_pcol
		loop over_m5
		popa
		add t_pcol,10
		inc t_prow
		
	loop m_over5
	
	dec t_prow
	
	add t_pcol,5
	mov t_prow,85
	
	mov cl,36
	e_over1:
		pusha
		mov cl,10
		over_o1:
			call t_pen1
			inc t_pcol
		loop over_o1
		popa
		sub t_pcol,10
		dec t_prow
		
	loop e_over1
	
	mov cl,44
	e_over2:
		pusha
		mov cl,10
		over_e2:
			call t_pen1
			inc t_prow
		loop over_e2
		popa
		sub t_prow,10
		inc t_pcol
		
	loop e_over2
	
	sub t_pcol,44
	add t_prow,27
	
	mov cl,44
	e_over3:
		pusha
		mov cl,10
		over_e3:
			call t_pen1
			inc t_prow
		loop over_e3
		popa
		sub t_prow,10
		inc t_pcol
		
	loop e_over3
	
	sub t_pcol,44
	sub t_prow,14
	
	
	mov cl,38
	e_over5:
		pusha
		mov cl,10
		over_e5:
			call t_pen1
			inc t_prow
		loop over_e5
		popa
		sub t_prow,10
		inc t_pcol
		
	loop e_over5
;-------------------GAME-------------------

;---------------OVER------------------
	mov t_pcol,110
	mov t_prow,95
	
	mov cl,44
	o_game1:
		pusha
		mov cl,10
		game_o1:
			call t_pen1
			inc t_prow
		loop game_o1
		popa
		sub t_prow,10
		dec t_pcol
		
	loop o_game1
	
	mov cl,26
	o_game2:
		pusha
		mov cl,10
		game_o2:
			call t_pen1
			inc t_pcol
		loop game_o2
		popa
		sub t_pcol,10
		inc t_prow
		
	loop o_game2
	
	mov cl,45
	o_game3:
		pusha
		mov cl,10
		game_o3:
			call t_pen1
			inc t_prow
		loop game_o3
		popa
		sub t_prow,10
		inc t_pcol
		
	loop o_game3
	
	sub t_pcol,1
	
	mov cl,26
	o_game4:
		pusha
		mov cl,10
		game_o4:
			call t_pen1
			dec t_pcol
		loop game_o4
		popa
		add t_pcol,10
		dec t_prow
		
	loop o_game4
	
	;sub t_prow,44
	add t_pcol,5
	
	mov cl,20
	v_game1:
		pusha
		mov cl,10
		game_v1:
			call t_pen1
			inc t_pcol
		loop game_v1
		popa
		sub t_pcol,10
		inc t_prow
		
	loop v_game1
	
	mov cl,15
	v_game2:
		pusha
		mov cl,10
		game_v2:
			call t_pen1
			inc t_pcol
		loop game_v2
		popa
		sub t_pcol,9
		inc t_prow
		
	loop v_game2
	
	add t_pcol,5
	sub t_prow,1
	
	mov cl,15
	v_game3:
		pusha
		mov cl,10
		game_v3:
			call t_pen1
			inc t_pcol
		loop game_v3
		popa
		sub t_pcol,9
		dec t_prow
		
	loop v_game3
	
	mov cl,20
	v_game4:
		pusha
		mov cl,10
		game_v4:
			call t_pen1
			inc t_pcol
		loop game_v4
		popa
		sub t_pcol,10
		dec t_prow
		
	loop v_game4
	
	add t_pcol,17
	add t_prow,33
	
	mov cl,33
	e_game1:
		pusha
		mov cl,10
		game_e1:
			call t_pen1
			inc t_pcol
		loop game_e1
		popa
		sub t_pcol,10
		dec t_prow
		
	loop e_game1
	
	add t_prow,1
	mov cl,44
	e_game2:
		pusha
		mov cl,10
		game_e2:
			call t_pen1
			inc t_prow
		loop game_e2
		popa
		sub t_prow,10
		inc t_pcol
		
	loop e_game2
	
	sub t_pcol,44
	add t_prow,26
	
	mov cl,44
	e_game3:
		pusha
		mov cl,10
		game_e3:
			call t_pen1
			inc t_prow
		loop game_e3
		popa
		sub t_prow,10
		inc t_pcol
		
	loop e_game3
	
	sub t_pcol,44
	sub t_prow,13
	
	
	mov cl,38
	e_game5:
		pusha
		mov cl,10
		game_e5:
			call t_pen1
			inc t_prow
		loop game_e5
		popa
		sub t_prow,10
		inc t_pcol
		
	loop e_game5
	
	add t_pcol,12
	add t_prow,22
	
	mov cl,36
	r_game1:
		pusha
		mov cl,10
		game_r1:
			call t_pen1
			inc t_pcol
		loop game_r1
		popa
		sub t_pcol,10
		dec t_prow
		
	loop r_game1
	
	mov cl,43
	r_game2:
		pusha
		mov cl,10
		game_r2:
			call t_pen1
			inc t_prow
		loop game_r2
		popa
		sub t_prow,10
		inc t_pcol
		
	loop r_game2
	
	mov cl,20
	r_game3:
		pusha
		mov cl,10
		game_r3:
			call t_pen1
			dec t_pcol
		loop game_r3
		popa
		add t_pcol,10
		inc t_prow
	loop r_game3
	
	sub t_prow,7
	
	mov cl,25
	r_game4:
		pusha
		mov cl,10
		game_r4:
			call t_pen1
			inc t_prow
		loop game_r4
		popa
		sub t_prow,10
		dec t_pcol
		
	loop r_game4
	
	add t_prow,10
	inc t_pcol
	
	mov cl,13
	r_game5:
		pusha
		mov cl,14
		game_r5:
			call t_pen1
			inc t_pcol
		loop game_r5
		popa
		sub t_pcol,13
		inc t_prow
		
	loop r_game5
	
	mov col,18
	mov row,15
	call set_cursor
	
	mov ah,09h
	lea dx,tscore
	int 21h
	
	add row,6
	call set_cursor
	
	mov ah,02h
	mov dl,tscore_0000
	int 21h
	
	inc row
	call set_cursor
	
	mov ah,02h
	mov dl,tscore_000
	int 21h
	
	inc row
	call set_cursor
	
	mov ah,02h
	mov dl,tscore_00
	int 21h
	
	inc row
	call set_cursor
	
	mov ah,02h
	mov dl,tscore_0
	int 21h
	
	mov col,22
	mov row,2
	call set_cursor
	
	mov ah,09h
	lea dx,try_againtxt
	int 21h
que:	
	mov ah,00h
	int 16h
	
	cmp al,'q'
	if e jmp gg_txt
	cmp al,'t'
	if e jmp play_again
jmp que
popa
ret
gg_txt:
call main_text
int 20h
play_again:
call play_txt
tgame_over endp

txt_boarder proc near
pusha
call clrscr
;---------------------------------- boarder
	mov t_ink,6
	mov t_pcol,0
	mov t_prow,0
	mov cl,225
	box1:
	pusha
	mov cl,3
	b1:
		call t_pen1
		inc t_prow
	loop b1	
		inc t_pcol
		sub t_prow,3
	popa
	loop box1
	
	sub t_pcol,3
	mov cl,110
	box2:
	pusha
	mov cl,3
	b2:
		call t_pen1
		inc t_pcol
	loop b2
		inc t_prow
		sub t_pcol,3
	popa
	loop box2
	
	sub t_prow,3
	mov cl,222
	box3:
	pusha
	mov cl,3
	b3:
		call t_pen1
		inc t_prow
	loop b3
		dec t_pcol
		sub t_prow,3
	popa
	loop box3
	
	add t_prow,2
	mov cl,110
	box4:
	pusha
	mov cl,3
	b4:
		call t_pen1
		inc t_pcol
	loop b4
		dec t_prow
		sub t_pcol,3
	popa
	loop box4
;----------------------------------------

popa
ret
txt_boarder endp



letter_boarder proc near
pusha
	mov t_ink,2
	mov cl,12
	letb1:
		call t_pen1
		inc t_prow
	loop letb1
	
	mov cl,17
	letb2:
		call t_pen1
		inc t_pcol
	loop letb2
	
	mov cl,12
	letb3:
		call t_pen1
		dec t_prow
	loop letb3
	
	mov cl,17
	letb4:
		call t_pen1
		dec t_pcol
	loop letb4
	
	
popa
ret
letter_boarder endp

txt_select proc near
pusha
mov t_pcol,75
mov t_prow,155
mov t_ink,14
ts:
call txt_disp
	mov ah,07h
	int 21h
	cmp al,50h
	if e jmp tdn
	cmp al,48h
	if e jmp tup
	cmp al,0dh
	if e jmp entre

tdn:
	mov txt_post,2
	mov t_ink,00
	mov t_pcol,75
	mov t_prow,155
	
	call txt_disp
	mov t_ink,14
	mov t_prow,170
	jmp ts
tup:
	mov txt_post,1
	mov t_ink,00
	mov t_pcol,75
	mov t_prow,170
	
	call txt_disp
	mov t_ink,14
	mov t_pcol,75
	mov t_prow,155
	jmp ts
	
entre:
popa
ret
	txt_disp proc near
	pusha
	
	mov cl,15
	txt1:
		call t_pen1
		inc t_prow
	loop txt1
	
	
	mov cl,145
	txt2:
		call t_pen1
		inc t_pcol
	loop txt2
	
	mov cl,15
	txt3:
		call t_pen1
		dec t_prow
	loop txt3
	
	mov cl,145
	txt4:
		call t_pen1
		dec t_pcol
	loop txt4
	popa
	ret 
	txt_disp endp
txt_select endp

pencil proc near
pusha
	mov t_pcol1,50
	mov t_prow1,120
	mov cl,15
	mov t_ink1,4
	
	pn1:
	call delay1
	inc t_ink
	call text_lodscrn
		pusha
		mov cl,15
		pn2:	
			call t_pen2
			inc t_prow1
		loop pn2
		popa
	inc t_pcol1
	sub t_prow1,15
	loop pn1
	
	mov t_ink1,18
	mov cl,20
	pn3:
	call delay1
	inc t_ink
	call text_lodscrn
		pusha
		mov cl,15
		pn4:	
			call t_pen2
			inc t_prow1
		loop pn4
		popa
	inc t_pcol1
	sub t_prow1,15
	loop pn3
	
	mov t_ink1,44
	mov cl,145
	pn5:
	call delay1
	inc t_ink
	call text_lodscrn
		pusha
		mov cl,15
		pn6:	
			call t_pen2
			inc t_prow1
		loop pn6
		popa
	inc t_pcol1
	sub t_prow1,15
	loop pn5
	
	mov t_ink1,66
	mov cl,2
	pn7:
	call delay1
	inc t_ink
	call text_lodscrn
		pusha
		mov cl,15
		pn8:
			call t_pen2
			inc t_prow1
		loop pn8
		popa
	inc t_pcol1
	sub t_prow1,15
	loop pn7
	
	inc t_prow1
	mov cl,2
	pn9:
	call delay1
	inc t_ink
	call text_lodscrn
		pusha
		mov cl,13
		pn10:
			call t_pen2
			inc t_prow1
		loop pn10
		popa
	inc t_pcol1
	sub t_prow1,13
	loop pn9
	
	inc t_prow1
	mov cl,2
	pn11:
	call delay1
	inc t_ink
	call text_lodscrn
		pusha
		mov cl,11
		pn12:
			call t_pen2
			inc t_prow1
		loop pn12
		popa
	inc t_pcol1
	sub t_prow1,11
	loop pn11
	
	inc t_prow1
	mov cl,2
	pn13:
	call delay1
	inc t_ink
	call text_lodscrn
		pusha
		mov cl,9
		pn14:
			call t_pen2
			inc t_prow1
		loop pn14
		popa
	inc t_pcol1
	sub t_prow1,9
	loop pn13
	
	inc t_prow1
	mov cl,2
	pn15:
	call delay1
	inc t_ink
	call text_lodscrn
		pusha
		mov cl,7
		pn16:
			call t_pen2
			inc t_prow1
		loop pn16
		popa
	inc t_pcol1
	sub t_prow1,7
	loop pn15
	
	mov t_ink1,20
	inc t_prow1
	mov cl,2
	pn17:
	call delay1
	inc t_ink
	call text_lodscrn
		pusha
		mov cl,5
		pn18:
			call t_pen2
			inc t_prow1
		loop pn18
		popa
	inc t_pcol1
	sub t_prow1,5
	loop pn17
	
	inc t_prow1
	mov cl,2
	pn19:
	call delay1
	inc t_ink
	call text_lodscrn
		pusha
		mov cl,3
		pn20:
			call t_pen2
			inc t_prow1
		loop pn20
		popa
	inc t_pcol1
	sub t_prow1,3
	loop pn19
	
	inc t_prow1
	call t_pen2
	
	mov t_ink,11
	call text_lodscrn
	
popa
pencil endp
text_lodscrn proc near
	mov col,18
	mov row,11
	call set_cursor
	mov ah,09h
	lea dx,scrab 
	int 21h


	pusha
	
	mov t_pcol,75
	mov t_prow,50
	mov cl, 55
	t1:
		pusha
		mov cl,15
		t2:	
			call t_pen1
			inc t_prow
			
		loop t2
		popa
	inc t_pcol
	sub t_prow,15
	loop t1
	
	mov t_pcol,95
	mov t_prow,65
	mov cl,50
	t3:
		pusha
		mov cl,15
		t4:
			call t_pen1
			inc t_pcol
		loop t4
		popa
	inc t_prow
	sub t_pcol,15
	loop t3
	
	mov t_pcol,115
	mov t_prow,68
	mov cl,47
	x1:
		pusha
		mov cl,20
		x2:
			call t_pen1
			inc t_pcol
		loop x2
		popa
	inc t_prow
	sub t_pcol,19
	loop x1
	
	mov t_pcol,180
	mov t_prow,68
	mov cl,47
	x3:
		pusha
		mov cl,20
		x4:
			call t_pen1
			dec t_pcol
		loop x4
		popa
	inc t_prow
	add t_pcol,19
	loop x3
	
	mov t_pcol,165
	mov t_prow,50
	mov cl, 55
	t5:
		pusha
		mov cl,15
		t6:	
			call t_pen1
			inc t_prow
			
		loop t6
		popa
	inc t_pcol
	sub t_prow,15
	loop t5
	
	mov t_pcol,185
	mov t_prow,65
	mov cl,50
	t7:
		pusha
		mov cl,15
		t8:
			call t_pen1
			inc t_pcol
		loop t8
		popa
	inc t_prow
	sub t_pcol,15
	loop t7

	popa
	ret
text_lodscrn endp

t_pen2 proc near
	pusha
	
	mov ah,0ch
	mov al,t_ink1
	mov cx,t_pcol1
	mov dx,t_prow1
	int 10h
	
	popa
	ret
t_pen2 endp

t_pen1 proc near
	pusha
	
	mov ah,0ch
	mov al,t_ink
	mov cx,t_pcol
	mov dx,t_prow
	int 10h
	
	popa
	ret
t_pen1 endp
;---------------------------------------------
;-------------------------------------------MONGIE KART---------------------------------------------
main_kart proc near
	call clrscr
	call video_mode
	call hide_cursor
	call banner
	mov c_ink,0
	call mongcart_lodscren
	
	mov c_pcol1,90
	mov c_prow1,145
	mov c_ink1,34
	call select_car_boarder
	call car_menu
	call car_select
int 20h
main_kart endp

car_select proc near
pusha
	cmp car_choice,1
	if e call main_car
	cmp car_choice,2
	if e jmp main_jump
popa
ret
car_select endp

car_menu proc near
pusha
	mov c_ink,30
g_key:
	mov ah,11h
	int 16h
	jz no_found
	mov ah,10h
	int 16h
	cmp ah,50h
	cmp ah,50h
	if e jmp kart_dwn
	cmp ah,48h
	if e jmp kart_up
	cmp al,0dh
	if e jmp play_kart
	cmp al,1bh
	if e jmp quit_kart
jmp g_key

no_found:
	call delay_slow
	inc c_ink
	call mongcart_lodscren
	call delay_slow
	cmp c_ink,60
	if a mov c_ink,30
jmp g_key	
kart_dwn:
	mov c_pcol1,90
	mov c_prow1,145
	mov c_ink1,0
	call select_car_boarder
	
	mov car_choice,2
	mov c_pcol1,90
	mov c_prow1,164
	mov c_ink1,34
	call select_car_boarder
jmp g_key
kart_up:
	mov c_pcol1,90
	mov c_prow1,164
	mov c_ink1,0
	call select_car_boarder

	mov car_choice,1
	mov c_pcol1,90
	mov c_prow1,145
	mov c_ink1,34
	call select_car_boarder
jmp g_key
play_kart:
popa
ret
quit_kart:
call clrscr
int 20h
car_menu endp

select_car_boarder proc near
pusha
	
	mov cl,17
kart_vert1:
	call c_pen1
	inc c_prow1
	
loop kart_vert1
	
	mov cl,128
kart_hori1:
	call c_pen1
	inc c_pcol1
	
loop kart_hori1
	
	mov cl,17
kart_vert2:
	call c_pen1
	dec c_prow1
	
loop kart_vert2
	
	mov cl,128
kart_hori2:
	call c_pen1
	dec c_pcol1
	
loop kart_hori2

popa
ret 
select_car_boarder endp

banner proc near
pusha
	mov c_pcol,0
	mov c_prow,50
	mov cl,16
	bann:
	pusha
		mov cl,3
		bane:
			mov c_ink,15
			call boxs
			call delay1
			mov c_ink,18
			call boxs	
			call delay1
		loop bane
	popa
	sub c_prow,60
	add c_pcol,10
	;---------------
	pusha
		mov cl,3
		banes:
			mov c_ink,18
			call boxs
			call delay1
			mov c_ink,15
			call boxs	
			call delay1
		loop banes
	popa
	sub c_prow,60
	add c_pcol,10
	
	loop bann
	
	
	
	mov col,15
	mov row,12
	call set_cursor
	
	mov ah,09h
	lea dx,carbs
	int 21h
	
popa
ret
boxs proc near
pusha
	mov cl,10
	bocs1:
	pusha
		mov cl,10
		bocs2:
			call c_pen
			inc c_pcol
		loop bocs2
		popa
		sub c_pcol,10
		inc c_prow
	loop bocs1
popa
ret
boxs endp

banner endp

mongcart_lodscren proc near

pusha
inc c_ink
mov c_pcol,33
mov c_prow,100

	mov cl,36
	m_kart1:
		pusha
		mov cl,10
		kart_m1:
			call c_pen
			inc c_pcol
		loop kart_m1
		popa
		sub c_pcol,10
		dec c_prow
		
	loop m_kart1
	
	inc c_prow
	
	mov cl,18
	m_kart2:
		pusha
		mov cl,13
		kart_m2:
			call c_pen
			inc c_pcol
		loop kart_m2
		popa
		sub c_pcol,12
		inc c_prow
		
	loop m_kart2
	
	
	
	mov cl,18
	m_kart3:
		pusha
		mov cl,12
		kart_m3:
			call c_pen
			inc c_pcol
		loop kart_m3
		popa
		sub c_pcol,12
		inc c_prow
		
	loop m_kart3
	
	sub c_prow,19
	
	mov cl,18
	m_kart4:
		pusha
		mov cl,13
		kart_m4:
			call c_pen
			inc c_pcol
		loop kart_m4
		popa
		sub c_pcol,12
		dec c_prow
		
	loop m_kart4
	
	add c_pcol,11
	inc c_prow
	
	mov cl,36
	m_kart5:
		pusha
		mov cl,10
		kart_m5:
			call c_pen
			dec c_pcol
		loop kart_m5
		popa
		add c_pcol,10
		inc c_prow
		
	loop m_kart5
	
	
	;--------------------------------
	inc c_ink
	mov c_pcol,130
	mov c_prow,65
	
	mov cl,44
	o_kart1:
		pusha
		mov cl,10
		kart_o1:
			call c_pen
			inc c_prow
		loop kart_o1
		popa
		sub c_prow,10
		dec c_pcol
		
	loop o_kart1
	
	mov cl,26
	o_kart2:
		pusha
		mov cl,10
		kart_o2:
			call c_pen
			inc c_pcol
		loop kart_o2
		popa
		sub c_pcol,10
		inc c_prow
		
	loop o_kart2
	
	mov cl,45
	o_kart3:
		pusha
		mov cl,10
		kart_o3:
			call c_pen
			inc c_prow
		loop kart_o3
		popa
		sub c_prow,10
		inc c_pcol
		
	loop o_kart3
	
	sub c_pcol,1
	
	mov cl,26
	o_kart4:
		pusha
		mov cl,10
		kart_o4:
			call c_pen
			dec c_pcol
		loop kart_o4
		popa
		add c_pcol,10
		dec c_prow
		
	loop o_kart4
	;--------------------------------------
	inc c_ink
	add c_pcol,5
	mov c_prow,65
	
	mov cl,36
	n_kart1:
		pusha
		mov cl,10
		kart_n1:
			call c_pen
			inc c_pcol
		loop kart_n1
		popa
		sub c_pcol,10
		inc c_prow
	loop n_kart1
	
	sub c_prow,36
	mov cl,36
	n_kart2:
		pusha
		mov cl,12
		kart_n2:
			call c_pen
			inc c_pcol
		loop kart_n2
		popa
		sub c_pcol,11
		inc c_prow
	loop n_kart2
	
	inc c_pcol
	dec c_prow
	mov cl,36
	n_kart3:
		pusha
		mov cl,10
		kart_n3:
			call c_pen
			inc c_pcol
		loop kart_n3
		popa
		sub c_pcol,10
		dec c_prow
	loop n_kart3
	
	add c_pcol,50
	inc c_prow
	;-----------------------------------
	
	inc c_ink
	mov cl,36
	g_kart1:
		pusha
		mov cl,10
		kart_g1:
			call c_pen
			inc c_prow
		loop kart_g1
		popa
		sub c_prow,10
		dec c_pcol
		
	loop g_kart1
	
	mov cl,26
	g_kart2:
		pusha
		mov cl,10
		kart_g2:
			call c_pen
			inc c_pcol
		loop kart_g2
		popa
		sub c_pcol,10
		inc c_prow
		
	loop g_kart2
	
	mov cl,45
	g_kart3:
		pusha
		mov cl,10
		kart_g3:
			call c_pen
			inc c_prow
		loop kart_g3
		popa
		sub c_prow,10
		inc c_pcol
		
	loop g_kart3
	
	
	sub c_pcol,10
	
	mov cl,14
	g_kart4:
		pusha
		mov cl,10
		kart_g4:
			call c_pen
			inc c_pcol
		loop kart_g4
		popa
		sub c_pcol,10
		dec c_prow
		
	loop g_kart4
	inc c_prow
	mov cl,23
	g_kart5:
		pusha
		mov cl,10
		kart_g5:
			call c_pen
			inc c_prow
		loop kart_g5
		popa
		sub c_prow,10
		dec c_pcol
		
	loop g_kart5
	;----------------------------
	add c_pcol,37
	sub c_prow,13
	inc c_ink
	
	mov cl,36
	i_kart:
		pusha
		mov cl,10
		kart_i:
			call c_pen
			inc c_pcol
		loop kart_i
		popa
		sub c_pcol,10
		inc c_prow
	loop i_kart
	;------------------------------
	add c_pcol,15
	inc c_ink
	mov cl,36
	e_kart1:
		pusha
		mov cl,10
		kart_e1:
			call c_pen
			inc c_pcol
		loop kart_e1
		popa
		sub c_pcol,10
		dec c_prow
		
	loop e_kart1
	
	mov cl,45
	e_kart2:
		pusha
		mov cl,10
		kart_e2:
			call c_pen
			inc c_prow
		loop kart_e2
		popa
		sub c_prow,10
		inc c_pcol
		
	loop e_kart2
	
	sub c_pcol,44
	add c_prow,27
	
	mov cl,44
	e_kart3:
		pusha
		mov cl,10
		kart_e3:
			call c_pen
			inc c_prow
		loop kart_e3
		popa
		sub c_prow,10
		inc c_pcol
		
	loop e_kart3
	
	sub c_pcol,44
	sub c_prow,14
	
	
	mov cl,38
	e_kart5:
		pusha
		mov cl,10
		kart_e5:
			call c_pen
			inc c_prow
		loop kart_e5
		popa
		sub c_prow,10
		inc c_pcol
		
	loop e_kart5
popa
ret
mongcart_lodscren endp

c_pen proc near
	pusha
	
	mov ah,0ch
	mov al,c_ink
	mov cx,c_pcol
	mov dx,c_prow
	int 10h
	
	popa
	ret
c_pen endp

c_pen1 proc near
	pusha
	
	mov ah,0ch
	mov al,c_ink1
	mov cx,c_pcol1
	mov dx,c_prow1
	int 10h
	
	popa
	ret
c_pen1 endp
;-------------------------------------------------------------------------




main_car proc near
pusha
	call clrscr
	call text_mode
	call carprocess
popa
int 20h
main_car endp

carwin proc near
	pusha
	int 20h
	popa
	ret
carwin endp

bangga proc near
	pusha
                mov ah, 02h
                mov dh, carah
                mov dl, caral
                mov bh, 00h
                int 10h
                mov ah, 08h
                mov bh, 00h
                int 10h
                cmp al, '='
                if e call cargameover

		dec carbh
                mov ah, 02h
                mov dh, carbh
                mov dl, carbl
                mov bh, 00h
                int 10h
                mov ah, 08h
                mov bh, 00h
                int 10h
		inc carbh
                cmp al, '='
                if e call cargameover

		add caral, 2
                mov ah, 02h
                mov dh, carah
                mov dl, caral
                mov bh, 00h
                int 10h
                mov ah, 08h
                mov bh, 00h
                int 10h
		sub caral, 2
                cmp al, '='
                if e call cargameover

		add carbl, 4
		dec carbh
                mov ah, 02h
                mov dh, carbh
                mov dl, carbl
                mov bh, 00h
                int 10h
                mov ah, 08h
                mov bh, 00h
                int 10h
		sub carbl, 4
		inc carbh
                cmp al, '='
                if e call cargameover
	popa
	ret
bannga endp

carscoring proc near
	pusha
	cmp carscore, 0
	if e jmp carekcit
	mov dx, carscore
	carscar:
		sub dx, 10
		js carscar0
		inc cartensplace
		jmp carscar
	carscar0:	
		add dx, 10
		mov caronesplace, dx
		lea si, carones
		cmp caronesplace, 0
		if e mov cl, '0'
		cmp caronesplace, 1
		if e mov cl, '1'
		cmp caronesplace, 2
		if e mov cl, '2'
		cmp caronesplace, 3
		if e mov cl, '3'
		cmp caronesplace, 4
		if e mov cl, '4'
		cmp caronesplace, 5
		if e mov cl, '5'
		cmp caronesplace, 6
		if e mov cl, '6'
		cmp caronesplace, 7
		if e mov cl, '7'
		cmp caronesplace, 8
		if e mov cl, '8'
		cmp caronesplace, 9
		if e mov cl, '9'
		mov [si], cl
		mov dh, cartensplace
		jmp carscar1
	carscar1:
		sub dh, 10
		js carscar11
		inc carhundplace
		jmp carscar1
	carscar11:
		add dh, 10
		mov cartensplace, dh
		lea si, cartens
		cmp cartensplace, 0
		if e mov dl, '0'
		cmp cartensplace, 1
		if e mov dl, '1'
		cmp cartensplace, 2
		if e mov dl, '2'
		cmp cartensplace, 3
		if e mov dl, '3'
		cmp cartensplace, 4
		if e mov dl, '4'
		cmp cartensplace, 5
		if e mov dl, '5'
		cmp cartensplace, 6
		if e mov dl, '6'
		cmp cartensplace, 7
		if e mov dl, '7'
		cmp cartensplace, 8
		if e mov dl, '8'
		cmp cartensplace, 9
		if e mov dl, '9'
		mov [si], dl
		jmp carscar12
	carscar12:
		lea di, carhundreds
		cmp carhundplace, 0
		if e mov dl, '0'
		cmp carhundplace, 1
		if e mov dl, '1'
		cmp carhundplace, 2
		if e mov dl, '2'
		cmp carhundplace, 3
		if e mov dl, '3'
		cmp carhundplace, 4
		if e mov dl, '4'
		cmp carhundplace, 5
		if e mov dl, '5'
		cmp carhundplace, 6
		if e mov dl, '6'
		mov [di], dl
	mov ah, 02	
	mov bh, 00
	mov dh, 5
	mov dl, 65
	int 10h
	mov ah, 09
	lea dx, carones
	int 21h
	mov ah, 02	
	mov bh, 00
	mov dh, 5
	mov dl, 64
	int 10h
	mov ah, 09
	lea dx, cartens
	int 21h
	mov ah, 02	
	mov bh, 00
	mov dh, 5
	mov dl, 63
	int 10h
	mov ah, 09
	lea dx, carhundreds
	int 21h
	
	carekcit:
		mov cartensplace, 0
		mov carhundplace, 0
		popa
		ret
carscoring endp

cargameover proc near
	pusha
	int 20h
	popa
	ret
cargameover endp

carprocess proc near
	pusha
	b10:
		call carclrscreen
		mov ah, 02
		mov bh, 0
		mov dx, 0000h
		int 10h
		mov ah, 09
		lea dx, car0 ;boarder------------------------
		int 21h
		cmp carsign, 1
		if e call incrementor
		call badlis
		call carprint
		call carscoring
		call cardelay
		call movecar
		call bangga
		cmp carsign, 1
		if e inc carscore
		cmp carscore, 501
		if e call carwin
		jmp b10
	popa
	ret
carprocess endp

printchar proc near
	pusha
	mov ah, 09h
	lea dx, line
	int 21h
	popa
	ret
printchar endp



movecar proc near
        pusha	
	car10:
		mov ah, 01h
                int 16h
                jz carpadayun
                mov ah, 00h
                int 16h
		mov carsign, 1
		jmp carcontinue
	carpadayun:
		jmp carexit
	carcontinue:
                cmp al, 'd'
                if e jmp carright
                cmp al, 'a'
                if e jmp carleft
                cmp al, 'x'
                if e jmp carexit
		jmp carr
	carexit:
                popa
                ret
        carright:
        add carbl, 6
		inc caral
		inc carcl
		inc cardl
                mov ah, 02h
                mov dh, carbh
                mov dl, carbl
                mov bh, 00h
                int 10h
                mov ah, 08h
                mov bh, 00h
                int 10h
		sub carbl, 5
                cmp al, ' '
                if e jmp carr
                dec carbl
		dec caral
		dec carcl
		dec cardl
                jmp carr
        carleft:
                dec carbl
		dec caral
		dec carcl
		dec cardl
                mov ah, 02h
                mov dh, carbh
                mov dl, carbl
                mov bh, 00h
                int 10h
                mov ah, 08h
                mov bh, 00h
                int 10h
                cmp al, ' '
                if e jmp carr
                inc carbl
		inc caral
		inc carcl
		inc cardl
                jmp carr
	carr:
		popa
		ret
movecar endp



incrementor proc near
	pusha
	inc dh1
	inc dh2
	inc dh3
	inc dh4
	inc dh5
	inc dh6
	inc dh7
	inc dh8
	inc dh9
	inc dh10
	inc dha
	inc dhb
	inc dhc
	inc dhd
	cmp dh1, 22
	if e mov dh1, 2
	cmp dh2, 22
	if e mov dh2, 2
	cmp dh3, 22
	if e mov dh3, 2
	cmp dh4, 22
	if e mov dh4, 2
	cmp dh5, 22
	if e mov dh5, 2
	cmp dh6, 22
	if e mov dh6, 2
	cmp dh7, 22
	if e mov dh7, 2
	cmp dh8, 22
	if e mov dh8, 2
	cmp dh9, 22
	if e mov dh9, 2
	cmp dh10, 22
	if e mov dh10, 2

	cmp dha, 22
	if e mov dha, 2
	cmp dhb, 22
	if e mov dhb, 2
	cmp dhc, 22
	if e mov dhc, 2
	cmp dhd, 22
	if e mov dhd, 2
	popa
	ret
incrementor endp

carprint proc near
	pusha
	mov ah, 02
	mov bh, 0
	mov dh, carah
	mov dl, caral
	int 10h
	
	mov ah, 09
	lea dx, cara
	int 21h
;------------------------------	
	mov ah, 02
	mov bh, 0
	mov dh, carbh
	mov dl, carbl
	int 10h
	
	mov ah, 09
	lea dx, carb
	int 21h
;-----------------------------------	
	mov ah, 02
	mov bh, 0
	mov dh, carch
	mov dl, carcl
	int 10h
	
	mov ah, 09
	lea dx, carc
	int 21h
;---------------------------------------
	mov ah, 02
	mov bh, 0
	mov dh, cardh
	mov dl, cardl
	int 10h
	
	mov ah, 09
	lea dx, card
	int 21h
;--------------------------------------
	popa
	ret
carprint endp

carclrscreen proc near
	pusha
	mov ax, 0600h
	mov bh, 70h	
	mov cx, 0000h
	mov dx, 184fh
	int 10h
	popa
	ret
carclrscreen endp

cardelay proc near
        pusha
        mov cx, 400 
        carlooper:
                call cardelay1
                call cardelay1
                call cardelay1
                call cardelay1
                loop carlooper
        popa
        ret
cardelay endp

cardelay1 proc near      
        pusha
        mov cx, 70
        carlooper1:
                nop
                nop
                nop
                nop
                nop
                loop carlooper1
        popa
        ret
cardelay1 endp

badlis proc near
	pusha
	
	mov ah, 02
	mov bh, 0
	mov dh, dha
	mov dl, 17
	int 10h
	mov ah, 09
	lea dx, line1
	int 21h
	mov ah, 02
	mov bh, 0
	mov dh, dhb
	mov dl, 17
	int 10h
	mov ah, 09
	lea dx, line2
	int 21h
	mov ah, 02
	mov bh, 0
	mov dh, dhc
	mov dl, 17
	int 10h
	mov ah, 09
	lea dx, line3
	int 21h
	mov ah, 02
	mov bh, 0
	mov dh, dhd
	mov dl, 17
	int 10h
	mov ah, 09
	lea dx, line4
	int 21h

	mov ah, 02
	mov bh, 0
	mov dh, dh1
	mov dl, 32
	int 10h
	call printchar
	mov ah, 02
	mov bh, 0
	mov dh, dh2
	mov dl, 32
	int 10h
	call printchar
	mov ah, 02
	mov bh, 0
	mov dh, dh3
	mov dl, 32
	int 10h
	call printchar
	mov ah, 02
	mov bh, 0
	mov dh, dh4
	mov dl, 32
	int 10h
	call printchar
	mov ah, 02
	mov bh, 0
	mov dh, dh5
	mov dl, 32
	int 10h
	call printchar
	mov ah, 02
	mov bh, 0
	mov dh, dh6
	mov dl, 32
	int 10h
	call printchar
	mov ah, 02
	mov bh, 0
	mov dh, dh7
	mov dl, 32
	int 10h
	call printchar
	mov ah, 02
	mov bh, 0
	mov dh, dh8
	mov dl, 32
	int 10h
	call printchar
	mov ah, 02
	mov bh, 0
	mov dh, dh9
	mov dl, 32
	int 10h
	call printchar
	mov ah, 02
	mov bh, 0
	mov dh, dh10
	mov dl, 32
	int 10h
	call printchar	
	call carprint
	popa
	ret
badlis endp

