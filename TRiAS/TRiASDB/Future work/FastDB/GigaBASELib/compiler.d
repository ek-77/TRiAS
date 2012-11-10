//#define DBVM(code, type, n_operands, commutative)


DBVM(dbvmLoadBool, tpBoolean, 1, dbvmVoid)
DBVM(dbvmLoadInt1, tpInteger, 1, dbvmVoid)
DBVM(dbvmLoadInt2, tpInteger, 1, dbvmVoid)
DBVM(dbvmLoadInt4, tpInteger, 1, dbvmVoid)
DBVM(dbvmLoadInt8, tpInteger, 1, dbvmVoid)
DBVM(dbvmLoadReal4, tpReal, 1, dbvmVoid)
DBVM(dbvmLoadReal8, tpReal, 1, dbvmVoid)
DBVM(dbvmLoadString, tpString, 1, dbvmVoid)
DBVM(dbvmLoadReference, tpReference, 1, dbvmVoid)
DBVM(dbvmLoadArray, tpArray, 1, dbvmVoid)

DBVM(dbvmInvokeMethodBool, tpBoolean, 1, dbvmVoid)
DBVM(dbvmInvokeMethodInt1, tpInteger, 1, dbvmVoid)
DBVM(dbvmInvokeMethodInt2, tpInteger, 1, dbvmVoid)
DBVM(dbvmInvokeMethodInt4, tpInteger, 1, dbvmVoid)
DBVM(dbvmInvokeMethodInt8, tpInteger, 1, dbvmVoid)
DBVM(dbvmInvokeMethodReal4, tpReal, 1, dbvmVoid)
DBVM(dbvmInvokeMethodReal8, tpReal, 1, dbvmVoid)
DBVM(dbvmInvokeMethodString, tpString, 1, dbvmVoid)
DBVM(dbvmInvokeMethodReference, tpReference, 1, dbvmVoid)

DBVM(dbvmLoadSelfBool, tpBoolean, 0, dbvmVoid)
DBVM(dbvmLoadSelfInt1, tpInteger, 0, dbvmVoid)
DBVM(dbvmLoadSelfInt2, tpInteger, 0, dbvmVoid)
DBVM(dbvmLoadSelfInt4, tpInteger, 0, dbvmVoid)
DBVM(dbvmLoadSelfInt8, tpInteger, 0, dbvmVoid)
DBVM(dbvmLoadSelfReal4, tpReal, 0, dbvmVoid)
DBVM(dbvmLoadSelfReal8, tpReal, 0, dbvmVoid)
DBVM(dbvmLoadSelfString, tpString, 0, dbvmVoid)
DBVM(dbvmLoadSelfReference, tpReference, 0, dbvmVoid)
DBVM(dbvmLoadSelfArray, tpArray, 0, dbvmVoid)

DBVM(dbvmInvokeSelfMethodBool, tpBoolean, 0, dbvmVoid)
DBVM(dbvmInvokeSelfMethodInt1, tpInteger, 0, dbvmVoid)
DBVM(dbvmInvokeSelfMethodInt2, tpInteger, 0, dbvmVoid)
DBVM(dbvmInvokeSelfMethodInt4, tpInteger, 0, dbvmVoid)
DBVM(dbvmInvokeSelfMethodInt8, tpInteger, 0, dbvmVoid)
DBVM(dbvmInvokeSelfMethodReal4, tpReal, 0, dbvmVoid)
DBVM(dbvmInvokeSelfMethodReal8, tpReal, 0, dbvmVoid)
DBVM(dbvmInvokeSelfMethodString, tpString, 0, dbvmVoid)
DBVM(dbvmInvokeSelfMethodReference, tpReference, 0, dbvmVoid)

DBVM(dbvmInArrayBool, tpBoolean, 1, dbvmVoid)
DBVM(dbvmInArrayInt1, tpBoolean, 1, dbvmVoid)
DBVM(dbvmInArrayInt2, tpBoolean, 1, dbvmVoid)
DBVM(dbvmInArrayInt4, tpBoolean, 1, dbvmVoid)
DBVM(dbvmInArrayInt8, tpBoolean, 1, dbvmVoid)
DBVM(dbvmInArrayReal4, tpBoolean, 1, dbvmVoid)
DBVM(dbvmInArrayReal8, tpBoolean, 1, dbvmVoid)
DBVM(dbvmInArrayString, tpBoolean, 1, dbvmVoid)
DBVM(dbvmInArrayReference, tpBoolean, 1, dbvmVoid)
DBVM(dbvmInString, tpBoolean, 1, dbvmVoid)

