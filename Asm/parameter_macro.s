
;----------------------------------------------------------------------------------------
;
;----------------------------------------------------------------------------------------
SetColor   MACRO a b
    lea.l   Custom, a6
    move.w  #\1, \2(a6)
    ENDM

;----------------------------------------------------------------------------------------
;
;----------------------------------------------------------------------------------------
_main:
    movem.l d0-a6, -(sp)
    
    SetColor $0f00, color00

    movem.l (sp)+, d0-a6
    rts