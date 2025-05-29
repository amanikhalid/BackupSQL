## Exploring SQL Server Backup Types

### 1. Research Task
**Search for and summarize the following backup types:**

1. Full Backup 
2. Differential Backup 
3. Transaction Log Backup 
4. Copy-Only Backup 
5. File/Filegroup Backup

 ---------------

 **1.Full Backup**

 When Applied:  as a basic backup; usually planned on a daily or weekly basis.

 In order to maintain consistency, the entire database is included, along with a portion of the transaction log.

 **Pros:**

 - straightforward restoration procedure.

 - full database snapshot.

 **Cons:**

 - big in dimensions.

 - time-consuming.

 - Real-World Scenario: To protect all customer transaction data, a banking system performs a complete backup every Sunday night.

