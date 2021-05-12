page 50315 "Extension Contract API 4PS"
{
    PageType = API;
    APIPublisher = '4ps';
    APIGroup = 'ProgressApp';
    APIVersion = 'v1.0';
    EntityName = 'extensionContract';
    EntitySetName = 'extensionContracts';
    SourceTable = "Extension Contract";
    DelayedInsert = true;
    Extensible = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(projectNo; rec."Project No.")
                {
                }
                field(projectDescription; rec."Project Description")
                {
                }
                field(contractNo; rec."Contract No.")
                {
                }
                field(description; rec.Description)
                {
                }
                field(status; rec.Status)
                {
                }
                field(departmentCode; rec."Department Code")
                {
                }
                field(contractAmount; rec."Contract Amount")
                {
                }
                field(contractCurrencyCode; rec."Contract Currency Code")
                {
                }
                field(offeredAmount; rec."Offered Amount")
                {
                }
                field(offeringDate; rec."Offering Date")
                {
                }
                field(dueDate; rec."Due Date")
                {
                }
                field(contractDate; rec."Contract Date")
                {
                }
                field(principal; rec.Principal)
                {
                }
                field(principalName; rec."Principal Name")
                {
                }
                field(principalContact; rec."Principal Contact")
                {
                }
                field(principalContactName; rec."Principal Contact Name")
                {
                }
                field(versionDate; rec."Version Date")
                {
                }
                field(finished; rec.Finished)
                {
                }
                field(SystemId; rec.SystemId)
                {
                }
                field(SystemCreatedAt; rec.SystemCreatedAt)
                {
                }
                field(SystemCreatedBy; rec.SystemCreatedBy)
                {
                }
                field(SystemModifiedAt; rec.SystemModifiedAt)
                {
                }
                field(SystemModifiedBy; rec.SystemModifiedBy)
                {
                }
            }
        }
    }
}