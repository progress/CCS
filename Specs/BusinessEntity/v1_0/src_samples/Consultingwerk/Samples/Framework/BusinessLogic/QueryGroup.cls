/*------------------------------------------------------------------------
    File        : IQueryGroup
    Purpose     : Sample Query Group implementation
    Syntax      :
    Description :
    Author(s)   : Mike Fechner / Consultingwerk Ltd.
    Created     : Mon Jun 06 21:34:50 CEST 2016
    Notes       :
  ----------------------------------------------------------------------*/

USING Ccs.BusinessLogic.*                              FROM PROPATH .
USING Consultingwerk.Samples.Framework.BusinessLogic.* FROM PROPATH .
USING Progress.Lang.*                                  FROM PROPATH.

CLASS Consultingwerk.Samples.Framework.BusinessLogic.QueryGroup
    IMPLEMENTS IQueryGroup
    INHERITS QueryEntry:

    /*------------------------------------------------------------------------------
        Purpose: Returns the array of query predicates and nested query groups
        Notes:
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY Entries AS IQueryEntry EXTENT NO-UNDO
    GET.
    SET.

    /**
     * Purpose:
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC QueryGroup():

    END CONSTRUCTOR.

    /**
     * Purpose:
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC QueryGroup (poEntries AS IQueryEntry EXTENT):

        THIS-OBJECT () .

        THIS-OBJECT:Entries = poEntries .

    END CONSTRUCTOR.

    CONSTRUCTOR PUBLIC QueryGroup (poJoin AS JoinEnum,
                                   poEntries AS IQueryEntry EXTENT):

        THIS-OBJECT () .

        THIS-OBJECT:Join    = poJoin .
        THIS-OBJECT:Entries = poEntries .

    END CONSTRUCTOR.

END CLASS.