DBVM(dbvmLength, tpInteger, 1, dbvmVoid)
DBVM(dbvmStringLength, tpInteger, 1, dbvmVoid)
DBVM(dbvmGetAt, tpInteger, 2, dbvmVoid)
DBVM(dbvmCharAt, tpInteger, 2, dbvmVoid)

DBVM(dbvmLoadVarBool, tpBoolean, 0, dbvmVoid)
DBVM(dbvmLoadVarInt1, tpInteger, 0, dbvmVoid)
DBVM(dbvmLoadVarInt2, tpInteger, 0, dbvmVoid)
DBVM(dbvmLoadVarInt4, tpInteger, 0, dbvmVoid)
DBVM(dbvmLoadVarInt8, tpInteger, 0, dbvmVoid)
DBVM(dbvmLoadVarReal4, tpReal, 0, dbvmVoid)
DBVM(dbvmLoadVarReal8, tpReal, 0, dbvmVoid)
DBVM(dbvmLoadVarString, tpString, 0, dbvmVoid)
DBVM(dbvmLoadVarStringPtr, tpString, 0, dbvmVoid)
DBVM(dbvmLoadVarReference, tpReference, 0, dbvmVoid)
DBVM(dbvmLoadVarArray, tpArray, 0, dbvmVoid)

DBVM(dbvmLoadTrue, tpBoolean, 0, dbvmVoid)
DBVM(dbvmLoadFalse, tpBoolean, 0, dbvmVoid)
DBVM(dbvmCurrent, tpReference, 0, dbvmVoid)
DBVM(dbvmFirst, tpReference, 0, dbvmVoid)
DBVM(dbvmLast, tpReference, 0, dbvmVoid)
DBVM(dbvmLoadNull, tpReference, 0, dbvmVoid)
DBVM(dbvmLoadIntConstant, tpInteger, 0, dbvmVoid)
DBVM(dbvmLoadRealConstant, tpReal, 0, dbvmVoid)
DBVM(dbvmLoadStringConstant, tpString, 0, dbvmVoid)
    
DBVM(dbvmOrBool,  tpBoolean, 2, dbvmOrBool)
DBVM(dbvmAndBool, tpBoolean, 2, dbvmAndBool)
DBVM(dbvmNotBool, tpBoolean, 1, dbvmVoid)

DBVM(dbvmIsNull, tpBoolean, 1, dbvmVoid)

DBVM(dbvmNegInt, tpInteger, 1, dbvmVoid)
DBVM(dbvmAddInt, tpInteger, 2, dbvmAddInt)
DBVM(dbvmSubInt, tpInteger, 2, dbvmVoid)
DBVM(dbvmMulInt, tpInteger, 2, dbvmMulInt)
DBVM(dbvmDivInt, tpInteger, 2, dbvmVoid)
DBVM(dbvmAndInt, tpInteger, 2, dbvmAndInt)
DBVM(dbvmOrInt,  tpInteger, 2, dbvmOrInt)
DBVM(dbvmNotInt, tpInteger, 1, dbvmVoid)
DBVM(dbvmAbsInt, tpInteger, 1, dbvmVoid)
DBVM(dbvmPowerInt, tpInteger, 2, dbvmVoid)
    
DBVM(dbvmEqInt, tpBoolean, 2, dbvmEqInt)
DBVM(dbvmNeInt, tpBoolean, 2, dbvmNeInt)
DBVM(dbvmGtInt, tpBoolean, 2, dbvmLtInt)
DBVM(dbvmGeInt, tpBoolean, 2, dbvmLeInt)
DBVM(dbvmLtInt, tpBoolean, 2, dbvmGtInt)
DBVM(dbvmLeInt, tpBoolean, 2, dbvmGeInt)
DBVM(dbvmBetweenInt, tpBoolean, 3, dbvmVoid)

