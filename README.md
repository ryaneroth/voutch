K-1008 VISABLE MEMORY - Character Display Routines
MTU K-1008 mapped at $C000-$DFFF

Display: 320 x 200 pixels, 40 bytes/scanline
Text:    40 columns x 25 rows, 8x8 pixel characters
         Bit 7 of each byte = leftmost pixel (MSB-first)

USAGE - modeled after KIM-1 OUTCH ($1EA0):

  JSR  VINIT      ; once at startup: clear screen, home cursor

  LDA  #'H'
  JSR  VOUTCH     ; display character, advance cursor

  LDA  #$0D       ; move to next line (scrolls at bottom)
  JSR  VOUTCH

  ![Demo GIF](demo.gif)