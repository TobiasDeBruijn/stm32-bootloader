  .syntax unified
  .cpu cortex-m0plus
  .fpu softvfp
  .thumb

.global reset_handler

.section .text.reset_handler
.weak reset_handler
.type reset_handler, %function
reset_handler:  
  // Set the stack pointer to the end of the stack
  // The end of stack (`_estack`) is defined in the linker script
  LDR   r0, =_estack
  MOV   sp, r0

  // Copy the contents of flash to RAM
  MOVS  r0, #0

  // Load the start/end address of the data section
  // as well as the start of the data init secton
  LDR   r1, =_sdata
  LDR   r2, =_edata
  LDR   r3, =_sidata
  B     copy_sidata_loop

  copy_sidata:
    // Offset the data init section by the copy progress
    LDR   r4, [r3, r0]
    // Copy the current word into data and increment the counter
    STR   r4, [r1, r0]
    ADDS  r0, r0, #4

  copy_sidata_loop:
    // If we haven't yet copied the entire data
    // section, copy the next word from sidata into data
    ADDS  r4, r0, r1
    CMP   r4, r2
    BCC   copy_sidata


  // Done copying data
  // Fill the BSS section with zeros
  MOVS  r0, #0
  LDR   r1, =_sbss
  LDR   r2, =_ebss
  B     reset_bss_loop

  reset_bss:
    // Store a 0 and increment by a word
    STR   r0, [r1]
    ADDS  r1, r1, #4

  reset_bss_loop:
    // Using r1 as a progress indicator
    // As long as we're not yet done, keep resetting
    // the next word
    CMP r1, r2
    BCC reset_bss


  // Branch to the `main` function
  B main

.size reset_handler, .-reset_handler