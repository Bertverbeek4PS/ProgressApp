page 50305 ServiceCall
{
  PageType = API;
  Caption = 'servicecall';
  APIPublisher = '4PS';
  APIGroup = 'ProgressApp';
  APIVersion = 'v1.0';
  EntityName = 'serviceCall';
  EntitySetName = 'serviceCall';
  SourceTable = "Service Call";
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
        field(customerNo;rec."Customer No.")
        {
        }
        field(customerName;rec."Customer Name")
        {
        }
        field(serviceLocationNo;rec."Service Location No.")
        {
        }
        field(callKind;rec."Call Kind")
        {
        }
        field(callType;rec."Call Type")
        {
        }
        field(yourReference;rec."Your Reference")
        {
        }
        field(SystemId;rec.SystemId)
        {
        }
        field(priority;rec.Priority)
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
