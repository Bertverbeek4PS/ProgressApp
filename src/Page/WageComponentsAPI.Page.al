page 50318 WageComponents
{
    PageType = API;
    Caption = 'wageComponents';
    APIPublisher = '4PS';
    APIGroup = 'ProgressApp';
    APIVersion = 'v1.0';
    EntityName = 'wageComponents';
    EntitySetName = 'wageComponents';
    SourceTable = "Wage Component";
    DelayedInsert = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(code; rec.Code)
                {
                }
                field(description; rec.Description)
                {
                }
                field(componentType; rec."Component Type")
                {
                }
                field(leaveType; rec."Leave Type")
                {
                }
                field(leaveFactor; rec."Leave Factor")
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
