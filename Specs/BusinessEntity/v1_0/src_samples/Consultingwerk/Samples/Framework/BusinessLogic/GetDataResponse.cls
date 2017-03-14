/*------------------------------------------------------------------------
    File        : IGetDataResponse
    Purpose     : Interface for the response of the getData method of the
                  IBusinessEntiy
    Syntax      :
    Description :
    Author(s)   : Mike Fechner / Consultingwerk Ltd.
    Created     : Sun May 22 20:03:46 CEST 2016
    Notes       :
  ----------------------------------------------------------------------*/

USING Ccs.BusinessLogic.* FROM PROPATH .
USING Progress.Lang.*     FROM PROPATH .

CLASS Consultingwerk.Samples.Framework.BusinessLogic.GetDataResponse
    IMPLEMENTS IGetDataResponse:

    /*------------------------------------------------------------------------------
        Purpose: Returns the custom response object
        Notes:   May be used to return further information to the caller. May return
                 the reference to the IGetDataRequest:CustomParameter object
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY CustomResponse AS Progress.Lang.Object NO-UNDO
    GET.
    SET.

    /*------------------------------------------------------------------------------
        Purpose: Returns the Table requests
        Notes:
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY TableResponses AS IGetDataTableResponse EXTENT NO-UNDO
    GET.
    SET.

END CLASS.
