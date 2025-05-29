## Exploring SQL Server Backup Types

### 1. Research Task
**Search for and summarize the following backup types:**

1. Full Backup 
2. Differential Backup 
3. Transaction Log Backup 
4. Copy-Only Backup 
5. File/Filegroup Backup

 ---------------

 **1.Full Backup:**

 When Applied:  as a basic backup; usually planned on a daily or weekly basis.

 In order to maintain consistency, the entire database is included, along with a portion of the transaction log.

 **Pros:**

 - straightforward restoration procedure.

 - full database snapshot.

 **Cons:**

 - big in dimensions.

 - time-consuming.

 - Real-World Scenario: To protect all customer transaction data, a banking system performs a complete backup every Sunday night.

 **2.Differential Backup:**

 Used Every day in between complete backups.

 Changes since the last complete backup are among its contents.

  **Pros:**

 - quicker and smaller than complete backups.

 - effective storage utilization.

 **Cons:**

 - needs the most recent complete backup in order to recover.

 - Real-World Scenario: Following the first weekly complete backup, an e-learning platform backs up student progress and course content updates every night.