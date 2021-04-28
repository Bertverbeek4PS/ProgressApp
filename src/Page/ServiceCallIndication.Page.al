page 50307 ServiceCallIndication
{
  PageType = API;
  Caption = 'serviceCallIndication';
  APIPublisher = '4PS';
  APIGroup = 'ProgressApp';
  APIVersion = 'v1.0';
  EntityName = 'serviceCallIndication';
  EntitySetName = 'serviceCallIndication';
  SourceTable = "Service Call Indication";
  DelayedInsert = true;
  ODataKeyFields = SystemId;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field(indication;rec.Indication)
        {
        }
        field(code;rec.Code)
        {
        }
        field(description;rec.Description)
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
