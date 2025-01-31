// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


// Pseudocode:

// CHECK:
//      index = SCREEN
//      if(M[KBD] == 0) goto WHITE
//      if(M[KBD] > 0) goto BLACK
// WHITE:
//     fillcolor = 0
//     goto FILL
// BLACK:
//     fillcolor = -1
//     goto FILL
// FILL: 
//     if(index == KBD) goto CHECK //KBD = SCREEN + 8192
//     RAM[index] = fillcolor
//     index++;
//     goto FILL

(CHECK)
    //  index = SCREEN
    @SCREEN
    D = A
    @index
    M = D
    //  D = M[KBD]
    @KBD
    D=M
    //  if(M[KBD] == 0) goto WHITE
    @WHITE
    D;JEQ
    //  if(M[KBD] > 0) goto BLACK
    @BLACK
    D;JGT

(WHITE)
    //  fillcolor = 0
    @fillcolor
    M=0
    //  goto FILL
    @FILL
    0;JMP

(BLACK)
    //  fillcolor = -1
    @fillcolor
    M=-1
    //  goto FILL
    @FILL
    0;JMP

(FILL)
    //  if(index == KBD) goto CHECK
    @index
    D=M
    @KBD
    D=A-D
    @CHECK
    D;JEQ
    //  RAM[index] = fillcolor    
    @fillcolor
    D=M
    @index
    A=M
    M=D
    //  index++;
    @index
    M=M+1
    //  goto FILL
    @FILL
    0;JMP

    




