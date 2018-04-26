global class AccountBatch2Scheduler implements Schedulable 
{   global void execute(SchedulableContext ctx) 
   {
        
	String query='select id,Name,Company,Phone,Email from account';
	AccountBatch1 ab=new AccountBatch1(query);
	
	database.executebatch(ab);
   }   
}