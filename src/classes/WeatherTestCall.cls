public class WeatherTestCall {
public static HttpResponse callout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=5d99ed8a9e8d97a14be96edab9d2a693');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug(response.getStatusCode());
           return response;  
        }
       
}