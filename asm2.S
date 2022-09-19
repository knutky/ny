//#include "asmdef.h"

.global asm_function


################################################################################
# name:          asm_function
# action:        
# in:            
#
# out:
# modifies:
# notes:
################################################################################

asm_function: # Prolouge
	push 	%ebp
	movl 	%esp, %ebp

    # Saving live registers:
    push %edi       
    push %esi       
    push %edx       
    push %ecx       

    # Find right length
    movl    4(%ebp), %ecx       # move "m" in to ecx
    subl    8(%ebp), %ecx       # Subtract "l" from "m"
    addl    1%,      %ecx       # Add 1
                                # ecx is maby the right length

    # Find left length (r - m)
    movl    (%ebp),  %edx       # move "m" in to ecx
    subl    4(%ebp), %edx       # Subtract "l" from "m"
                                # edx is maby the left length

    # Create temporary left array
    

    # Create temporary right array

    # For loop
    movl $0, %rax

    jmp loop

    ret

loop:
    incl %rax

        
    jmp loop
    # Take first integer from both arrays and put smallest into the main index

