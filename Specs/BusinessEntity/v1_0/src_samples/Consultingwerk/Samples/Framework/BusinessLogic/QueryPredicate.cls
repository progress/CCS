/*------------------------------------------------------------------------
    File        : QueryPredicate
    Purpose     : Sample query predicate implementation
    Syntax      :
    Description : Query predicates provide an abstractred way of expressing
                  queries to a businness entity table.
    Author(s)   : Mike Fechner / Consultingwerk Ltd.
    Created     : Fri May 27 09:50:04 CEST 2016
    Notes       :
  ----------------------------------------------------------------------*/

USING Consultingwerk.Util.* FROM PROPATH.
USING Consultingwerk.CharacterHolder.
USING Ccs.BusinessLogic.*                              FROM PROPATH .
USING Ccs.Common.Support.*                             FROM PROPATH .
USING Consultingwerk.Samples.Framework.BusinessLogic.* FROM PROPATH .
USING Progress.Lang.*                                  FROM PROPATH .

CLASS Consultingwerk.Samples.Framework.BusinessLogic.QueryPredicate
    INHERITS QueryEntry
    IMPLEMENTS IQueryPredicate:

    /*------------------------------------------------------------------------------
        Purpose: Returns the name of the field for this query predicate
        Notes:
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY FieldName AS CHARACTER NO-UNDO
    GET.
    SET.

    /*------------------------------------------------------------------------------
        Purpose: Returns the operator for this query predicate
        Notes:
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY Operator AS QueryOperatorEnum NO-UNDO
    GET.
    SET.

    /*------------------------------------------------------------------------------
        Purpose: Returns a single value for this query predicate
        Notes:
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY Value AS IPrimitiveHolder NO-UNDO
    GET.
    SET.

    /*------------------------------------------------------------------------------
        Purpose: Returns a list of values for this query predicate
        Notes:   Used by the InRange and InList operators
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY Values AS IPrimitiveArrayHolder NO-UNDO
    GET.
    SET.


    /**
     * Purpose: Default Constructor
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC QueryPredicate():

    END CONSTRUCTOR.

    /**
     * Purpose: Default Constructor
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC QueryPredicate (pcFieldName AS CHARACTER,
                                       poOperator AS QueryOperatorEnum,
                                       poValue AS IPrimitiveHolder):

        THIS-OBJECT () .

        ASSIGN THIS-OBJECT:FieldName = pcFieldName
               THIS-OBJECT:Operator  = poOperator
               THIS-OBJECT:Value     = poValue .

    END CONSTRUCTOR.

    /**
     * Purpose: Default Constructor
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC QueryPredicate (pcFieldName AS CHARACTER,
                                       poOperator AS QueryOperatorEnum,
                                       poValues AS IPrimitiveArrayHolder):

        THIS-OBJECT () .

        ASSIGN THIS-OBJECT:FieldName = pcFieldName
               THIS-OBJECT:Operator  = poOperator
               THIS-OBJECT:Values    = poValues .

    END CONSTRUCTOR.

    /**
     * Purpose: Default Constructor
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC QueryPredicate (poJoinEnum AS JoinEnum,
                                       pcFieldName AS CHARACTER,
                                       poOperator AS QueryOperatorEnum,
                                       poValue AS IPrimitiveHolder):

        THIS-OBJECT () .

        ASSIGN THIS-OBJECT:Join      = poJoinEnum
               THIS-OBJECT:FieldName = pcFieldName
               THIS-OBJECT:Operator  = poOperator
               THIS-OBJECT:Value     = poValue .

    END CONSTRUCTOR.

    /**
     * Purpose: Default Constructor
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC QueryPredicate (poJoinEnum AS JoinEnum,
                                       pcFieldName AS CHARACTER,
                                       poOperator AS QueryOperatorEnum,
                                       poValues AS IPrimitiveArrayHolder):

        THIS-OBJECT () .

        ASSIGN THIS-OBJECT:Join      = poJoinEnum
               THIS-OBJECT:FieldName = pcFieldName
               THIS-OBJECT:Operator  = poOperator
               THIS-OBJECT:Values    = poValues .

    END CONSTRUCTOR.

    /**
     * Purpose: Default Constructor
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC QueryPredicate (pcFieldName AS CHARACTER,
                                       poOperator AS QueryOperatorEnum,
                                       pcValue AS CHARACTER):

        THIS-OBJECT () .

        ASSIGN THIS-OBJECT:FieldName = pcFieldName
               THIS-OBJECT:Operator  = poOperator
               THIS-OBJECT:Value     = NEW CharacterHolder(pcValue) .

    END CONSTRUCTOR.

    /**
     * Purpose: Default Constructor
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC QueryPredicate (poJoinEnum AS JoinEnum,
                                       pcFieldName AS CHARACTER,
                                       poOperator AS QueryOperatorEnum,
                                       pcValue AS CHARACTER):

        THIS-OBJECT () .

        ASSIGN THIS-OBJECT:Join      = poJoinEnum
               THIS-OBJECT:FieldName = pcFieldName
               THIS-OBJECT:Operator  = poOperator
               THIS-OBJECT:Value     = NEW CharacterHolder(pcValue) .

    END CONSTRUCTOR.

END CLASS .
