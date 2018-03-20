public class RestApiResponse {
    public static httpresponse getcallout()
    {
        Http http=new Http();
        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://developer.api.yodlee.com/ysl/restserver/v1/cobrand/login');
        request.setMethod('POST');
        
        request.setHeader('content-type','application/json;charset=UTF-8');
        request.setBody('{"cobrand":{"cobrandLogin": "sbCobvikas21@cli.com","cobrandPassword": "91ac01c4-cd28-4c83-951b-1cdfff5d7f23","locale": "en_US"}}');
        HttpResponse res=http.send(request);
        if(res.getStatusCode() != 201)
        
            	System.debug('The status code returned was not expected: ' + res.getStatusCode() + ' ' + res.getStatus());
        if (res.getStatusCode() == 200) 
        {
            	Map<String,Object> results = (Map<String, Object>)JSON.deserializeUntyped(res.getBody());
                APIParse r = (APIParse) System.JSON.deserialize(res.getBody(), APIParse.class);
                System.debug(r.session.cobSession);
            System.debug(res.getBody());
            	//List<Object> cobrands = (List<Object>) results.get('session');
            	//System.debug(results);
                //System.debug(cobrands);
           }
        return res;
        
        
    }
}