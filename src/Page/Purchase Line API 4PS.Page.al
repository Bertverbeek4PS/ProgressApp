page 50310 "Purchase Line API 4PS"
{
    PageType = API;
    APIPublisher = '4ps';
    APIGroup = 'ProgressApp';
    APIVersion = 'v1.0';
    EntityName = 'purchaseLine';
    EntitySetName = 'purchaseLine';
    SourceTable = "Purchase Line";
    DelayedInsert = true;
    Extensible = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(documentType; rec."Document Type")
                {
                }
                field(documentNo; rec."Document No.")
                {
                }
                field(lineNo; rec."Line No.")
                {
                }
                field(description; rec.Description)
                {
                }
                field(quantity; rec.Quantity)
                {
                }
                field(lineAmount; rec."Line Amount")
                {
                }
                field(qtyToReceive; rec."Qty. to Receive")
                {
                }
                field(amnttoReceive; rec."Amnt. to Receive")
                {
                }
                field(quantityReceived; rec."Quantity Received")
                {
                }
                field(unitOfMeasure; rec."Unit of Measure")
                {
                }
                field(unitOfMeasureCode; rec."Unit of Measure Code")
                {
                }
                field(shortcutDimension2Code; rec."Shortcut Dimension 2 Code")
                {
                }
                field(jobNo; rec."Job No.")
                {
                }
                field(expectedReceiptDate; rec."Expected Receipt Date")
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
