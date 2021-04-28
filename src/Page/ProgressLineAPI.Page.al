page 50302 ProgressLineAPI
{
  PageType = API;
  Caption = 'progressLine';
  APIPublisher = '4PS';
  APIGroup = 'ProgressApp';
  APIVersion = 'v1.0';
  EntityName = 'progressLine';
  EntitySetName = 'progressLine';
  SourceTable = "Progress Line";
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
        field(adjustment;rec.Adjustment)
        {
        }
        field(extensoinContract;rec."Extension Contract")
        {
        }
        field(option;rec.Option)
        {
        }
        field(lineNo;rec."Line No.")
        {
        }
        field(element;rec.Element)
        {
        }
        field(costObject;rec."Cost Object")
        {
        }
        field(costObjectDescription;rec."Cost Object Description")
        {
        }
        field(cumulativeProgress;rec."Cumulative Progress %")
        {
        }
        field(periodProgress;rec."Period Progress %")
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
}
