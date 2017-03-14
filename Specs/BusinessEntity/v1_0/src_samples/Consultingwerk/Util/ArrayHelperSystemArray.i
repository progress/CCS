    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param poValue1 The first value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC "System.Object[]" SystemArray (poValue1 AS System.Object):
        
        DEFINE VARIABLE oArray AS "System.Object[]" NO-UNDO . 
        
        oArray = {Consultingwerk/new-array.i System.Object 1} .
        
        oArray:SetValue (poValue1, 0) .
        
        RETURN oArray .

    END METHOD.
    
    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param poValue1 The first value
        @param poValue2 The second value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC "System.Object[]" SystemArray (poValue1 AS System.Object, poValue2 AS System.Object):

        DEFINE VARIABLE oArray AS "System.Object[]" NO-UNDO .

        oArray = {Consultingwerk/new-array.i System.Object 2} .

        oArray:SetValue (poValue1,  0) .
        oArray:SetValue (poValue2,  1) .

        RETURN oArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param poValue1 The first value
        @param poValue2 The second value
        @param poValue3 The third value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC "System.Object[]" SystemArray (poValue1 AS System.Object, poValue2 AS System.Object, poValue3 AS System.Object):

        DEFINE VARIABLE oArray AS "System.Object[]" NO-UNDO .

        oArray = {Consultingwerk/new-array.i System.Object 3} .

        oArray:SetValue (poValue1,  0) .
        oArray:SetValue (poValue2,  1) .
        oArray:SetValue (poValue3,  2) .

        RETURN oArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param poValue1 The first value
        @param poValue2 The second value
        @param poValue3 The third value
        @param poValue4 The fourth value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC "System.Object[]" Array (poValue1 AS System.Object, poValue2 AS System.Object, poValue3 AS System.Object, poValue4 AS System.Object):

        DEFINE VARIABLE oArray AS "System.Object[]" NO-UNDO .

        oArray = {Consultingwerk/new-array.i System.Object 4} .

        oArray:SetValue (poValue1,  0) .
        oArray:SetValue (poValue2,  1) .
        oArray:SetValue (poValue3,  2) .
        oArray:SetValue (poValue4,  3) .

        RETURN oArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param poValue1 The first value
        @param poValue2 The second value
        @param poValue3 The third value
        @param poValue4 The fourth value
        @param poValue5 The fifth value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC "System.Object[]" Array (poValue1 AS System.Object, poValue2 AS System.Object, poValue3 AS System.Object, poValue4 AS System.Object, poValue5 AS System.Object):

        DEFINE VARIABLE oArray AS "System.Object[]" NO-UNDO .

        oArray = {Consultingwerk/new-array.i System.Object 5} .

        oArray:SetValue (poValue1,  0) .
        oArray:SetValue (poValue2,  1) .
        oArray:SetValue (poValue3,  2) .
        oArray:SetValue (poValue4,  3) .
        oArray:SetValue (poValue5,  4) .

        RETURN oArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param poValue1 The first value
        @param poValue2 The second value
        @param poValue3 The third value
        @param poValue4 The fourth value
        @param poValue5 The fifth value
        @param poValue6 The sixth value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC "System.Object[]" SystemArray (poValue1 AS System.Object, poValue2 AS System.Object, poValue3 AS System.Object, poValue4 AS System.Object, poValue5 AS System.Object,
                                                        poValue6 AS System.Object):

        DEFINE VARIABLE oArray AS "System.Object[]" NO-UNDO .

        oArray = {Consultingwerk/new-array.i System.Object 6} .

        oArray:SetValue (poValue1,  0) .
        oArray:SetValue (poValue2,  1) .
        oArray:SetValue (poValue3,  2) .
        oArray:SetValue (poValue4,  3) .
        oArray:SetValue (poValue5,  4) .
        oArray:SetValue (poValue6,  5) .

        RETURN oArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param poValue1 The first value
        @param poValue2 The second value
        @param poValue3 The third value
        @param poValue4 The fourth value
        @param poValue5 The fifth value
        @param poValue6 The sixth value
        @param poValue7 The seventh value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC "System.Object[]" SystemArray (poValue1 AS System.Object, poValue2 AS System.Object, poValue3 AS System.Object, poValue4 AS System.Object, poValue5 AS System.Object,
                                                        poValue6 AS System.Object, poValue7 AS System.Object):

        DEFINE VARIABLE oArray AS "System.Object[]" NO-UNDO .

        oArray = {Consultingwerk/new-array.i System.Object 7} .

        oArray:SetValue (poValue1,  0) .
        oArray:SetValue (poValue2,  1) .
        oArray:SetValue (poValue3,  2) .
        oArray:SetValue (poValue4,  3) .
        oArray:SetValue (poValue5,  4) .
        oArray:SetValue (poValue6,  5) .
        oArray:SetValue (poValue7,  6) .

        RETURN oArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param poValue1 The first value
        @param poValue2 The second value
        @param poValue3 The third value
        @param poValue4 The fourth value
        @param poValue5 The fifth value
        @param poValue6 The sixth value
        @param poValue7 The seventh value
        @param poValue8 The eight value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC "System.Object[]" SystemArray (poValue1 AS System.Object, poValue2 AS System.Object, poValue3 AS System.Object, poValue4 AS System.Object, poValue5 AS System.Object,
                                                        poValue6 AS System.Object, poValue7 AS System.Object, poValue8 AS System.Object):

        DEFINE VARIABLE oArray AS "System.Object[]" NO-UNDO .

        oArray = {Consultingwerk/new-array.i System.Object 8} .

        oArray:SetValue (poValue1,  0) .
        oArray:SetValue (poValue2,  1) .
        oArray:SetValue (poValue3,  2) .
        oArray:SetValue (poValue4,  3) .
        oArray:SetValue (poValue5,  4) .
        oArray:SetValue (poValue6,  5) .
        oArray:SetValue (poValue7,  6) .
        oArray:SetValue (poValue8,  7) .

        RETURN oArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param poValue1 The first value
        @param poValue2 The second value
        @param poValue3 The third value
        @param poValue4 The fourth value
        @param poValue5 The fifth value
        @param poValue6 The sixth value
        @param poValue7 The seventh value
        @param poValue8 The eight value
        @param poValue9 The nineth value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC "System.Object[]" SystemArray (poValue1 AS System.Object, poValue2 AS System.Object, poValue3 AS System.Object, poValue4 AS System.Object, poValue5 AS System.Object,
                                                        poValue6 AS System.Object, poValue7 AS System.Object, poValue8 AS System.Object, poValue9 AS System.Object):

        DEFINE VARIABLE oArray AS "System.Object[]" NO-UNDO .

        oArray = {Consultingwerk/new-array.i System.Object 9} .

        oArray:SetValue (poValue1,  0) .
        oArray:SetValue (poValue2,  1) .
        oArray:SetValue (poValue3,  2) .
        oArray:SetValue (poValue4,  3) .
        oArray:SetValue (poValue5,  4) .
        oArray:SetValue (poValue6,  5) .
        oArray:SetValue (poValue7,  6) .
        oArray:SetValue (poValue8,  7) .
        oArray:SetValue (poValue9,  8) .

        RETURN oArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param poValue1 The first value
        @param poValue2 The second value
        @param poValue3 The third value
        @param poValue4 The fourth value
        @param poValue5 The fifth value
        @param poValue6 The sixth value
        @param poValue7 The seventh value
        @param poValue8 The eight value
        @param poValue9 The nineth value
        @param poValue10 The tenth value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC "System.Object[]" SystemArray (poValue1 AS System.Object, poValue2 AS System.Object, poValue3 AS System.Object, poValue4 AS System.Object, poValue5 AS System.Object,
                                                        poValue6 AS System.Object, poValue7 AS System.Object, poValue8 AS System.Object, poValue9 AS System.Object, poValue10 AS System.Object):

        DEFINE VARIABLE oArray AS "System.Object[]" NO-UNDO .

        oArray = {Consultingwerk/new-array.i System.Object 10} .

        oArray:SetValue (poValue1,  0) .
        oArray:SetValue (poValue2,  1) .
        oArray:SetValue (poValue3,  2) .
        oArray:SetValue (poValue4,  3) .
        oArray:SetValue (poValue5,  4) .
        oArray:SetValue (poValue6,  5) .
        oArray:SetValue (poValue7,  6) .
        oArray:SetValue (poValue8,  7) .
        oArray:SetValue (poValue9,  8) .
        oArray:SetValue (poValue10, 9) .

        RETURN oArray .

    END METHOD.
