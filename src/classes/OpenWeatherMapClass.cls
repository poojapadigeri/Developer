public class OpenWeatherMapClass {
 public static void getcallout()
    {
        Http http=new Http();
        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=5d99ed8a9e8d97a14be96edab9d2a693');
        request.setMethod('GET');
         HttpResponse res=http.send(request);
        if(res.getStatusCode() == 200){
            System.debug(res.getBody());
       OpenWeatherMap o = (OpenWeatherMap) System.JSON.deserialize(res.getBody(), OpenWeatherMap.class);
          System.debug(o.sys.message);
            OpenWeatherMapObject__c w = new OpenWeatherMapObject__c();
        w.cname__c = o.name;
        w.humidity__c = o.main.humidity;
        w.lat__c = o.coord.lat;
        w.lon__c = o.coord.lon;
        w.temperature__c = o.main.temp;
        w.wind_degree__c = o.wind.deg;
        w.wind_speed__c = o.wind.speed;
        
    	List<OpenWeatherMapObject__c> cities=[select cname__c from OpenWeatherMapObject__c];
        Integer i=0;
        try{
        for(OpenWeatherMapObject__c ct : cities ){
            if(ct.cname__c == o.name){
                ct.cname__c = o.sys.country;
        ct.humidity__c = o.main.humidity;
        ct.lat__c = o.coord.lat;
        ct.lon__c = 70.7;
        ct.temperature__c = o.main.temp;
        ct.wind_degree__c = o.wind.deg;
        ct.wind_speed__c = o.wind.speed;
                update ct;
                i=1;
                break;
            }
           
        }
        if(i==0){
            insert w;
        }
       } catch(Exception e) {
    	System.debug('An unexpected error has occurred: ' + e.getMessage());
		}

    }

            
            
            
    }

         
        
       /* else
            System.debug('some error occured' + res.getStatus()+' '+res.getStatusCode());*/
      
    
  
}