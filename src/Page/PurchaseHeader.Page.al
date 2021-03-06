page 50309 PurchaseHeader
{
  PageType = API;
  Caption = 'purchaseHeader';
  APIPublisher = '4PS';
  APIGroup = 'ProgressApp';
  APIVersion = 'v1.0';
  EntityName = 'purchaseHeader';
  EntitySetName = 'purchaseHeader';
  SourceTable = "Purchase Header";
  DelayedInsert = true;
  ODataKeyFields = SystemId;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field(documentType;rec."Document Type")
        {
        }
        field(no;rec."No.")
        {
        }
        field(buyFromVendorNo;rec."Buy-from Vendor No.")
        {
        }
        field(buyFromVendorName;rec."Buy-from Vendor Name")
        {
        }
        field(jobNo;rec."Job No.")
        {
        }
        field(postingDate;rec."Posting Date")
        {
        }
        field(amountsOnly;rec."Amounts only")
        {
        }
        field(amountIncludingVAT;rec."Amount Including VAT")
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
  [ServiceEnabled]
  procedure post(var ActionContext: WebServiceActionContext)begin
    Rec.Receive:=true;
    CODEUNIT.Run(CODEUNIT::"Purch.-Post", Rec);
    SetActionResponse(ActionContext, rec."SystemId");
  end;
  [ServiceEnabled]
  procedure postAndEmail(var ActionContext: WebServiceActionContext)var PurchRcptHeader: Record "Purch. Rcpt. Header";
  begin
    CODEUNIT.Run(CODEUNIT::"Purch.-Post", Rec);
    PurchRcptHeader.Get(Rec."Last Receiving No.");
    DoPrintPostedPurchReceipt(PurchRcptHeader, true, true);
    SetActionResponse(ActionContext, rec."SystemId");
  end;
  local procedure SetActionResponse(var ActionContext: WebServiceActionContext;
  SystemId: Guid)var begin
    SetActionResponse(ActionContext, Page::ProgressLevelAPI, SystemId);
  end;
  local procedure SetActionResponse(var ActionContext: WebServiceActionContext;
  PageId: Integer;
  SystemId: Guid)var begin
    ActionContext.SetObjectType(ObjectType::Page);
    ActionContext.SetObjectId(PageId);
    ActionContext.AddEntityKey(rec.FieldNo(SystemId), SystemId);
    ActionContext.SetResultCode(WebServiceActionResultCode::Updated);
  end;
  local procedure DoPrintPostedPurchReceipt(PurchRcptHeader: Record "Purch. Rcpt. Header";
  SendAsEmail: Boolean;
  UseEMailForPurchReceipt: Boolean)var ReportSelections: Record "Report Selections";
  Vendor: Record Vendor;
  DocumentMailing: Codeunit "Document-Mailing";
  DocName: Text[150];
  Text11012011: Label 'Posted Purchase Receipt';
  begin
    //**4PS
    PurchRcptHeader.SetRange("No.", PurchRcptHeader."No.");
    if SendAsEmail then begin
      DocumentMailing.SetGlobalLanguage(PurchRcptHeader."Language Code");
      DocName:=Text11012011;
      DocumentMailing.ResetGlobalLanguage;
      ReportSelections.SetSendPurchaseOrderReceipt(true);
      if UseEMailForPurchReceipt then if Vendor.Get(PurchRcptHeader."Buy-from Vendor No.")then if Vendor."E-Mail Subject Purch. Receipt" <> '' then ReportSelections.SetEMailSubject(Vendor."E-Mail Subject Purch. Receipt");
      ReportSelections.SetUseEMailForPurchReceipt(UseEMailForPurchReceipt);
      ReportSelections.SendEmailToVendor(ReportSelections.Usage::"P.Receipt".AsInteger(), PurchRcptHeader, PurchRcptHeader."No.", DocName, false, '')end
    else
      ReportSelections.PrintReport(ReportSelections.Usage::"P.Receipt", PurchRcptHeader);
  end;
}
