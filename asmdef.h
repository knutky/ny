/** @file asmdef.h
 *  @brief Small macro hacks that can be used in assembly code to allow it to be
 *  compiled from both Linux and Cygwin.
 *
 *  @author Erlend Graff <erlend.h.graff@uit.no>
 */

#ifdef cyglin
#define FUNC(x) _##x
#define DECLARE_GLOBAL(x) .global FUNC(x);\
	.def	FUNC(x);\
	.scl	2;\
	.type	32;\
	.endef
#else
#define FUNC(x) x
#define DECLARE_GLOBAL(x) .global FUNC(x);\
	.type FUNC(x), @function
#endif