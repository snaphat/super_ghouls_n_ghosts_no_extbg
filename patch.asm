lorom

; Empty space start.
org $16B6D0

; Enable BG1 instead of BG2.
pushpc
{
    org $03B29E : db $11 ; lvl 3 boss
    org $00BB04 : db $11 ; lvl 4.1
    org $00BB05 : db $11 ; lvl 4.2
}
pullpc

; Mask off high bit of tiles.
pushpc
{
    ; lvl 3 boss
    org $179450                               ; Address start
    db $02, $00, $52, $06, $00, $52, $53, $04 ; $179450
    db $00, $51, $0C, $00, $52, $52, $0C, $00 ; $179458
    db $51, $53, $0C, $00, $46, $53, $1C, $00 ; $179460
    db $53, $46, $53, $1C, $00, $52, $45, $53 ; $179468
    db $1C, $00, $52, $45, $52, $1C, $00, $51 ; $179470
    db $45, $52, $1E, $00, $51, $45, $51, $53 ; $179478
    db $1E, $00, $51, $45, $46, $53, $1E, $00 ; $179480
    db $52, $51, $45, $52, $C0, $00, $51, $53 ; $179488
    db $C0, $00, $52, $51, $E0, $00, $53, $46 ; $179490
    db $53, $60, $00, $46, $51, $70, $00, $51 ; $179498
    db $46, $53, $78, $00, $52, $45, $52, $53 ; $1794A0
    db $78, $00, $53, $46, $51, $52, $3C, $00 ; $1794A8
    db $52, $45, $51, $52, $1E, $00, $53, $51 ; $1794B0
    db $45, $51, $1F, $00, $53, $51, $45, $46 ; $1794B8
    db $53, $0F, $00, $51, $46, $45, $52, $0F ; $1794C0
    db $00, $52, $51, $45, $51, $0F, $00, $52 ; $1794C8
    db $51, $45, $46, $0F, $00, $53, $51, $46 ; $1794D0
    db $45, $07, $00, $51, $51, $45, $07, $00 ; $1794D8
    db $52, $51, $45, $3E, $00, $53, $46, $45 ; $1794E0
    db $51, $53, $1E, $00, $51, $46, $51, $52 ; $1794E8
    db $0F, $00, $47, $47, $47, $52, $3F, $00 ; $1794F0
    db $51, $46, $45, $45, $51, $53, $77, $52 ; $1794F8
    db $00, $47, $53, $46, $46, $51, $8F, $00 ; $179500
    db $52, $47, $53, $52, $51, $C7, $00, $46 ; $179508
    db $52, $47, $47, $47, $7D, $45, $51, $52 ; $179510
    db $00, $51, $46, $46, $00, $00, $00, $00 ; $179518
    db $F0, $00, $51, $46, $52, $53, $73, $52 ; $179520
    db $51, $45, $51, $53, $00, $3D, $52, $53 ; $179528
    db $46, $45, $46, $51, $D1, $30, $52, $53 ; $179530
    db $51, $51, $AF, $51, $47, $46, $52, $53 ; $179538
    db $53, $52, $BC, $53, $51, $45, $46, $51 ; $179540
    db $52, $00, $00, $00, $00, $00, $00, $0F ; $179548
    db $00, $52, $51, $46, $46, $3E, $46, $51 ; $179550
    db $51, $51, $45, $45, $87, $53, $52, $52 ; $179558
    db $51, $46, $1E, $52, $53, $53, $53, $53 ; $179560
    db $00, $53, $07, $00, $52, $51, $46, $07 ; $179568
    db $00, $53, $52, $51, $03, $00, $52, $51 ; $179570
    db $03, $00, $52, $52, $03, $00, $53, $52 ; $179578
    db $09, $00, $51, $52, $19, $00, $46, $52 ; $179580
    db $53, $38, $00, $46, $45, $53, $BE, $46 ; $179588
    db $45, $51, $53, $47, $52, $51, $F1, $47 ; $179590
    db $45, $45, $46, $52, $53, $F8, $47, $46 ; $179598
    db $45, $45, $51, $53, $77, $51, $46, $45 ; $1795A0
    db $45, $53, $47, $53, $BB, $51, $52, $46 ; $1795A8
    db $45, $46, $53, $47, $3D, $52, $51, $46 ; $1795B0
    db $45, $46, $53, $1F, $52, $51, $45, $45 ; $1795B8
    db $51, $53, $9E, $52, $53, $51, $46, $45 ; $1795C0
    db $46, $AB, $51, $46, $53, $46, $52, $53 ; $1795C8
    db $3F, $52, $53, $46, $45, $46, $51, $53 ; $1795D0
    db $3F, $47, $53, $53, $52, $46, $51, $52 ; $1795D8
    db $BC, $51, $52, $46, $45, $53, $52, $37 ; $1795E0
    db $53, $52, $52, $52, $51, $51, $37, $47 ; $1795E8
    db $53, $53, $52, $51, $51, $43, $47, $53 ; $1795F0
    db $53, $53, $D2, $1C, $53, $52, $52, $52 ; $1795F8
    db $83, $47, $53, $53, $53, $00, $47, $CD ; $179600
    db $54, $53, $47, $55, $55, $47, $ED, $55 ; $179608
    db $52, $53, $47, $45, $56, $54, $ED, $55 ; $179610
    db $51, $52, $53, $56, $56, $54, $F8, $54 ; $179618
    db $51, $51, $52, $53, $47, $F8, $47, $51 ; $179620
    db $46, $51, $52, $53, $B1, $51, $52, $46 ; $179628
    db $46, $46, $3E, $00, $51, $51, $53, $52 ; $179630
    db $52, $3E, $00, $53, $53, $51, $45, $53 ; $179638
    db $B0, $53, $00, $51, $46, $D5, $51, $00 ; $179640
    db $52, $45, $46, $53, $86, $51, $52, $45 ; $179648
    db $46, $16, $46, $51, $51, $51, $3F, $00 ; $179650
    db $53, $52, $51, $46, $46, $51, $03, $00 ; $179658
    db $53, $52, $CF, $52, $00, $53, $51, $45 ; $179660
    db $45, $51, $3F, $00, $53, $52, $51, $46 ; $179668
    db $45, $51, $7B, $51, $00, $00, $52, $52 ; $179670
    db $45, $46, $6F, $53, $00, $00, $52, $52 ; $179678
    db $46, $46, $B3, $52, $51, $53, $00, $46 ; $179680
    db $46, $7E, $45, $46, $51, $47, $53, $52 ; $179688
    db $51, $7D, $51, $45, $46, $53, $47, $52 ; $179690
    db $45, $5D, $51, $46, $52, $47, $53, $45 ; $179698
    db $9D, $52, $53, $51, $51, $51, $53, $3E ; $1796A0
    db $52, $51, $46, $45, $46, $51, $1C, $51 ; $1796A8
    db $45, $45, $45, $5C, $51, $52, $46, $45 ; $1796B0
    db $46, $40, $51, $52, $61, $51, $52, $52 ; $1796B8
    db $52, $A1, $52, $51, $53, $53, $C5, $53 ; $1796C0
    db $51, $52, $52, $47, $E9, $46, $47, $53 ; $1796C8
    db $52, $45, $45, $F8, $45, $53, $47, $53 ; $1796D0
    db $52, $51, $77, $52, $47, $53, $53, $46 ; $1796D8
    db $45, $46, $77, $52, $47, $53, $53, $51 ; $1796E0
    db $45, $46, $C7, $53, $52, $47, $52, $46 ; $1796E8
    db $46, $8F, $47, $53, $53, $52, $51, $46 ; $1796F0
    db $C5, $52, $47, $53, $53, $46, $B5, $52 ; $1796F8
    db $53, $51, $51, $53, $46, $B7, $53, $00 ; $179700
    db $46, $51, $47, $52, $45, $3F, $00, $53 ; $179708
    db $46, $52, $47, $53, $46, $1F, $00, $53 ; $179710
    db $51, $53, $47, $46, $0F, $00, $52, $52 ; $179718
    db $47, $51, $0F, $00, $53, $51, $52, $47 ; $179720
    db $07, $00, $52, $51, $51, $03, $00, $52 ; $179728
    db $51, $01, $00, $51, $C1, $47, $51, $53 ; $179730
    db $53, $79, $52, $53, $47, $53, $53, $51 ; $179738
    db $F0, $46, $52, $47, $53, $52, $F8, $52 ; $179740
    db $47, $53, $51, $46, $51, $78, $53, $51 ; $179748
    db $46, $51, $52, $5F, $51, $46, $52, $53 ; $179750
    db $53, $00, $00, $F0, $00, $46, $51, $52 ; $179758
    db $53, $E0, $00, $51, $53, $53, $B6, $51 ; $179760
    db $52, $46, $46, $52, $53, $27, $C6, $C5 ; $179768
    ; lvl 4.1
    org  $00DBE4 : fillbyte $20 : fill 16
    ; lvl 4.2
    org  $00DC25 : fillbyte $30 : fill 27
    org  $00DC44 : fillbyte $20 : fill 16
    org  $00DC56 : fillbyte $40 : fill 06
}
pullpc

; ; Increase priority of sprites.
; sprite_priority_increase:
; {
;     ora #$1000
;     sta $7e2006, x
;     rtl
; }

; ; increase priority of sprites
; pushpc
; {
;     ; Change mask off value from $FC to $FF.
;     org $0187DB : db $FF

;     ; Jump to new code.
;     org $058140
;     jsl sprite_priority_increase

; }
; pullpc