DBVM(dbvmNegReal, tpReal, 1, dbvmVoid)
DBVM(dbvmAddReal, tpReal, 2, dbvmAddReal)
DBVM(dbvmSubReal, tpReal, 2, dbvmVoid)
DBVM(dbvmMulReal, tpReal, 2, dbvmMulReal)
DBVM(dbvmDivReal, tpReal, 2, dbvmVoid)
DBVM(dbvmAbsReal, tpReal, 1, dbvmVoid)
DBVM(dbvmPowerReal, tpReal, 2, dbvmVoid)
DBVM(dbvmPowerRealInt, tpReal, 2, dbvmVoid)

DBVM(dbvmEqReal, tpBoolean, 2, dbvmEqReal)
DBVM(dbvmNeReal, tpBoolean, 2, dbvmNeReal)
DBVM(dbvmGtReal, tpBoolean, 2, dbvmLtReal)
DBVM(dbvmGeReal, tpBoolean, 2, dbvmLeReal)
DBVM(dbvmLtReal, tpBoolean, 2, dbvmGtReal)
DBVM(dbvmLeReal, tpBoolean, 2, dbvmGeReal)
DBVM(dbvmBetweenReal, tpBoolean, 3, dbvmVoid)

DBVM(dbvmEqBool, tpBoolean, 2, dbvmEqBool)
DBVM(dbvmNeBool, tpBoolean, 2, dbvmNeBool)

DBVM(dbvmEqReference, tpBoolean, 2, dbvmEqReference)
DBVM(dbvmNeReference, tpBoolean, 2, dbvmNeReference)


DBVM(dbvmEqString, tpBoolean, 2, dbvmEqString)
DBVM(dbvmNeString, tpBoolean, 2, dbvmNeString)
DBVM(dbvmGtString, tpBoolean, 2, dbvmLtString)
DBVM(dbvmGeString, tpBoolean, 2, dbvmLeString)
DBVM(dbvmLtString, tpBoolean, 2, dbvmGtString)
DBVM(dbvmLeString, tpBoolean, 2, dbvmGeString)
DBVM(dbvmBetweenString, tpBoolean, 3, dbvmVoid)
DBVM(dbvmLikeString, tpBoolean, 2, dbvmVoid)
DBVM(dbvmLikeEscapeString, tpBoolean, 3, dbvmVoid)

DBVM(dbvmUpperString, tpString, 1, dbvmVoid)
DBVM(dbvmLowerString, tpString, 1, dbvmVoid)

DBVM(dbvmIntToReal, tpReal, 1, dbvmVoid)
DBVM(dbvmRealToInt, tpInteger, 1, dbvmVoid)

DBVM(dbvmIntToString, tpString, 1, dbvmVoid)
DBVM(dbvmRealToString, tpString, 1, dbvmVoid)
DBVM(dbvmStringConcat, tpString, 2, dbvmStringConcat)

DBVM(dbvmDeref, tpReference, 1, dbvmVoid) 

DBVM(dbvmExists, tpBoolean, 1, dbvmVoid) 
DBVM(dbvmVariable, tpFreeVar, 0, dbvmVoid) 

DBVM(dbvmList, tpList, 2, dbvmVoid) 

DBVM(dbvmFuncInt2Bool, tpBoolean, 1, dbvmVoid) 
DBVM(dbvmFuncReal2Bool, tpBoolean, 1, dbvmVoid)
DBVM(dbvmFuncStr2Bool, tpBoolean, 1, dbvmVoid)
DBVM(dbvmFuncInt2Int, tpInteger, 1, dbvmVoid)
DBVM(dbvmFuncReal2Int, tpInteger, 1, dbvmVoid)
DBVM(dbvmFuncStr2Int, tpInteger, 1, dbvmVoid)
DBVM(dbvmFuncInt2Real, tpReal, 1, dbvmVoid)
DBVM(dbvmFuncReal2Real, tpReal, 1, dbvmVoid)
DBVM(dbvmFuncStr2Real, tpReal, 1, dbvmVoid)
DBVM(dbvmFuncInt2Str, tpString, 1, dbvmVoid)
DBVM(dbvmFuncReal2Str, tpString, 1, dbvmVoid)
DBVM(dbvmFuncStr2Str, tpString, 1, dbvmVoid)

DBVM(dbvmVoid, tpVoid, 0, dbvmVoid) 

#undef DBVM