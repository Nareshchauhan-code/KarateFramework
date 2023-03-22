Feature: To test all the http method

  Background: set the base path
    Given url 'http://localhost:9897'

  Scenario: End to end scenario to test all the http methods
    # post request
    Given path '/normal/webapi/add'
    * def getRandomId = function(){return Math.floor((Math.random() * 100));}
    * def id = getRandomId()
    * print id
    And request {"jobId":'#(id)',"jobTitle":"Mech Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mech Iron"],"project":[{"projectName":"Mech App","technology":["Kotlin","SQL Lite","Mech"]}]}
    And headers {Accept:'application/json',Content-Type:'application/json'}
    When method post
    Then status 201
    And print response
    # put request
    Given path '/normal/webapi/update'
    And request {"jobId":'#(id)',"jobTitle":"ECE Engg","jobDescription":"To develop IT application","experience":["ECE","Apple","Telus"],"project":[{"projectName":"Telus App ECE","technology":["ECE","SQL Lite","Telus"]}]}
    And headers {Accept:'application/json',Content-Type:'application/json'}
    When method put
    Then status 200
    And print response
    # patch request
    * def jobTitle = 'Civil'
    * def jobDesc = 'To develop diagrams'
    Given path '/normal/webapi/update/details'
    And params {id:'#(id)',jobTitle:'#(jobTitle)',jobDescription:'#(jobDesc)'}
    And headers {Accept:'application/json',Content-Type:'application/json'}
    When method patch
    Then status 200
    And print response
    # get request
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # send the get request
    Then status 200 # status code response should be 200
    And print response
    # delete request
    # Delete the job id - first time
    Given path '/normal/webapi/remove/' + id
    And headers {Accept:'application/json',Content-Type:'application/json'}
    When method delete
    Then status 200
    And print response
    # Delete the job id - second time
    Given path '/normal/webapi/remove/' + id
    And headers {Accept:'application/json',Content-Type:'application/json'}
    When method delete
    Then status 404
    And print response
