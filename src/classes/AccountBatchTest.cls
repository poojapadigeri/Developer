@isTest
public class AccountBatchTest 
{
    public static void AccountTest()
    {
 		List <account> a = new List<account>();
		for(integer i = 0; i<200; i++)
        {
			Account l = new account(Name='Anil'+i);
			a.add(l);
		}
			insert a;

		test.startTest();
        String query='select id,Name,Company,Phone,Email from Account';
		AccountBatch1 dl = new AccountBatch1(query);
		
		ID batchprocessid = Database.executeBatch(dl);
		test.stoptest();
		System.AssertEquals(database.countquery('SELECT COUNT()'+' FROM Account '),200);
 	}
}