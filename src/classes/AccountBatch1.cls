global class AccountBatch1 implements Database.Batchable<sobject>
{
   global final String Query;
 
   global AccountBatch1(String q)
   {
             Query=q;
   } 
   global Database.QueryLocator start(Database.BatchableContext BC)
   {
      return Database.getQueryLocator(query);
   }
   global void execute(Database.BatchableContext BC, 
                       List<sObject> scope)
   {
         List<Account> updateAccts = new List<Account>();
      for(Sobject s : scope)
      {
          Account a = (Account) s;
          a.Name = a.Name + 'Batch 1.';
      }      
      update updateAccts;
   }
   //The batch process has completed successfully. Schedule next batch.    
   global void finish(Database.BatchableContext BC)
   {
        System.debug(LoggingLevel.WARN,'Batch Process 1 Finished');
        string cron='0 0,30 * * * *';
        system.debug(cron);
        AccountBatch2Scheduler acctBatch2Sched = new AccountBatch2Scheduler();
        System.schedule('acctBatch2Job',cron,acctBatch2Sched);
   }
}