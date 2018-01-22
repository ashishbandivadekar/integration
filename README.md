# integration

These projects are GET and POST API developed using WSO2 ESB  for a HealthCare Rest Service.
The API return list of Doctors through GET API and can add a Doctor through a Post API .

Project Details
1) HealthService -WSO2 ESB Project for HealthService GET API
2) HealthServiceCompositeAppliation- WSO2 Composite Appliation for deploying the HealthService GET API
3) HealthServicePost -WSO2 ESB Project for HealthService POST API
4) HealthServicePostCompositeAppliation- WSO2 Composite Appliation for deploying the HealthService POST API


To test these Project on SOAPUI:

1)Please download project SOAPUIARTEFACTS
2)Please copy all the files  under SOAPUIARTEFACTS to C:\WSO2\workspace\SOAPUIARTEFACTS on your local server.
3) Import HealthService-soapui-project.xml and WSO2ESBClient-soapui-project.xml on SOAPUI
4) Run the mockRest service on HealthService-soapui-project.xml
5) Test the Requests under WSO2ESBClient-soapui-project.xml

There are validations and responses generated by the groovy script and XSL in SOAPUI.






