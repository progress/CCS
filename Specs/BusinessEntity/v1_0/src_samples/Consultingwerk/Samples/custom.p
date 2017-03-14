/*------------------------------------------------------------------------
    File        : custom.p
    Purpose     :

    Syntax      :

    Description :

    Author(s)   :
    Created     : Mon Jun 06 23:58:53 CEST 2016
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

USING Ccs.BusinessLogic.*                              FROM PROPATH.
USING Consultingwerk.Samples.Framework.BusinessLogic.* FROM PROPATH.


/* ***************************  Main Block  *************************** */


DEFINE VARIABLE oRequest AS GetDataRequest NO-UNDO .


// SalesRep = "BBB" AND Country = "USA"
oRequest = NEW GetDataRequest (NEW GetDataTableRequest("eCustomer",
                                                       QueryEntry:Array(NEW QueryPredicate("SalesRep", QueryOperatorEnum:Eq, "BBB"),
                                                                        NEW QueryPredicate(JoinEnum:And, "Country", QueryOperatorEnum:Eq, "USA")))) .


// SalesRep = "BBB" AND Country = "USA" AND NOT (City BEGINS "B" OR City BEGINS "C"
oRequest = NEW GetDataRequest (NEW GetDataTableRequest("eCustomer",
                                                       QueryEntry:Array(NEW QueryPredicate ("SalesRep", QueryOperatorEnum:Eq, "BBB"),
                                                                        NEW QueryPredicate (JoinEnum:And, "Country", QueryOperatorEnum:Eq, "USA"),
                                                                        NEW QueryGroup (JoinEnum:AndNot,
                                                                                        QueryEntry:Array(NEW QueryPredicate("City", QueryOperatorEnum:Begins, "B"),
                                                                                                         NEW QueryPredicate(JoinEnum:Or, "City", QueryOperatorEnum:Begins, "C")))))) .

