/**********************************************************************
 * Copyright (C) 2006-2015 by Consultingwerk Ltd. ("CW") -            *
 * www.consultingwerk.de and other contributors as listed             *
 * below.  All Rights Reserved.                                       *
 *                                                                    *
 *  Software is distributed on an "AS IS", WITHOUT WARRANTY OF ANY    *
 *   KIND, either express or implied.                                 *
 *                                                                    *
 *  Contributors:                                                     *
 *                                                                    *
 **********************************************************************/
 /*------------------------------------------------------------------------
    File        : ArrayHelper
    Purpose     : Helper methods for ABL Arrays
    Syntax      :
    Description :
    Author(s)   : Mike Fechner / Consultingwerk Ltd.
    Created     : Fri Apr 24 23:20:11 CEST 2015
    Notes       :
  ----------------------------------------------------------------------*/

ROUTINE-LEVEL ON ERROR UNDO, THROW.

USING Consultingwerk.Util.* FROM PROPATH .
USING Progress.Lang.*       FROM PROPATH .

{Consultingwerk/products.i}

CLASS Consultingwerk.Util.ArrayHelper:

    /*------------------------------------------------------------------------------
        Purpose: Protected constructor for the ArrayHelper class
        Notes:   Disallow instance Creation
    ------------------------------------------------------------------------------*/
    CONSTRUCTOR PROTECTED ArrayHelper ():
        SUPER ().

    END CONSTRUCTOR.

    {Consultingwerk/Util/ArrayHelperArray.i CHARACTER} .
    {Consultingwerk/Util/ArrayHelperArray.i DATE} .
    {Consultingwerk/Util/ArrayHelperArray.i DATETIME} .
    {Consultingwerk/Util/ArrayHelperArray.i DATETIME-TZ} .
    {Consultingwerk/Util/ArrayHelperArray.i DECIMAL} .
    {Consultingwerk/Util/ArrayHelperArray.i INT} .
    {Consultingwerk/Util/ArrayHelperArray.i INT64} .
    {Consultingwerk/Util/ArrayHelperArray.i LOGICAL} .
    {Consultingwerk/Util/ArrayHelperArray.i RAW} .
    {Consultingwerk/Util/ArrayHelperArray.i RECID} .
    {Consultingwerk/Util/ArrayHelperArray.i ROWID} .
    {Consultingwerk/Util/ArrayHelperArray.i Progress.Lang.Object} .

    &IF DEFINED (DotNetAccessible) NE 0 &THEN
    {Consultingwerk/Util/ArrayHelperSystemArray.i} .
    &ENDIF

    /*------------------------------------------------------------------------------
        Purpose: Returns the average of all array entries
        Notes:
        @param pdeArray The array of decimal values
        @return The average of all array entries
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC DECIMAL Average (pdeArray AS DECIMAL EXTENT):

        IF EXTENT (pdeArray) >= 1 THEN
            RETURN ArrayHelper:Sum (pdeArray) / EXTENT (pdeArray) .
        ELSE
            RETURN ?  .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns the average of all array entries
        Notes:
        @param piArray The array of integer or int64 values
        @return The average of all array entries
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC DECIMAL Average (piArray AS INT64 EXTENT):

        IF EXTENT (piArray) >= 1 THEN
            RETURN ArrayHelper:Sum (piArray) / EXTENT (piArray) .
        ELSE
            RETURN ?  .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Converts a list into an array
        Notes:   Uses "," as the default delimiter
        @param pcList The list to convert into an array
        @return The array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC CHARACTER EXTENT ListToCharacterArray (pcList AS CHARACTER):

        RETURN ListToCharacterArray (pcList, ",":U) .

    END METHOD .

    /*------------------------------------------------------------------------------
        Purpose: Converts a list into an array
        Notes:
        @param pcList The list to convert into an array
        @param pcDelimiter The list delimiter
        @return The array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC CHARACTER EXTENT ListToCharacterArray (pcList AS CHARACTER,
                                                                pcDelimiter AS CHARACTER):

        DEFINE VARIABLE cArray   AS CHARACTER NO-UNDO EXTENT.
        DEFINE VARIABLE iEntries AS INTEGER   NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER   NO-UNDO.

        IF pcList > "":U THEN DO:

            ASSIGN iEntries        = NUM-ENTRIES (pcList, pcDelimiter)
                   EXTENT (cArray) = iEntries .

            DO i = 1 TO iEntries:
                ASSIGN cArray[i] = ENTRY (i, pcList, pcDelimiter) .
            END.
        END.

        RETURN cArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Converts a list into an array
        Notes:   Uses "," as the default delimiter
        @param pcList The list to convert into an array
        @return The array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC DECIMAL EXTENT ListToDecimalArray (pcList AS CHARACTER):

        RETURN ListToDecimalArray (pcList, ",":U) .

    END METHOD .

    /*------------------------------------------------------------------------------
        Purpose: Converts a list into an array
        Notes:
        @param pcList The list to convert into an array
        @param pcDelimiter The list delimiter
        @return The array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC DECIMAL EXTENT ListToDecimalArray (pcList AS CHARACTER,
                                                            pcDelimiter AS CHARACTER):

        DEFINE VARIABLE deArray  AS DECIMAL NO-UNDO EXTENT.
        DEFINE VARIABLE iEntries AS INTEGER NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER NO-UNDO.

        IF pcList > "":U THEN DO:

            ASSIGN iEntries        = NUM-ENTRIES (pcList, pcDelimiter)
                   EXTENT (deArray) = iEntries .

            DO i = 1 TO iEntries:
                ASSIGN deArray[i] = DECIMAL (ENTRY (i, pcList, pcDelimiter)) .
            END.
        END.

        RETURN deArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Converts a list into an array
        Notes:   Uses "," as the default delimiter
        @param pcList The list to convert into an array
        @return The array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC INTEGER EXTENT ListToIntegerArray (pcList AS CHARACTER):

        RETURN ListToIntegerArray (pcList, ",":U) .

    END METHOD .

    /*------------------------------------------------------------------------------
        Purpose: Converts a list into an array
        Notes:
        @param pcList The list to convert into an array
        @param pcDelimiter The list delimiter
        @return The array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC INTEGER EXTENT ListToIntegerArray (pcList AS CHARACTER,
                                                            pcDelimiter AS CHARACTER):

        DEFINE VARIABLE iArray   AS INTEGER NO-UNDO EXTENT.
        DEFINE VARIABLE iEntries AS INTEGER NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER NO-UNDO.

        IF pcList > "":U THEN DO:

            ASSIGN iEntries        = NUM-ENTRIES (pcList, pcDelimiter)
                   EXTENT (iArray) = iEntries .

            DO i = 1 TO iEntries:
                ASSIGN iArray[i] = INTEGER (ENTRY (i, pcList, pcDelimiter)) .
            END.
        END.

        RETURN iArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Converts a list into an array
        Notes:   Uses "," as the default delimiter
        @param pcList The list to convert into an array
        @return The array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC INT64 EXTENT ListToInt64Array (pcList AS CHARACTER):

        RETURN ListToIntegerArray (pcList, ",":U) .

    END METHOD .

    /*------------------------------------------------------------------------------
        Purpose: Converts a list into an array
        Notes:
        @param pcList The list to convert into an array
        @param pcDelimiter The list delimiter
        @return The array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC INT64 EXTENT ListToInt64Array (pcList AS CHARACTER,
                                                        pcDelimiter AS CHARACTER):

        DEFINE VARIABLE iArray   AS INT64   NO-UNDO EXTENT.
        DEFINE VARIABLE iEntries AS INTEGER NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER NO-UNDO.

        IF pcList > "":U THEN DO:

            ASSIGN iEntries        = NUM-ENTRIES (pcList, pcDelimiter)
                   EXTENT (iArray) = iEntries .

            DO i = 1 TO iEntries:
                ASSIGN iArray[i] = INTEGER (ENTRY (i, pcList, pcDelimiter)) .
            END.
        END.

        RETURN iArray .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns the max value of the array entries
        Notes:
        @param pdeArray The decimal array
        @return The max value of all array entries
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC DECIMAL Max (pdeArray AS DECIMAL EXTENT):

        DEFINE VARIABLE i     AS INTEGER NO-UNDO.
        DEFINE VARIABLE deMax AS DECIMAL NO-UNDO.

        IF EXTENT (pdeArray) >= 1 THEN DO:
            deMax = pdeArray[1] .

            DO i = 2 TO EXTENT (pdeArray):
                deMax = MAXIMUM (deMax, pdeArray[i]) .
            END.

            RETURN deMax .
        END.
        ELSE
            RETURN ?  .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns the max value of the array entries
        Notes:
        @param piArray The integer array
        @return The max value of all array entries
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC INTEGER Max (piArray AS INTEGER EXTENT):

        DEFINE VARIABLE i    AS INTEGER NO-UNDO.
        DEFINE VARIABLE iMax AS INTEGER NO-UNDO.

        IF EXTENT (piArray) >= 1 THEN DO:
            iMax = piArray[1] .

            DO i = 2 TO EXTENT (piArray):
                iMax = MAXIMUM (iMax, piArray[i]) .
            END.

            RETURN iMax .
        END.
        ELSE
            RETURN ?  .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns the max value of the array entries
        Notes:
        @param piArray The int64 array
        @return The max value of all array entries
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC INT64 Max (piArray AS INT64 EXTENT):

        DEFINE VARIABLE i    AS INTEGER NO-UNDO.
        DEFINE VARIABLE iMax AS INT64   NO-UNDO.

        IF EXTENT (piArray) >= 1 THEN DO:
            iMax = piArray[1] .

            DO i = 2 TO EXTENT (piArray):
                iMax = MAXIMUM (iMax, piArray[i]) .
            END.

            RETURN iMax .
        END.
        ELSE
            RETURN ?  .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns the min value of the array entries
        Notes:
        @param pdeArray The decimal array
        @return The min value of all array entries
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC DECIMAL Min (pdeArray AS DECIMAL EXTENT):

        DEFINE VARIABLE i     AS INTEGER NO-UNDO.
        DEFINE VARIABLE deMax AS DECIMAL NO-UNDO.

        IF EXTENT (pdeArray) >= 1 THEN DO:
            deMax = pdeArray[1] .

            DO i = 2 TO EXTENT (pdeArray):
                deMax = MINIMUM (deMax, pdeArray[i]) .
            END.

            RETURN deMax .
        END.
        ELSE
            RETURN ?  .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns the min value of the array entries
        Notes:
        @param piArray The integer array
        @return The min value of all array entries
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC INTEGER Min (piArray AS INTEGER EXTENT):

        DEFINE VARIABLE i    AS INTEGER NO-UNDO.
        DEFINE VARIABLE iMax AS INTEGER NO-UNDO.

        IF EXTENT (piArray) >= 1 THEN DO:
            iMax = piArray[1] .

            DO i = 2 TO EXTENT (piArray):
                iMax = MINIMUM (iMax, piArray[i]) .
            END.

            RETURN iMax .
        END.
        ELSE
            RETURN ?  .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns the min value of the array entries
        Notes:
        @param piArray The int64 array
        @return The min value of all array entries
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC INT64 Min (piArray AS INT64 EXTENT):

        DEFINE VARIABLE i    AS INTEGER NO-UNDO.
        DEFINE VARIABLE iMax AS INT64   NO-UNDO.

        IF EXTENT (piArray) >= 1 THEN DO:
            iMax = piArray[1] .

            DO i = 2 TO EXTENT (piArray):
                iMax = MINIMUM (iMax, piArray[i]) .
            END.

            RETURN iMax .
        END.
        ELSE
            RETURN ?  .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Displays a message with the items of the given character array
        Notes:
        @param pcPrefix The prefix to add to each item (e.g. array name)
        @param pcArray The Character Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC VOID Message (pcPrefix AS CHARACTER,
                                       pcArray AS CHARACTER EXTENT):

        DEFINE VARIABLE cMessage AS CHARACTER NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER   NO-UNDO.

        IF EXTENT (pcArray) >= 1 THEN DO:
            DO i = 1 TO EXTENT (pcArray):
                ASSIGN cMessage = cMessage + SUBSTITUTE ("&1[&2]: &3~n":U,
                                                         pcPrefix,
                                                         i,
                                                         pcArray[i]) .
            END.

            MESSAGE TRIM (cMessage, "~n":U)
                VIEW-AS ALERT-BOX.
        END.
        ELSE
            MESSAGE SUBSTITUTE ("Uninitialized array &1.":U)
                VIEW-AS ALERT-BOX .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Displays a message with the items of the given date array
        Notes:
        @param pcPrefix The prefix to add to each item (e.g. array name)
        @param pdaArray The date Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC VOID Message (pcPrefix AS CHARACTER,
                                       pdaArray AS DATE EXTENT):

        DEFINE VARIABLE cMessage AS CHARACTER NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER   NO-UNDO.

        IF EXTENT (pdaArray) >= 1 THEN DO:
            DO i = 1 TO EXTENT (pdaArray):
                ASSIGN cMessage = cMessage + SUBSTITUTE ("&1[&2]: &3~n":U,
                                                         pcPrefix,
                                                         i,
                                                         pdaArray[i]) .
            END.

            MESSAGE TRIM (cMessage, "~n":U)
                VIEW-AS ALERT-BOX.
        END.
        ELSE
            MESSAGE SUBSTITUTE ("Uninitialized array &1.":U)
                VIEW-AS ALERT-BOX .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Displays a message with the items of the given date-time array
        Notes:
        @param pcPrefix The prefix to add to each item (e.g. array name)
        @param pdtArray The date-time Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC VOID Message (pcPrefix AS CHARACTER,
                                       pdtArray AS DATETIME EXTENT):

        DEFINE VARIABLE cMessage AS CHARACTER NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER   NO-UNDO.

        IF EXTENT (pdtArray) >= 1 THEN DO:
            DO i = 1 TO EXTENT (pdtArray):
                ASSIGN cMessage = cMessage + SUBSTITUTE ("&1[&2]: &3~n":U,
                                                         pcPrefix,
                                                         i,
                                                         pdtArray[i]) .
            END.

            MESSAGE TRIM (cMessage, "~n":U)
                VIEW-AS ALERT-BOX.
        END.
        ELSE
            MESSAGE SUBSTITUTE ("Uninitialized array &1.":U)
                VIEW-AS ALERT-BOX .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Displays a message with the items of the given date-time-tz array
        Notes:
        @param pcPrefix The prefix to add to each item (e.g. array name)
        @param pdtArray The date-time-tz Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC VOID Message (pcPrefix AS CHARACTER,
                                       pdtArray AS DATETIME-TZ EXTENT):

        DEFINE VARIABLE cMessage AS CHARACTER NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER   NO-UNDO.

        IF EXTENT (pdtArray) >= 1 THEN DO:
            DO i = 1 TO EXTENT (pdtArray):
                ASSIGN cMessage = cMessage + SUBSTITUTE ("&1[&2]: &3~n":U,
                                                         pcPrefix,
                                                         i,
                                                         pdtArray[i]) .
            END.

            MESSAGE TRIM (cMessage, "~n":U)
                VIEW-AS ALERT-BOX.
        END.
        ELSE
            MESSAGE SUBSTITUTE ("Uninitialized array &1.":U)
                VIEW-AS ALERT-BOX .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Displays a message with the items of the given decimal array
        Notes:
        @param pcPrefix The prefix to add to each item (e.g. array name)
        @param pdeArray The Decimal Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC VOID Message (pcPrefix AS CHARACTER,
                                       pdeArray AS DECIMAL EXTENT):

        DEFINE VARIABLE cMessage AS CHARACTER NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER   NO-UNDO.

        IF EXTENT (pdeArray) >= 1 THEN DO:
            DO i = 1 TO EXTENT (pdeArray):
                ASSIGN cMessage = cMessage + SUBSTITUTE ("&1[&2]: &3~n":U,
                                                         pcPrefix,
                                                         i,
                                                         pdeArray[i]) .
            END.

            MESSAGE TRIM (cMessage, "~n":U)
                VIEW-AS ALERT-BOX.
        END.
        ELSE
            MESSAGE SUBSTITUTE ("Uninitialized array &1.":U)
                VIEW-AS ALERT-BOX .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Displays a message with the items of the given integer/int64 array
        Notes:
        @param pcPrefix The prefix to add to each item (e.g. array name)
        @param piArray The integer Array
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC VOID Message (pcPrefix AS CHARACTER,
                                       piArray AS INT64 EXTENT):

        DEFINE VARIABLE cMessage AS CHARACTER NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER   NO-UNDO.

        IF EXTENT (piArray) >= 1 THEN DO:
            DO i = 1 TO EXTENT (piArray):
                ASSIGN cMessage = cMessage + SUBSTITUTE ("&1[&2]: &3~n":U,
                                                         pcPrefix,
                                                         i,
                                                         piArray[i]) .
            END.

            MESSAGE TRIM (cMessage, "~n":U)
                VIEW-AS ALERT-BOX.
        END.
        ELSE
            MESSAGE SUBSTITUTE ("Uninitialized array &1.":U)
                VIEW-AS ALERT-BOX .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Displays a message with the items of the given logical array
        Notes:
        @param pcPrefix The prefix to add to each item (e.g. array name)
        @param plArray The logicalArray
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC VOID Message (pcPrefix AS CHARACTER,
                                       plArray AS LOGICAL EXTENT):

        DEFINE VARIABLE cMessage AS CHARACTER NO-UNDO.
        DEFINE VARIABLE i        AS INTEGER   NO-UNDO.

        IF EXTENT (plArray) >= 1 THEN DO:
            DO i = 1 TO EXTENT (plArray):
                ASSIGN cMessage = cMessage + SUBSTITUTE ("&1[&2]: &3~n":U,
                                                         pcPrefix,
                                                         i,
                                                         plArray[i]) .
            END.

            MESSAGE TRIM (cMessage, "~n":U)
                VIEW-AS ALERT-BOX.
        END.
        ELSE
            MESSAGE SUBSTITUTE ("Uninitialized array &1.":U)
                VIEW-AS ALERT-BOX .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns the sum of all array entries
        Notes:
        @param pdeArray The array of decimal values
        @return The sum of all array entries
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC DECIMAL Sum (pdeArray AS DECIMAL EXTENT):

        DEFINE VARIABLE deSum   AS DECIMAL NO-UNDO  .
        DEFINE VARIABLE i       AS INTEGER NO-UNDO.
        DEFINE VARIABLE iExtent AS INTEGER NO-UNDO.

        ASSIGN iExtent = EXTENT (pdeArray) .

        IF iExtent >= 1 THEN
        DO i = 1 TO iExtent:
            deSum = deSum + pdeArray[i] .
        END.
        ELSE
            deSum = ?  .

        RETURN deSum .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Returns the sum of all array entries
        Notes:
        @param piArray The array of int64 or integer values
        @return The sum of all array entries
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC INT64 Sum (piArray AS INT64 EXTENT):

        DEFINE VARIABLE iSum    AS INT64   NO-UNDO .
        DEFINE VARIABLE i       AS INTEGER NO-UNDO .
        DEFINE VARIABLE iExtent AS INTEGER NO-UNDO .

        ASSIGN iExtent = EXTENT (piArray) .

        IF iExtent >= 1 THEN
        DO i = 1 TO iExtent:
            iSum = iSum + piArray[i] .
        END.
        ELSE
            iSum = ?  .

        RETURN iSum .

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Turns an array into a list
        Notes:   Uses "," as the default delimiter
        @param pcArray The array to turn into a list
        @return The list containing the array values
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC CHARACTER ToList (pcArray AS CHARACTER EXTENT):

        RETURN ArrayHelper:ToList (pcArray, ",":U) .

    END METHOD .

    /*------------------------------------------------------------------------------
        Purpose: Turns an array into a list
        Notes:
        @param pcArray The array to turn into a list
        @param pcDelimiter The list delimiter
        @return The list containing the array values
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC CHARACTER ToList (pcArray AS CHARACTER EXTENT,
                                           pcDelimiter AS CHARACTER):

        DEFINE VARIABLE cList AS CHARACTER NO-UNDO .
        DEFINE VARIABLE i     AS INTEGER   NO-UNDO .

        IF EXTENT (pcArray) >= 1 THEN
        DO i = 1 TO EXTENT (pcArray):
            cList = cList + (IF i > 1 THEN pcDelimiter ELSE "":U) +
                    pcArray[i] .
        END.
        ELSE
            RETURN ?  .

        RETURN cList.

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Turns an array into a list
        Notes:
        @param pdeArray The array to turn into a list
        @return The list containing the array values
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC CHARACTER ToList (pdeArray AS DECIMAL EXTENT):

        RETURN ArrayHelper:ToList (pdeArray, ",":U) .

    END METHOD .

    /*------------------------------------------------------------------------------
        Purpose: Turns an integer array into a list
        Notes:
        @param pdeArray The array to turn into a list
        @param pcDelimiter The list delimiter
        @return The list containing the array values
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC CHARACTER ToList (pdeArray AS DECIMAL EXTENT,
                                           pcDelimiter AS CHARACTER):

        DEFINE VARIABLE cList AS CHARACTER NO-UNDO .
        DEFINE VARIABLE i     AS INTEGER   NO-UNDO .

        IF EXTENT (pdeArray) >= 1 THEN
        DO i = 1 TO EXTENT (pdeArray):
            cList = cList + (IF i > 1 THEN pcDelimiter ELSE "":U) +
                    STRING (pdeArray[i]) .
        END.
        ELSE
            RETURN ?  .

        RETURN cList.

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Turns an array into a list
        Notes:
        @param piArray The array to turn into a list
        @return The list containing the array values
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC CHARACTER ToList (piArray AS INT64 EXTENT):

        RETURN ArrayHelper:ToList (piArray, ",":U) .

    END METHOD .

    /*------------------------------------------------------------------------------
        Purpose: Turns an integer array into a list
        Notes:
        @param piArray The array to turn into a list
        @param pcDelimiter The list delimiter
        @return The list containing the array values
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC CHARACTER ToList (piArray AS INT64 EXTENT,
                                           pcDelimiter AS CHARACTER):

        DEFINE VARIABLE cList AS CHARACTER NO-UNDO .
        DEFINE VARIABLE i     AS INTEGER   NO-UNDO .

        IF EXTENT (piArray) >= 1 THEN
        DO i = 1 TO EXTENT (piArray):
            cList = cList + (IF i > 1 THEN pcDelimiter ELSE "":U) +
                    STRING (piArray[i]) .
        END.
        ELSE
            RETURN ?  .

        RETURN cList.

    END METHOD.

    /*------------------------------------------------------------------------------
        Purpose: Turns an array into a list
        Notes:
        @param poArray The array to turn into a list
        @return The list containing the array values
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC CHARACTER ToList (poArray AS Progress.Lang.Object EXTENT):

        RETURN ArrayHelper:ToList (poArray, ",":U) .

    END METHOD .

    /*------------------------------------------------------------------------------
        Purpose: Returns a comma delimited list with the Enums from the Array
        Notes:
        @param poArray The array to turn into a list
        @param pcDelimiter The list delimiter
        @return The list containing the array values
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC STATIC CHARACTER ToList (poArray AS Progress.Lang.Object EXTENT,
                                           pcDelimiter AS CHARACTER):

        DEFINE VARIABLE cList    AS CHARACTER NO-UNDO .
        DEFINE VARIABLE i        AS INTEGER   NO-UNDO .
        DEFINE VARIABLE iExtents AS INTEGER   NO-UNDO .

        ASSIGN iExtents = EXTENT (poArray) .

        IF iExtents > 0 THEN
        DO i = 1 TO iExtents:

            IF VALID-OBJECT (poArray[i]) THEN
                ASSIGN cList = cList + (IF cList > "":U THEN pcDelimiter ELSE "":U)  +
                               STRING (poArray[i]) .
        END.
        ELSE
            ASSIGN cList = ? .

        RETURN cList .

    END METHOD.

END CLASS.
