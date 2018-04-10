global class ApplicationValidity {

  webservice static string Prequalify(String appId) {
  
      genesis__rule__c rule = [select id,name from genesis__rule__c where name='LoanAmount'];
    
       genesis__Applications__c  app=[SELECT genesis__Account__c,id,genesis__Loan_Amount__c from genesis__Applications__c where id=:appId];
    //app.genesis__Loan_Amount__c=1000;
      //app.genesis__Term__c=12;
      //update app;
      List<genesis__Checklist__c> ER1=genesis.RulesAPI.evaluateRules(app);
    
            String a=null;
      
      for(genesis__Checklist__c c:ER1)
      {
         if(c.genesis__Message__c.equals('Application is valid'))
             //if(c.genesis__Result__c.equals('TRUE'))
            { 	app.genesis__Status__c='APPROVED-APPROVED';
          		update app;
             	a='valid';
            }
         
          else if(c.genesis__Message__c.equals('Application is declined')){
                app.genesis__Status__c='REJECTED';
           		update app;
            	a='Invalid';
     			 }
      }
         return a;
    }
}