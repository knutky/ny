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
	push 	%esi
	push 	%edi
	push 	%ebx
	# Make room for c
	subl 	$4, %esp
	# Move b into ebx
	movl 	12(%ebp), %ebx
	# Add a to b
	addl 	8(%ebp), %ebx
	# Moving a + b into c
	movl 	%ebx, -16(%ebp)
	# Move c into eax
	movl 	-16(%ebp), %eax
	# Clean up stack and rstore
	addl 	$4, %esp
	pop 	%ebx
	pop 	%edi
	pop 	%esi
	# Epiloge
	movl 	%ebp , %esp
	pop 	%ebp 
	ret
	//call 	add