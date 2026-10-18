# Enterprise Production & Inventory Management System

A custom Salesforce application designed to bridge manufacturing shop-floor execution with warehouse inventory tracking. This project prevents production delays by strictly enforcing inventory limits during work order creation and automating procurement notifications for low-stock materials.

## 🚀 Business Problem
Shop floor workers were requesting materials for Work Orders that were physically out of stock in the warehouse. This caused manufacturing bottlenecks, inaccurate forecasting, and delayed procurement cycles. 

## 💡 Solution & Architecture
* **Custom Data Model:** `Work_Order__c`, `Work_Order_Line_Item__c`, and `Inventory_Item__c` objects handle relational data.
* **Programmatic Validation (Apex):** A bulkified `before insert` and `before update` trigger on `Work_Order_Line_Item__c` queries current warehouse stock. If requested quantity exceeds `Available_Stock__c`, the transaction is blocked.
* **Declarative Automation (Flows):** A Record-Triggered Flow automatically monitors `Inventory_Item__c`. When stock falls below 50 units, it fires an Email Alert to the procurement team.

## 🛠 Tech Stack
* **Backend:** Apex (Triggers, Handler Classes, Bulkification, SOQL)
* **Automation:** Record-Triggered Flows, Email Alerts
* **Data:** Custom Objects, Master-Detail Relationships, Validation Rules
* **DevOps:** SFDX CLI, Git, VS Code