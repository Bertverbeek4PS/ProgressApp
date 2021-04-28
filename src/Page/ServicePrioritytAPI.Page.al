page 50306 ServicePrioritytAPI
{
  PageType = API;
  Caption = 'servicePriority';
  APIPublisher = '4PS';
  APIGroup = 'ProgressApp';
  APIVersion = 'v1.0';
  EntityName = 'servicePriority';
  EntitySetName = 'servicePriority';
  SourceTable = "Service Priority";
  DelayedInsert = true;
  ODataKeyFields = SystemId;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
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
