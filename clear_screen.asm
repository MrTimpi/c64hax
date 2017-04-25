 * = $0801

           ldx #$00      ; Put the value 0 in x
           stx $d020     ; Put value of x in $d020
           stx $d021     ; Put value of x in $d021
           
           lda #$20      ; Put the value $20 in acc
clrloop:   sta $0400,x   ; Put value of acc in $0400 + value in x reg
           sta $0500,x   
           sta $0600,x   
           sta $0700,x
           dex            ; Decrement value in x reg
           bne clrloop    ; If not zero, branch to clrloop