page 50312 PurchRcptLine
{
  PageType = API;
  Caption = 'purchRcptLine';
  APIPublisher = '4PS';
  APIGroup = 'ProgressApp';
  APIVersion = 'v1.0';
  EntityName = 'purchRcptLine';
  EntitySetName = 'purchRcptLine';
  SourceTable = "Purch. Rcpt. Line";
  DelayedInsert = true;
  ODataKeyFields = SystemId;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field(buyfromVendorNo;rec."Buy-from Vendor No.")
        {
        }
        field(documentNo;rec."Document No.")
        {
        }
        field(no;rec."No.")
        {
        }
        field(orderNo;rec."Order No.")
        {
        }
        field(postingDate;rec."Posting Date")
        {
        }
        field(jobNo;rec."Job No.")
        {
        }
        field(shortcutDimension2Code;rec."Shortcut Dimension 2 Code")
        {
        }
        field(description;rec.Description)
        {
        }
        field(quantity;rec.Quantity)
        {
        }
        field(unitOfMeasureCode;rec."Unit of Measure Code")
        {
        }
        field(receivedLine;rec."Received (line)")
        {
        }
        field(SystemId;rec.SystemId)
        {
          Caption = 'systemId';
        }
        field(SystemCreatedAt;rec.SystemCreatedAt)
        {
          Caption = 'systemCreatedAt';
        }
        field(SystemCreatedBy;rec.SystemCreatedBy)
        {
          Caption = 'systemCreatedBy';
        }
        field(SystemModifiedAt;rec.SystemModifiedAt)
        {
          Caption = 'systemModifiedAt';
        }
        field(SystemModifiedBy;rec.SystemModifiedBy)
        {
          Caption = 'systemModifiedBy';
        }
      }
    }
  }
}
