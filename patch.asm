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
    db $52, $46, $46, $52, $53, $27, $46, $45 ; $179768
    db $51, $53, $51, $4F, $46, $51, $51, $51 ; $179770
    db $53, $52, $87, $51, $52, $52, $53, $52 ; $179778
    db $39, $53, $52, $52, $52, $52, $C5, $53 ; $179780
    db $00, $00, $47, $51, $03, $00, $53, $51 ; $179788
    db $01, $00, $52, $00, $00, $00, $00, $00 ; $179790
    db $00, $00, $00, $80, $00, $53, $80, $00 ; $179798
    db $52, $80, $00, $51, $80, $00, $51, $00 ; $1797A0
    db $00, $00, $00, $00, $00, $E0, $00, $42 ; $1797A8
    db $43, $42, $F8, $00, $51, $42, $43, $43 ; $1797B0
    db $42, $DB, $42, $45, $51, $44, $43, $00 ; $1797B8
    db $00, $F3, $44, $46, $45, $52, $42, $43 ; $1797C0
    db $00, $6F, $52, $51, $46, $42, $44, $44 ; $1797C8
    db $42, $97, $52, $53, $46, $42, $44, $45 ; $1797D0
    db $1F, $53, $51, $46, $52, $42, $44, $9D ; $1797D8
    db $53, $47, $52, $51, $46, $42, $F5, $51 ; $1797E0
    db $54, $47, $53, $52, $45, $41, $3F, $54 ; $1797E8
    db $47, $51, $45, $45, $46, $53, $DB, $51 ; $1797F0
    db $54, $47, $46, $46, $52, $41, $AF, $51 ; $1797F8
    db $47, $46, $52, $52, $41, $43, $3E, $45 ; $179800
    db $51, $53, $53, $41, $43, $80, $00, $42 ; $179808
    db $C0, $00, $44, $42, $E0, $00, $45, $44 ; $179810
    db $42, $F0, $00, $44, $45, $43, $41, $F0 ; $179818
    db $00, $43, $45, $44, $42, $F8, $00, $44 ; $179820
    db $45, $44, $43, $41, $8F, $44, $45, $42 ; $179828
    db $00, $00, $00, $1F, $45, $44, $43, $41 ; $179830
    db $00, $00, $CF, $53, $46, $52, $41, $43 ; $179838
    db $44, $42, $8E, $53, $52, $42, $43, $42 ; $179840
    db $8D, $53, $52, $43, $42, $55, $2B, $53 ; $179848
    db $52, $42, $55, $45, $33, $53, $46, $52 ; $179850
    db $55, $56, $B3, $52, $53, $46, $51, $53 ; $179858
    db $55, $A3, $51, $53, $52, $52, $53, $BE ; $179860
    db $52, $53, $51, $46, $45, $45, $46, $7B ; $179868
    db $42, $43, $43, $45, $44, $41, $00, $3F ; $179870
    db $53, $42, $45, $44, $43, $41, $00, $7F ; $179878
    db $55, $54, $53, $43, $45, $44, $42, $00 ; $179880
    db $F5, $43, $56, $55, $54, $42, $45, $41 ; $179888
    db $F5, $43, $56, $55, $54, $42, $45, $41 ; $179890
    db $ED, $43, $55, $54, $53, $45, $44, $42 ; $179898
    db $3F, $53, $42, $43, $45, $44, $43, $42 ; $1798A0
    db $D9, $43, $53, $42, $45, $44, $42, $B7 ; $1798A8
    db $52, $53, $46, $45, $54, $55, $55, $2F ; $1798B0
    db $52, $46, $54, $55, $56, $56, $AF, $52 ; $1798B8
    db $51, $46, $55, $56, $45, $56, $F8, $56 ; $1798C0
    db $51, $52, $51, $52, $55, $8F, $52, $46 ; $1798C8
    db $54, $55, $56, $56, $87, $52, $46, $54 ; $1798D0
    db $55, $55, $C7, $52, $45, $51, $53, $53 ; $1798D8
    db $53, $5F, $51, $46, $52, $52, $42, $44 ; $1798E0
    db $45, $9F, $53, $54, $43, $45, $44, $43 ; $1798E8
    db $42, $ED, $42, $55, $54, $53, $43, $45 ; $1798F0
    db $43, $CF, $53, $56, $55, $43, $45, $42 ; $1798F8
    db $44, $CF, $53, $56, $55, $43, $45, $42 ; $179900
    db $44, $ED, $42, $55, $54, $53, $44, $44 ; $179908
    db $43, $EE, $44, $54, $53, $42, $45, $43 ; $179910
    db $43, $B5, $43, $42, $45, $45, $42, $44 ; $179918
    db $3E, $45, $44, $43, $43, $43, $44, $80 ; $179920
    db $00, $41, $C0, $00, $42, $41, $E0, $00 ; $179928
    db $43, $42, $41, $E0, $00, $44, $42, $41 ; $179930
    db $F0, $00, $44, $43, $42, $41, $F0, $00 ; $179938
    db $45, $44, $42, $41, $F8, $00, $45, $44 ; $179940
    db $42, $42, $41, $F8, $00, $44, $43, $42 ; $179948
    db $41, $41, $C7, $53, $00, $00, $52, $51 ; $179950
    db $46, $9F, $53, $00, $52, $51, $51, $52 ; $179958
    db $46, $3E, $52, $51, $46, $45, $46, $51 ; $179960
    db $8F, $53, $00, $52, $51, $52, $51, $84 ; $179968
    db $53, $00, $52, $EA, $46, $53, $52, $51 ; $179970
    db $45, $52, $9F, $53, $00, $52, $46, $51 ; $179978
    db $52, $46, $C7, $53, $00, $00, $52, $51 ; $179980
    db $51, $9F, $51, $46, $52, $53, $43, $44 ; $179988
    db $43, $7D, $45, $46, $46, $51, $52, $41 ; $179990
    db $44, $3F, $46, $51, $52, $52, $53, $41 ; $179998
    db $45, $E1, $53, $51, $51, $52, $43, $5B ; $1799A0
    db $52, $53, $45, $46, $53, $41, $6F, $46 ; $1799A8
    db $52, $45, $53, $54, $55, $55, $FC, $56 ; $1799B0
    db $51, $45, $46, $52, $54, $55, $6F, $52 ; $1799B8
    db $46, $51, $55, $56, $45, $56, $1F, $43 ; $1799C0
    db $44, $44, $44, $45, $45, $03, $43, $44 ; $1799C8
    db $44, $69, $43, $42, $42, $44, $42, $F4 ; $1799D0
    db $42, $45, $45, $44, $43, $44, $3E, $42 ; $1799D8
    db $44, $45, $43, $43, $45, $DD, $42, $55 ; $1799E0
    db $54, $44, $45, $43, $45, $3F, $55, $54 ; $1799E8
    db $42, $44, $44, $43, $43, $FC, $43, $56 ; $1799F0
    db $55, $54, $41, $42, $45, $F1, $42, $45 ; $1799F8
    db $45, $44, $43, $41, $F8, $41, $44, $44 ; $179A00
    db $43, $42, $42, $F0, $41, $43, $42, $42 ; $179A08
    db $42, $C5, $42, $43, $43, $41, $41, $4B ; $179A10
    db $42, $43, $43, $41, $41, $65, $42, $44 ; $179A18
    db $43, $43, $41, $B4, $42, $45, $45, $43 ; $179A20
    db $44, $A5, $43, $45, $45, $44, $42, $80 ; $179A28
    db $00, $41, $80, $00, $41, $80, $00, $41 ; $179A30
    db $C0, $00, $41, $41, $C0, $00, $41, $41 ; $179A38
    db $E0, $00, $41, $41, $41, $E0, $00, $41 ; $179A40
    db $41, $41, $E0, $00, $42, $41, $41, $81 ; $179A48
    db $53, $00, $52, $DD, $51, $00, $52, $46 ; $179A50
    db $45, $45, $53, $9F, $53, $00, $52, $51 ; $179A58
    db $46, $51, $52, $C3, $53, $00, $00, $52 ; $179A60
    db $46, $9F, $53, $00, $52, $51, $46, $51 ; $179A68
    db $52, $E3, $45, $53, $52, $51, $51, $52 ; $179A70
    db $9D, $53, $00, $52, $52, $52, $51, $1F ; $179A78
    db $00, $53, $53, $53, $52, $52, $5F, $52 ; $179A80
    db $51, $53, $54, $55, $56, $56, $4F, $53 ; $179A88
    db $52, $54, $54, $55, $55, $F8, $54, $53 ; $179A90
    db $51, $51, $53, $47, $F8, $47, $52, $51 ; $179A98
    db $45, $51, $53, $67, $46, $52, $51, $51 ; $179AA0
    db $52, $53, $D3, $52, $46, $51, $53, $53 ; $179AA8
    db $43, $E3, $53, $51, $52, $52, $42, $44 ; $179AB0
    db $0F, $52, $53, $43, $44, $43, $3F, $55 ; $179AB8
    db $54, $47, $42, $45, $43, $42, $9F, $54 ; $179AC0
    db $55, $47, $43, $44, $42, $44, $3F, $54 ; $179AC8
    db $47, $42, $44, $43, $42, $44, $F4, $43 ; $179AD0
    db $47, $47, $42, $44, $42, $A9, $43, $42 ; $179AD8
    db $44, $42, $42, $3B, $44, $43, $42, $43 ; $179AE0
    db $43, $42, $20, $43, $42, $47, $43, $42 ; $179AE8
    db $44, $45, $45, $B5, $43, $45, $45, $44 ; $179AF0
    db $44, $42, $E1, $43, $44, $42, $44, $42 ; $179AF8
    db $6C, $42, $44, $43, $44, $43, $59, $42 ; $179B00
    db $43, $43, $43, $41, $A5, $42, $43, $43 ; $179B08
    db $41, $41, $E0, $41, $42, $42, $42, $0F ; $179B10
    db $43, $41, $42, $41, $41, $F8, $41, $45 ; $179B18
    db $44, $44, $42, $42, $E0, $00, $42, $41 ; $179B20
    db $41, $E0, $00, $41, $41, $41, $C0, $00 ; $179B28
    db $41, $41, $C0, $00, $41, $41, $80, $00 ; $179B30
    db $41, $80, $00, $41, $00, $00, $00, $00 ; $179B38
    db $01, $00, $53, $03, $00, $53, $53, $07 ; $179B40
    db $00, $53, $52, $51, $01, $00, $53, $03 ; $179B48
    db $00, $53, $53, $07, $00, $53, $52, $51 ; $179B50
    db $03, $00, $53, $53, $00, $00, $EC, $51 ; $179B58
    db $53, $53, $52, $46, $46, $F4, $46, $52 ; $179B60
    db $51, $51, $52, $45, $59, $46, $45, $51 ; $179B68
    db $52, $51, $D1, $51, $53, $52, $52, $52 ; $179B70
    db $25, $53, $52, $52, $52, $53, $46, $45 ; $179B78
    db $52, $52, $45, $B6, $46, $52, $51, $52 ; $179B80
    db $51, $45, $E6, $51, $53, $53, $52, $52 ; $179B88
    db $46, $EC, $43, $51, $52, $53, $44, $44 ; $179B90
    db $F8, $43, $51, $51, $52, $42, $45, $3F ; $179B98
    db $52, $53, $41, $45, $44, $42, $42, $0F ; $179BA0
    db $53, $43, $45, $45, $44, $F9, $42, $45 ; $179BA8
    db $46, $52, $53, $41, $44, $E3, $55, $46 ; $179BB0
    db $53, $54, $54, $42, $D9, $55, $52, $54 ; $179BB8
    db $56, $56, $54, $D3, $56, $52, $55, $45 ; $179BC0
    db $55, $54, $1E, $44, $45, $45, $45, $45 ; $179BC8
    db $1E, $43, $44, $44, $44, $44, $2B, $43 ; $179BD0
    db $44, $42, $42, $42, $55, $43, $42, $44 ; $179BD8
    db $42, $42, $8B, $43, $45, $45, $42, $44 ; $179BE0
    db $DC, $43, $44, $45, $42, $44, $45, $9B ; $179BE8
    db $44, $42, $43, $43, $45, $43, $B7, $42 ; $179BF0
    db $41, $45, $43, $44, $45, $44, $8F, $42 ; $179BF8
    db $43, $41, $41, $00, $00, $C3, $41, $42 ; $179C00
    db $42, $00, $00, $83, $41, $42, $00, $00 ; $179C08
    db $D1, $41, $42, $42, $42, $00, $E1, $41 ; $179C10
    db $42, $43, $42, $00, $F0, $41, $44, $42 ; $179C18
    db $43, $42, $F8, $41, $45, $43, $43, $42 ; $179C20
    db $42, $AF, $43, $45, $44, $42, $42, $41 ; $179C28
    db $41, $03, $00, $53, $53, $03, $00, $52 ; $179C30
    db $51, $01, $00, $53, $00, $00, $03, $00 ; $179C38
    db $53, $53, $07, $00, $53, $52, $51, $03 ; $179C40
    db $00, $53, $53, $00, $00, $0F, $53, $52 ; $179C48
    db $52, $51, $52, $F2, $53, $46, $45, $45 ; $179C50
    db $51, $52, $AC, $51, $52, $46, $52, $53 ; $179C58
    db $1F, $53, $52, $46, $52, $51, $45, $75 ; $179C60
    db $52, $51, $46, $51, $46, $51, $1F, $45 ; $179C68
    db $51, $52, $46, $51, $52, $1C, $52, $53 ; $179C70
    db $51, $51, $E0, $52, $53, $53, $53, $D9 ; $179C78
    db $55, $53, $54, $56, $56, $54, $9C, $54 ; $179C80
    db $53, $55, $55, $55, $C1, $54, $53, $47 ; $179C88
    db $47, $C1, $47, $51, $53, $42, $3F, $46 ; $179C90
    db $51, $52, $53, $42, $44, $44, $6F, $53 ; $179C98
    db $52, $52, $42, $44, $43, $43, $1F, $53 ; $179CA0
    db $42, $44, $44, $43, $42, $9F, $53, $52 ; $179CA8
    db $42, $44, $44, $43, $43, $B7, $42, $47 ; $179CB0
    db $45, $43, $43, $45, $44, $DC, $44, $47 ; $179CB8
    db $43, $43, $42, $45, $BA, $44, $42, $43 ; $179CC0
    db $42, $43, $43, $B9, $43, $44, $42, $C2 ; $179CC8
    db $44, $42, $42, $43, $42, $42, $70, $42 ; $179CD0
    db $43, $44, $43, $00, $43, $DC, $44, $43 ; $179CD8
    db $43, $45, $45, $45, $AF, $43, $45, $44 ; $179CE0
    db $42, $42, $41, $41, $2F, $43, $44, $42 ; $179CE8
    db $41, $41, $41, $67, $42, $44, $43, $41 ; $179CF0
    db $41, $00, $F1, $41, $43, $43, $42, $42 ; $179CF8
    db $00, $2F, $42, $41, $41, $41, $00, $00 ; $179D00
    db $03, $41, $00, $00, $A7, $41, $43, $42 ; $179D08
    db $00, $00, $00, $C7, $41, $42, $42, $00 ; $179D10
    db $00, $00, $00, $00, $03, $00, $52, $53 ; $179D18
    db $0F, $00, $52, $51, $45, $51, $07, $00 ; $179D20
    db $53, $52, $53, $07, $00, $53, $53, $53 ; $179D28
    db $3F, $00, $53, $52, $46, $45, $51, $46 ; $179D30
    db $1F, $00, $53, $53, $46, $53, $51, $0F ; $179D38
    db $00, $53, $53, $53, $52, $E1, $53, $00 ; $179D40
    db $00, $00, $52, $DD, $51, $00, $52, $46 ; $179D48
    db $45, $45, $53, $9F, $53, $00, $52, $51 ; $179D50
    db $46, $51, $52, $1F, $00, $53, $53, $53 ; $179D58
    db $52, $46, $3F, $00, $53, $52, $51, $46 ; $179D60
    db $51, $52, $E3, $45, $00, $52, $51, $51 ; $179D68
    db $52, $9D, $53, $00, $52, $52, $52, $51 ; $179D70
    db $43, $53, $00, $00, $52, $52, $07, $00 ; $179D78
    db $53, $53, $53, $07, $00, $52, $51, $46 ; $179D80
    db $07, $00, $53, $53, $52, $03, $00, $53 ; $179D88
    db $53, $07, $00, $53, $53, $52, $0F, $00 ; $179D90
    db $53, $52, $51, $45, $07, $00, $53, $53 ; $179D98
    db $52, $3F, $00, $52, $51, $46, $51, $52 ; $179DA0
    db $53, $E2, $52, $53, $53, $53, $51, $E2 ; $179DA8
    db $53, $45, $45, $51, $52, $5C, $51, $46 ; $179DB0
    db $52, $53, $52, $3B, $53, $52, $46, $52 ; $179DB8
    db $51, $45, $5E, $51, $46, $52, $46, $52 ; $179DC0
    db $52, $3F, $45, $51, $52, $46, $51, $53 ; $179DC8
    db $52, $39, $52, $53, $51, $51, $53, $C0 ; $179DD0
    db $52, $53, $53, $D9, $55, $53, $54, $56 ; $179DD8
    db $56, $54, $9C, $54, $53, $55, $55, $55 ; $179DE0
    db $51, $54, $53, $47, $47, $C1, $47, $51 ; $179DE8
    db $53, $42, $3F, $46, $51, $52, $42, $43 ; $179DF0
    db $44, $44, $EC, $43, $53, $52, $42, $44 ; $179DF8
    db $44, $D9, $43, $53, $42, $45, $45, $42 ; $179E00
    db $CA, $44, $53, $43, $42, $43, $B7, $42 ; $179E08
    db $47, $45, $43, $43, $45, $44, $DC, $44 ; $179E10
    db $47, $43, $43, $42, $45, $BA, $44, $42 ; $179E18
    db $43, $42, $43, $43, $B9, $43, $44, $42 ; $179E20
    db $42, $44, $42, $42, $43, $42, $42, $74 ; $179E28
    db $42, $43, $44, $43, $41, $E0, $41, $43 ; $179E30
    db $42, $42, $1F, $45, $44, $43, $43, $42 ; $179E38
    db $42, $AF, $43, $45, $44, $42, $42, $41 ; $179E40
    db $41, $2F, $43, $44, $42, $41, $41, $41 ; $179E48
    db $67, $42, $44, $43, $41, $41, $00, $F1 ; $179E50
    db $41, $43, $43, $42, $42, $00, $2F, $42 ; $179E58
    db $41, $41, $41, $00, $00, $43, $41, $42 ; $179E60
    db $00, $00, $07, $41, $00, $00, $00, $87 ; $179E68
    db $41, $42, $00, $00, $00, $00, $00, $00 ; $179E70
    db $00, $00, $00, $07, $00, $51, $53, $53 ; $179E78
    db $07, $00, $52, $46, $53, $1F, $00, $52 ; $179E80
    db $53, $53, $53, $52, $1F, $00, $53, $51 ; $179E88
    db $52, $53, $46, $C1, $53, $00, $00, $46 ; $179E90
    db $CE, $53, $00, $00, $52, $46, $51, $40 ; $179E98
    db $53, $51, $66, $53, $52, $46, $52, $51 ; $179EA0
    db $3A, $53, $52, $52, $52, $52, $7B, $52 ; $179EA8
    db $51, $46, $45, $51, $53, $53, $BE, $53 ; $179EB0
    db $51, $54, $55, $55, $54, $52, $7E, $53 ; $179EB8
    db $54, $55, $56, $56, $55, $54, $D3, $56 ; $179EC0
    db $53, $54, $45, $55, $54, $BE, $53, $52 ; $179EC8
    db $55, $56, $56, $55, $54, $77, $45, $54 ; $179ED0
    db $55, $56, $56, $55, $54, $EC, $55, $46 ; $179ED8
    db $54, $54, $56, $56, $CE, $54, $51, $51 ; $179EE0
    db $55, $55, $55, $67, $53, $51, $51, $54 ; $179EE8
    db $54, $54, $E3, $42, $53, $53, $41, $41 ; $179EF0
    db $44, $D6, $44, $53, $43, $43, $45, $45 ; $179EF8
    db $80, $42, $43, $E0, $42, $53, $44, $44 ; $179F00
    db $B3, $43, $53, $44, $42, $42, $42, $B6 ; $179F08
    db $42, $54, $45, $43, $44, $43, $AA, $43 ; $179F10
    db $54, $45, $42, $45, $E2, $43, $42, $45 ; $179F18
    db $44, $45, $3D, $45, $44, $43, $43, $43 ; $179F20
    db $44, $7C, $44, $43, $42, $42, $43, $45 ; $179F28
    db $1F, $42, $43, $45, $44, $44, $44, $DC ; $179F30
    db $44, $42, $43, $45, $45, $45, $4F, $42 ; $179F38
    db $41, $43, $43, $44, $44, $17, $42, $41 ; $179F40
    db $41, $41, $41, $CB, $42, $44, $43, $41 ; $179F48
    db $41, $41, $E3, $42, $43, $44, $43, $41 ; $179F50
    db $41, $6B, $43, $45, $44, $42, $42, $41 ; $179F58
    db $4B, $44, $45, $42, $42, $41, $4F, $44 ; $179F60
    db $45, $43, $45, $42, $42, $F8, $00, $43 ; $179F68
    db $42, $42, $41, $41, $F8, $00, $44, $43 ; $179F70
    db $42, $42, $41, $F0, $00, $42, $42, $42 ; $179F78
    db $41, $0F, $41, $00, $00, $00, $00, $E0 ; $179F80
    db $00, $41, $41, $41, $E0, $00, $41, $41 ; $179F88
    db $41, $F0, $00, $42, $42, $41, $41, $F0 ; $179F90
    db $00, $43, $42, $42, $41, $00, $00, $01 ; $179F98
    db $00, $53, $03, $00, $52, $53, $03, $00 ; $179FA0
    db $53, $53, $0F, $00, $53, $52, $53, $53 ; $179FA8
    db $1F, $00, $53, $52, $51, $52, $53, $1F ; $179FB0
    db $00, $54, $55, $54, $54, $52, $3F, $00 ; $179FB8
    db $54, $55, $56, $56, $55, $54, $5C, $52 ; $179FC0
    db $53, $D6, $46, $51, $C7, $55, $52, $46 ; $179FC8
    db $54, $53, $53, $C3, $56, $46, $55, $55 ; $179FD0
    db $53, $D3, $56, $46, $55, $45, $55, $47 ; $179FD8
    db $BD, $54, $52, $55, $56, $56, $55, $41 ; $179FE0
    db $7E, $43, $42, $54, $55, $55, $54, $42 ; $179FE8
    db $9A, $43, $41, $42, $42, $45, $E3, $45 ; $179FF0
    db $41, $42, $43, $43, $41, $D9, $55, $51 ; $179FF8
    db $53, $56, $56, $54, $E1, $55, $52, $51 ; $17A000
    db $54, $54, $8F, $53, $52, $54, $54, $54 ; $17A008
    db $45, $F2, $44, $41, $42, $43, $43, $45 ; $17A010
    db $C0, $42, $43, $41, $83, $41, $42, $43 ; $17A018
    db $44, $27, $42, $41, $43, $44, $44, $48 ; $17A020
    db $42, $41, $41, $F0, $41, $44, $43, $42 ; $17A028
    db $42, $E6, $41, $44, $43, $44, $42, $42 ; $17A030
    db $5F, $44, $43, $42, $41, $41, $42, $43 ; $17A038
    db $F4, $41, $42, $44, $45, $43, $42, $F4 ; $17A040
    db $42, $43, $45, $45, $44, $43, $CB, $44 ; $17A048
    db $45, $45, $43, $43, $42, $13, $44, $43 ; $17A050
    db $43, $42, $1D, $43, $44, $45, $44, $42 ; $17A058
    db $90, $43, $41, $44, $07, $42, $43, $44 ; $17A060
    db $45, $8F, $41, $42, $42, $43, $43, $43 ; $17A068
    db $28, $42, $41, $41, $70, $41, $42, $43 ; $17A070
    db $42, $59, $42, $41, $43, $43, $41, $F0 ; $17A078
    db $43, $42, $42, $41, $42, $97, $42, $43 ; $17A080
    db $41, $43, $44, $44, $9A, $44, $45, $43 ; $17A088
    db $43, $42, $12, $44, $43, $43, $89, $43 ; $17A090
    db $44, $44, $45, $D3, $43, $42, $42, $44 ; $17A098
    db $44, $45, $8B, $43, $42, $42, $44, $45 ; $17A0A0
    db $93, $42, $41, $41, $44, $43, $76, $42 ; $17A0A8
    db $41, $41, $41, $43, $43, $98, $42, $43 ; $17A0B0
    db $41, $41, $F0, $00, $45, $44, $42, $41 ; $17A0B8
    db $F0, $00, $45, $43, $42, $41, $F0, $00 ; $17A0C0
    db $44, $43, $42, $41, $F0, $00, $44, $42 ; $17A0C8
    db $41, $41, $E0, $00, $42, $42, $41, $E0 ; $17A0D0
    db $00, $42, $41, $41, $C0, $00, $42, $41 ; $17A0D8
    db $C0, $00, $41, $41, $BE, $D4, $00, $D5 ; $17A0E0
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
