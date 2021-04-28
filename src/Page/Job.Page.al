page 50304 Job
{
  PageType = API;
  Caption = 'job';
  APIPublisher = '4PS';
  APIGroup = 'ProgressApp';
  APIVersion = 'v1.0';
  EntityName = 'job';
  EntitySetName = 'job';
  SourceTable = "Job";
  DelayedInsert = true;
  ODataKeyFields = SystemId;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field(no;rec."No.")
        {
        }
        field(description;rec.Description)
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
}
