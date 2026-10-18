trigger WorkOrderLineItemTrigger on Work_Order_Line_Item__c (before insert, before update) {
    if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        InventoryManager.validateStockLevels(Trigger.new);
    }
}