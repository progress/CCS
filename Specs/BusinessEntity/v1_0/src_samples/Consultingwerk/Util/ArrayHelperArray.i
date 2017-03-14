    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param pValue1 The first value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC {1} EXTENT 1 Array (pValue1 AS {1}):
        
        DEFINE VARIABLE cArray AS {1} NO-UNDO EXTENT 1 . 

        ASSIGN cArray[1] = pValue1 .

        RETURN cArray .

    END METHOD.
    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param pValue1 The first value
        @param pValue2 The second value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC {1} EXTENT 2 Array (pValue1 AS {1}, pValue2 AS {1}):
        
        DEFINE VARIABLE cArray AS {1} NO-UNDO EXTENT 2 . 

        ASSIGN cArray[1] = pValue1
               cArray[2] = pValue2 .

        RETURN cArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param pValue1 The first value
        @param pValue2 The second value
        @param pValue3 The third value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC {1} EXTENT 3 Array (pValue1 AS {1}, pValue2 AS {1}, pValue3 AS {1}):
        
        DEFINE VARIABLE cArray AS {1} NO-UNDO EXTENT 3 . 

        ASSIGN cArray[1] = pValue1
               cArray[2] = pValue2
               cArray[3] = pValue3 .

        RETURN cArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param pValue1 The first value
        @param pValue2 The second value
        @param pValue3 The third value
        @param pValue4 The fourth value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC {1} EXTENT 4 Array (pValue1 AS {1}, pValue2 AS {1}, pValue3 AS {1}, pValue4 AS {1}):
        
        DEFINE VARIABLE cArray AS {1} NO-UNDO EXTENT 4 . 

        ASSIGN cArray[1] = pValue1
               cArray[2] = pValue2
               cArray[3] = pValue3
               cArray[4] = pValue4 .

        RETURN cArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param pValue1 The first value
        @param pValue2 The second value
        @param pValue3 The third value
        @param pValue4 The fourth value
        @param pValue5 The fifth value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC {1} EXTENT 5 Array (pValue1 AS {1}, pValue2 AS {1}, pValue3 AS {1}, pValue4 AS {1}, pValue5 AS {1}):
        
        DEFINE VARIABLE cArray AS {1} NO-UNDO EXTENT 5 . 

        ASSIGN cArray[1] = pValue1
               cArray[2] = pValue2
               cArray[3] = pValue3
               cArray[4] = pValue4
               cArray[5] = pValue5 .

        RETURN cArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param pValue1 The first value
        @param pValue2 The second value
        @param pValue3 The third value
        @param pValue4 The fourth value
        @param pValue5 The fifth value
        @param pValue6 The sixth value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC {1} EXTENT 6 Array (pValue1 AS {1}, pValue2 AS {1}, pValue3 AS {1}, pValue4 AS {1}, pValue5 AS {1},
                                             pValue6 AS {1}):
        
        DEFINE VARIABLE cArray AS {1} NO-UNDO EXTENT 6 . 

        ASSIGN cArray[1] = pValue1
               cArray[2] = pValue2
               cArray[3] = pValue3
               cArray[4] = pValue4
               cArray[5] = pValue5
               cArray[6] = pValue6 .

        RETURN cArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param pValue1 The first value
        @param pValue2 The second value
        @param pValue3 The third value
        @param pValue4 The fourth value
        @param pValue5 The fifth value
        @param pValue6 The sixth value
        @param pValue7 The seventh value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC {1} EXTENT 7 Array (pValue1 AS {1}, pValue2 AS {1}, pValue3 AS {1}, pValue4 AS {1}, pValue5 AS {1},
                                             pValue6 AS {1}, pValue7 AS {1}):
        
        DEFINE VARIABLE cArray AS {1} NO-UNDO EXTENT 7 . 

        ASSIGN cArray[1] = pValue1
               cArray[2] = pValue2
               cArray[3] = pValue3
               cArray[4] = pValue4
               cArray[5] = pValue5
               cArray[6] = pValue6
               cArray[7] = pValue7 .

        RETURN cArray .

    END METHOD.
   
    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param pValue1 The first value
        @param pValue2 The second value
        @param pValue3 The third value
        @param pValue4 The fourth value
        @param pValue5 The fifth value
        @param pValue6 The sixth value
        @param pValue7 The seventh value
        @param pValue8 The eight value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC {1} EXTENT 8 Array (pValue1 AS {1}, pValue2 AS {1}, pValue3 AS {1}, pValue4 AS {1}, pValue5 AS {1},
                                             pValue6 AS {1}, pValue7 AS {1}, pValue8 AS {1}):
        
        DEFINE VARIABLE cArray AS {1} NO-UNDO EXTENT 8 . 

        ASSIGN cArray[1] = pValue1
               cArray[2] = pValue2
               cArray[3] = pValue3
               cArray[4] = pValue4
               cArray[5] = pValue5
               cArray[6] = pValue6
               cArray[7] = pValue7
               cArray[8] = pValue8 .

        RETURN cArray .

    END METHOD.
    
    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param pValue1 The first value
        @param pValue2 The second value
        @param pValue3 The third value
        @param pValue4 The fourth value
        @param pValue5 The fifth value
        @param pValue6 The sixth value
        @param pValue7 The seventh value
        @param pValue8 The eight value
        @param pValue9 The nineth value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC {1} EXTENT 9 Array (pValue1 AS {1}, pValue2 AS {1}, pValue3 AS {1}, pValue4 AS {1}, pValue5 AS {1},
                                             pValue6 AS {1}, pValue7 AS {1}, pValue8 AS {1}, pValue9 AS {1}):
        
        DEFINE VARIABLE cArray AS {1} NO-UNDO EXTENT 9 . 

        ASSIGN cArray[1] = pValue1
               cArray[2] = pValue2
               cArray[3] = pValue3
               cArray[4] = pValue4
               cArray[5] = pValue5
               cArray[6] = pValue6
               cArray[7] = pValue7
               cArray[8] = pValue8
               cArray[9] = pValue9 .

        RETURN cArray .

    END METHOD.
    
    /*------------------------------------------------------------------------------
        Purpose: Returns an ABL Array of the provided values
        Notes:   Allows building Array's on the fly without a helper variable
        @param pValue1 The first value
        @param pValue2 The second value
        @param pValue3 The third value
        @param pValue4 The fourth value
        @param pValue5 The fifth value
        @param pValue6 The sixth value
        @param pValue7 The seventh value
        @param pValue8 The eight value
        @param pValue9 The nineth value
        @param pValue10 The tenth value
        @return The resulting Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC {1} EXTENT 10 Array (pValue1 AS {1}, pValue2 AS {1}, pValue3 AS {1}, pValue4 AS {1}, pValue5 AS {1},
                                              pValue6 AS {1}, pValue7 AS {1}, pValue8 AS {1}, pValue9 AS {1}, pValue10 AS {1}):
        
        DEFINE VARIABLE cArray AS {1} NO-UNDO EXTENT 10 . 

        ASSIGN cArray[1] = pValue1
               cArray[2] = pValue2
               cArray[3] = pValue3
               cArray[4] = pValue4
               cArray[5] = pValue5
               cArray[6] = pValue6
               cArray[7] = pValue7
               cArray[8] = pValue8
               cArray[9] = pValue9
               cArray[10] = pValue10 .

        RETURN cArray .

    END METHOD.
    
    /*------------------------------------------------------------------------------
        Purpose: Finds an the item in the array and returns the index
        Notes:   Returns 0 when the item cannot be found
        @param pItem The Item to find in the array
        @param pArray The array to find the item in
        @return The position (index) of the item in the array 
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC INTEGER Find (pItem AS {1}, pArray AS {1} EXTENT):
        
        DEFINE VARIABLE iIndex   AS INTEGER NO-UNDO .
        DEFINE VARIABLE iExtent  AS INTEGER NO-UNDO .
        
        ASSIGN iExtent = EXTENT (pArray) .
        
        DO iIndex = 1 TO iExtent:
    
            IF pArray [iIndex] = pItem THEN 
                RETURN iIndex .
    
        END.
        
        RETURN 0 . 
        
    END METHOD .
