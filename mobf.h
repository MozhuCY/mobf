
#ifdef _X86_

#else

#define R0 "rax"
#define R1 "rbx"
#define R2 "rcx"
#define R3 "rdx"
#define R4 "rsi"
#define R5 "rdi"

#endif

#define CALL0(function) \
    asm("call " #function ";"\
        : \
        : \
        : \
    )

#define CALL1(function,arg0) \
    asm("mov "R0",%0;" \
        "call "#function ";" \
        : \
        : "m"(arg0)\
        : \
    )

#define CALL2(function,arg0,arg1) \
    asm("mov "R0",%0;" \
        "mov "R1",%1;" \
        "call "#function ";" \
        : \
        : "m"(arg0),"m"(arg1)\
        : \
    )

#define CALL3(function,arg0,arg1,arg2) \
    asm("mov "R0",%0;" \
        "mov "R1",%1;" \
        "mov "R2",%2;" \
        "call "#function ";" \
        : \
        : "m"(arg0),"m"(arg1),"m"(arg2)\
        : \
    )

#define CALL4(function,arg0,arg1,arg2,arg3) \
    asm("mov "R0",%0;" \
        "mov "R1",%1;" \
        "mov "R2",%2;" \
        "mov "R3",%3;" \
        "call "#function ";" \
        : \
        : "m"(arg0),"m"(arg1),"m"(arg2),"m"(arg3)\
        : \
    )

#define F0(retval,function,body) \
    retval function() {\
        do{ \
            body \
        }while(0); \
    }

#define F1(retval,function,arg0,body) \
    retval function() {\
        arg0; \
        do{ \
            body \
        }while(0); \
    }

#define INIT1(arg0) \
    asm("mov %0,"R0";"\
    : "=m"(arg0)\
    : \
    : \
    )

#define F2(retval,function,arg0,arg1,body) \
    retval function() {\
        arg0; \
        arg1; \
        do{ \
            body \
        }while(0); \
    }

#define INIT2(arg0,arg1) \
    asm("mov %0,"R0";" \
        "mov %1,"R1";" \
    : "=m"(arg0),"=m"(arg1)\
    : \
    : \
    )

#define F3(retval,function,arg0,arg1,arg2,body) \
    retval function() {\
        arg0; \
        arg1; \
        arg2; \
        do{ \
            body \
        }while(0); \
    }

#define INIT3(arg0,arg1,arg2) \
    asm("mov %0,"R0";" \
        "mov %1,"R1";" \
        "mov %2,"R2";" \
        : "=m"(arg0),"=m"(arg1),"=m"(arg2)\
        : \
        : \
    )

#define F4(retval,function,arg0,arg1,arg2,arg3,body) \
    retval function() {\
        arg0; \
        arg1; \
        arg2; \
        arg3; \
        do{ \
            body \
        }while(0); \
    }

#define INIT4(arg0,arg1,arg2,arg3) \
    asm("mov %0,"R0";" \
        "mov %1,"R1";" \
        "mov %2,"R2";" \    
        "mov %3,"R3";" \
        : "=m"(arg0),"=m"(arg1),"=m"(arg2),"=m"(arg3)\
        : \
        : \
    )
