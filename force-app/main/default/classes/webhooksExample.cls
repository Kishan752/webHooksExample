/**
 * @description       : 
 * @author            : Kishan Kumar
 * @group             : 
 * @last modified on  : 09-22-2021
 * @last modified by  : Kishan Kumar
**/
@RestResource(urlMapping='/api/Webhooks/pushDetailsdemo/*')
global with sharing class webhooksExample {
    
    @HttpPost
    global static void handleNotification() {

        try{
            RestRequest request = RestContext.request;
            RestResponse response=RestContext.response;
            Blob bB = request.requestBody; 
            System.debug(bB.toString());
        }
        catch(Exception e){
            System.debug('Exception Happened:'+e.getMessage());     
          }
        }

}
