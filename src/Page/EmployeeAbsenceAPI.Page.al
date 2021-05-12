page 50300 EmployeeAbsence
{
    PageType = API;
    Caption = 'employeeAbsence';
    APIPublisher = '4PS';
    APIGroup = 'ProgressApp';
    APIVersion = 'v1.0';
    EntityName = 'employeeAbsence';
    EntitySetName = 'employeeAbsence';
    SourceTable = "Employee Absence";
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
                field(entryNo; rec."Entry No.")
                {
                }
                field(fromDate; rec."From Date")
                {
                }
                field(fromTime; rec."From Time")
                {
                }
                field(toDate; rec."To Date")
                {
                }
                field(untilTime; rec."Until Time")
                {
                }
                field(causeOfAbsenceCode; rec."Cause of Absence Code")
                {
                }
                field(description; rec.Description)
                {
                }
                field(comment; rec.Comment)
                {
                }
                field(quantity; rec.Quantity)
                {
                }
                field(unitOfMeasureCode; rec."Unit of Measure Code")
                {
                }
                field(costCode; rec."Cost Code")
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
