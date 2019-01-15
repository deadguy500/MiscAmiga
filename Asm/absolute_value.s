; returns the absolute value of input
;
; input: d0.l = in value
; output: d0.l = absolute value of in value
;
; neg.l = 6 cycles
; branch = 10 cycles
; no branch = 8 cycles

.is_minus
        neg.l   d0
        bmi     .is_minus