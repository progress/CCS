/*------------------------------------------------------------------------
    File        : IQueryEntry
    Purpose     : Sample Query Entry implementation
    Syntax      :
    Description :
    Author(s)   : Mike Fechner / Consultingwerk Ltd.
    Created     : Mon Jun 06 21:30:03 CEST 2016
    Notes       :
  ----------------------------------------------------------------------*/

ROUTINE-LEVEL ON ERROR UNDO, THROW.

USING Ccs.BusinessLogic.* FROM PROPATH .
USING Progress.Lang.*     FROM PROPATH .

CLASS Consultingwerk.Samples.Framework.BusinessLogic.QueryEntry
    IMPLEMENTS IQueryEntry:

    /*------------------------------------------------------------------------------
        Purpose: Returns the logical operator that shold be used to join this
                 query entry to its predecessor in the current list
        Notes:   The value of None is only supported for the first entry
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY Join AS JoinEnum NO-UNDO
    GET.
    SET.

    CONSTRUCTOR PROTECTED QueryEntry():

        ASSIGN THIS-OBJECT:Join = JoinEnum:None .

    END CONSTRUCTOR.

    /**
     * Purpose:
     * Notes:
     *
     */
    METHOD PUBLIC STATIC IQueryEntry EXTENT Array (poEntry1 AS IQueryEntry):

        DEFINE VARIABLE oReturn AS IQueryEntry EXTENT 1.

        oReturn[1] = poEntry1 .

        RETURN oReturn .

    END METHOD.


    /**
     * Purpose:
     * Notes:
     *
     */
    METHOD PUBLIC STATIC IQueryEntry EXTENT Array (poEntry1 AS IQueryEntry,
                                                   poEntry2 AS IQueryEntry):

        DEFINE VARIABLE oReturn AS IQueryEntry EXTENT 2.

        oReturn[1] = poEntry1 .
        oReturn[2] = poEntry2 .

        RETURN oReturn .

    END METHOD.

    /**
     * Purpose:
     * Notes:
     *
     */
    METHOD PUBLIC STATIC IQueryEntry EXTENT Array (poEntry1 AS IQueryEntry,
                                                   poEntry2 AS IQueryEntry,
                                                   poEntry3 AS IQueryEntry):

        DEFINE VARIABLE oReturn AS IQueryEntry EXTENT 3.

        oReturn[1] = poEntry1 .
        oReturn[2] = poEntry2 .
        oReturn[3] = poEntry3 .

        RETURN oReturn .

    END METHOD.

    /**
     * Purpose:
     * Notes:
     *
     */
    METHOD PUBLIC STATIC IQueryEntry EXTENT Array (poEntry1 AS IQueryEntry,
                                                   poEntry2 AS IQueryEntry,
                                                   poEntry3 AS IQueryEntry,
                                                   poEntry4 AS IQueryEntry):

        DEFINE VARIABLE oReturn AS IQueryEntry EXTENT 4.

        oReturn[1] = poEntry1 .
        oReturn[2] = poEntry2 .
        oReturn[3] = poEntry3 .
        oReturn[4] = poEntry4 .

        RETURN oReturn .

    END METHOD.

    /**
     * Purpose:
     * Notes:
     *
     */
    METHOD PUBLIC STATIC IQueryEntry EXTENT Array (poEntry1 AS IQueryEntry,
                                                   poEntry2 AS IQueryEntry,
                                                   poEntry3 AS IQueryEntry,
                                                   poEntry4 AS IQueryEntry,
                                                   poEntry5 AS IQueryEntry):

        DEFINE VARIABLE oReturn AS IQueryEntry EXTENT 5.

        oReturn[1] = poEntry1 .
        oReturn[2] = poEntry2 .
        oReturn[3] = poEntry3 .
        oReturn[4] = poEntry4 .
        oReturn[5] = poEntry5 .

        RETURN oReturn .

    END METHOD.
    /**
     * Purpose:
     * Notes:
     *
     */
    METHOD PUBLIC STATIC IQueryEntry EXTENT Array (poEntry1 AS IQueryEntry,
                                                   poEntry2 AS IQueryEntry,
                                                   poEntry3 AS IQueryEntry,
                                                   poEntry4 AS IQueryEntry,
                                                   poEntry5 AS IQueryEntry,
                                                   poEntry6 AS IQueryEntry):

        DEFINE VARIABLE oReturn AS IQueryEntry EXTENT 6.

        oReturn[1] = poEntry1 .
        oReturn[2] = poEntry2 .
        oReturn[3] = poEntry3 .
        oReturn[4] = poEntry4 .
        oReturn[5] = poEntry5 .
        oReturn[6] = poEntry6 .

        RETURN oReturn .

    END METHOD.
    /**
     * Purpose:
     * Notes:
     *
     */
    METHOD PUBLIC STATIC IQueryEntry EXTENT Array (poEntry1 AS IQueryEntry,
                                                   poEntry2 AS IQueryEntry,
                                                   poEntry3 AS IQueryEntry,
                                                   poEntry4 AS IQueryEntry,
                                                   poEntry5 AS IQueryEntry,
                                                   poEntry6 AS IQueryEntry,
                                                   poEntry7 AS IQueryEntry):

        DEFINE VARIABLE oReturn AS IQueryEntry EXTENT 7.

        oReturn[1] = poEntry1 .
        oReturn[2] = poEntry2 .
        oReturn[3] = poEntry3 .
        oReturn[4] = poEntry4 .
        oReturn[5] = poEntry5 .
        oReturn[6] = poEntry6 .
        oReturn[7] = poEntry7 .

        RETURN oReturn .

    END METHOD.

    /**
     * Purpose:
     * Notes:
     *
     */
    METHOD PUBLIC STATIC IQueryEntry EXTENT Array (poEntry1 AS IQueryEntry,
                                                   poEntry2 AS IQueryEntry,
                                                   poEntry3 AS IQueryEntry,
                                                   poEntry4 AS IQueryEntry,
                                                   poEntry5 AS IQueryEntry,
                                                   poEntry6 AS IQueryEntry,
                                                   poEntry7 AS IQueryEntry,
                                                   poEntry8 AS IQueryEntry):

        DEFINE VARIABLE oReturn AS IQueryEntry EXTENT 8.

        oReturn[1] = poEntry1 .
        oReturn[2] = poEntry2 .
        oReturn[3] = poEntry3 .
        oReturn[4] = poEntry4 .
        oReturn[5] = poEntry5 .
        oReturn[6] = poEntry6 .
        oReturn[7] = poEntry7 .
        oReturn[8] = poEntry8 .

        RETURN oReturn .

    END METHOD.
    /**
     * Purpose:
     * Notes:
     *
     */
    METHOD PUBLIC STATIC IQueryEntry EXTENT Array (poEntry1 AS IQueryEntry,
                                                   poEntry2 AS IQueryEntry,
                                                   poEntry3 AS IQueryEntry,
                                                   poEntry4 AS IQueryEntry,
                                                   poEntry5 AS IQueryEntry,
                                                   poEntry6 AS IQueryEntry,
                                                   poEntry7 AS IQueryEntry,
                                                   poEntry8 AS IQueryEntry,
                                                   poEntry9 AS IQueryEntry):

        DEFINE VARIABLE oReturn AS IQueryEntry EXTENT 9.

        oReturn[1] = poEntry1 .
        oReturn[2] = poEntry2 .
        oReturn[3] = poEntry3 .
        oReturn[4] = poEntry4 .
        oReturn[5] = poEntry5 .
        oReturn[6] = poEntry6 .
        oReturn[7] = poEntry7 .
        oReturn[8] = poEntry8 .
        oReturn[9] = poEntry9 .

        RETURN oReturn .

    END METHOD.

    /**
     * Purpose:
     * Notes:
     *
     */
    METHOD PUBLIC STATIC IQueryEntry EXTENT Array (poEntry1 AS IQueryEntry,
                                                   poEntry2 AS IQueryEntry,
                                                   poEntry3 AS IQueryEntry,
                                                   poEntry4 AS IQueryEntry,
                                                   poEntry5 AS IQueryEntry,
                                                   poEntry6 AS IQueryEntry,
                                                   poEntry7 AS IQueryEntry,
                                                   poEntry8 AS IQueryEntry,
                                                   poEntry9 AS IQueryEntry,
                                                   poEntry10 AS IQueryEntry):

        DEFINE VARIABLE oReturn AS IQueryEntry EXTENT 10.

        oReturn[1] = poEntry1 .
        oReturn[2] = poEntry2 .
        oReturn[3] = poEntry3 .
        oReturn[4] = poEntry4 .
        oReturn[5] = poEntry5 .
        oReturn[6] = poEntry6 .
        oReturn[7] = poEntry7 .
        oReturn[8] = poEntry8 .
        oReturn[9] = poEntry9 .
        oReturn[10] = poEntry10 .

        RETURN oReturn .

    END METHOD.

END CLASS.
