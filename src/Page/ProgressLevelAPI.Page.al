page 50303 ProgressLevelAPI
{
  PageType = API;
  Caption = 'progressLevel';
  APIPublisher = '4PS';
  APIGroup = 'ProgressApp';
  APIVersion = 'v1.0';
  EntityName = 'progressLevel';
  EntitySetName = 'progressLevel';
  SourceTable = "Progress Level";
  DelayedInsert = true;
  ODataKeyFields = SystemId;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field(projectNo;rec."Project No.")
        {
        }
        field(progressDate;rec."Progress Date")
        {
        }
        field(comment;rec.Comment)
        {
        }
        field(projectDescription;rec."Project Description")
        {
        }
        field(projectManager;rec."Project Manager")
        {
        }
        field(SystemId;rec.SystemId)
        {
        }
        field(SystemCreatedAt;rec.SystemCreatedAt)
        {
        }
        field(SystemCreatedBy;rec.SystemCreatedBy)
        {
        }
        field(SystemModifiedAt;rec.SystemModifiedAt)
        {
        }
        field(SystemModifiedBy;rec.SystemModifiedBy)
        {
        }
      }
    }
  }
  [ServiceEnabled]
  procedure createProgress(var ActionContext: WebServiceActionContext)begin
    CODEUNIT.Run(CODEUNIT::"Create Progress Lines", Rec);
    SetActionResponse(ActionContext, rec."SystemId");
  end;
  [ServiceEnabled]
  procedure copyPreviousProgress(var ActionContext: WebServiceActionContext)var lProgressLineRec: Record "Progress Line";
  begin
    //First Create an Progress
    CODEUNIT.Run(CODEUNIT::"Create Progress Lines", Rec);
    //Then Copy a progress        
    lProgressLineRec.SetRange("Project No.", rec."Project No.");
    lProgressLineRec.SetRange("Progress Date", rec."Progress Date");
    lProgressLineRec.SetRange("Cost Type");
    if lProgressLineRec.FindSet(true, false)then repeat lProgressLineRec.SetFlowFiltersDates; //C017374.n
        lProgressLineRec.CalcFields("Previous Date");
        if lProgressLineRec."Previous Date" <> 0D then begin
          if lProgressLineRec."Progress Registry" = lProgressLineRec."Progress Registry"::Quantities then begin
            lProgressLineRec.CalcFields("Previous Posture");
            lProgressLineRec.Validate("Cumulative Progress", lProgressLineRec."Previous Posture");
          end
          else
          begin
            lProgressLineRec.CalcFields("Prev.Cumulative Progr.%");
            lProgressLineRec.Validate("Cumulative Progress %", lProgressLineRec."Prev.Cumulative Progr.%");
          end;
          lProgressLineRec.Modify(true);
        end;
      until lProgressLineRec.Next = 0;
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
}
