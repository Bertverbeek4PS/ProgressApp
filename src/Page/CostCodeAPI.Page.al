page 50317 CostCode
{
    PageType = API;
    Caption = 'costCode';
    APIPublisher = '4PS';
    APIGroup = 'ProgressApp';
    APIVersion = 'v1.0';
    EntityName = 'costCodes';
    EntitySetName = 'costCodes';
    SourceTable = "Cost Code";
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
                field(component; rec.Component)
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
