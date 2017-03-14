/*------------------------------------------------------------------------
    File        : IGetDataRequest
    Purpose     : Inteface for the request object passed to the getData
                  method of the IBusinessEntity
    Syntax      :
    Description :
    Author(s)   : Mike Fechner / Consultingwerk Ltd.
    Created     : Sun May 22 19:58:18 CEST 2016
    Notes       :
  ----------------------------------------------------------------------*/

USING Ccs.BusinessLogic.* FROM PROPATH .
USING Progress.Lang.*     FROM PROPATH .

CLASS Consultingwerk.Samples.Framework.BusinessLogic.GetDataRequest
    IMPLEMENTS IGetDataRequest:

    /*------------------------------------------------------------------------------
        Purpose: Returns the custom parameter object
        Notes:   May be used to provide further instructions or information to the
                 Business Entity while executing the GetData request
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY CustomParameter AS Progress.Lang.Object NO-UNDO
    GET.
    SET.

    /*------------------------------------------------------------------------------
        Purpose: Returns the Table requests
        Notes:
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY NamedQuery AS INamedQuery NO-UNDO
    GET.
    SET.

    /*------------------------------------------------------------------------------
        Purpose: Returns the Table requests
        Notes:
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY TableRequests AS IGetDataTableRequest EXTENT NO-UNDO
    GET.
    SET.


    /**
     * Purpose:
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC GetDataRequest():

    END CONSTRUCTOR.

    /**
     * Purpose:
     * Notes:
     *
     */
    CONSTRUCTOR PUBLIC GetDataRequest (poTableRequest AS IGetDataTableRequest):

        DEFINE VARIABLE oTableRequests AS IGetDataTableRequest EXTENT 1 NO-UNDO .

        ASSIGN THIS-OBJECT:TableRequests[1] = oTableRequests .

    END CONSTRUCTOR.

END CLASS.
