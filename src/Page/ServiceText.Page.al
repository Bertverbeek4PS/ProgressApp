page 50308 ServiceText
{
  PageType = API;
  Caption = 'serviceText';
  APIPublisher = '4PS';
  APIGroup = 'ProgressApp';
  APIVersion = 'v1.0';
  EntityName = 'serviceText';
  EntitySetName = 'serviceText';
  SourceTable = "Service Text";
  DelayedInsert = true;
  ODataKeyFields = SystemId;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field(tableName;rec."Table Name")
        {
        }
        field(no;rec."No.")
        {
        }
        field(lineNo;rec."Line No.")
        {
        }
        field(date;rec.Date)
        {
        }
        field(comment;rec.Comment)
        {
        }
        field(tableField;rec."Table Field")
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
