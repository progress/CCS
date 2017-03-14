/*------------------------------------------------------------------------
    File        : IGetDataTableResponse
    Purpose     : Contains table specific response of the IGetDataResponse
                  interface, part of the response object received by the
                  getData method of the IBusinessEntity
    Syntax      :
    Description :
    Author(s)   : Mike Fechner / Consultingwerk Ltd.
    Created     : Sun May 22 19:58:02 CEST 2016
    Notes       :
  ----------------------------------------------------------------------*/

USING Ccs.BusinessLogic.* FROM PROPATH .
USING Progress.Lang.*     FROM PROPATH .

CLASS Consultingwerk.Samples.Framework.BusinessLogic.GetDataTableResponse
    IMPLEMENTS IGetDataTableResponse:

    /*------------------------------------------------------------------------------
        Purpose: Returns the batching context to be passed back to the business
                 entity when requesting the next batch
        Notes:   Used for Batching. This value typically consists of record identifiers
                 (e.g. DATA-SOURCE ROWID retrieved by the RESTART-ROWID function
                 or other data required by the Business Entity to build the next
                 batch of data in a follow up call).
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY NextBatchingContext AS CHARACTER NO-UNDO
    GET.
    SET.

    /*------------------------------------------------------------------------------
        Purpose: Returns the batching context to be passed back to the business
                 entity when requesting the previous batch
        Notes:   Used for Batching. This value typically consists of record identifiers
                 (e.g. DATA-SOURCE ROWID retrieved by the RESTART-ROWID function
                 or other data required by the Business Entity to build the previous
                 batch of data in a follow up call).
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY PreviosuBatchingContext AS CHARACTER NO-UNDO
    GET.
    SET.

    /*------------------------------------------------------------------------------
        Purpose: Returns the name of the ProDataset Table
        Notes:   Identifies the table this IGetDataTableResponse belongs to
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY TableName AS INT64 NO-UNDO
    GET.
    SET.

END CLASS.
