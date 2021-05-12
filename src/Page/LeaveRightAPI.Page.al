page 50314 LeaveRight
{
    PageType = API;
    Caption = 'leaveRight';
    APIPublisher = '4PS';
    APIGroup = 'ProgressApp';
    APIVersion = 'v1.0';
    EntityName = 'leaveRight';
    EntitySetName = 'leaveRight';
    SourceTable = "Leave Right";
    DelayedInsert = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(employeeNo; rec."Employee No.")
                {
                }
                field(leaveType; rec."Leave Type")
                {
                }
                field(startDate; rec."Start Date")
                {
                }
                field(hoursPerYear; rec."Hours Per Year")
                {
                }
                field(SystemId; rec.SystemId)
                {
                    Caption = 'systemId';
                }
                field(SystemCreatedAt; rec.SystemCreatedAt)
                {
                    Caption = 'systemCreatedAt';
                }
                field(SystemCreatedBy; rec.SystemCreatedBy)
                {
                    Caption = 'systemCreatedBy';
                }
                field(SystemModifiedAt; rec.SystemModifiedAt)
                {
                    Caption = 'systemModifiedAt';
                }
                field(SystemModifiedBy; rec.SystemModifiedBy)
                {
                    Caption = 'systemModifiedBy';
                }
            }
        }
    }
}
