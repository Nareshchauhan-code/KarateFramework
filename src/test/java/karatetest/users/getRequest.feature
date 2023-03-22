Feature: To get the all details

  Background:
    Given url 'http://localhost:9897'
    And print 'This is Background keyword'

  Scenario: Get Request to fetch all the information
    Given path 'normal/webapi/all'
    When method get
    Then status 200
    And print response


  Scenario: Get Request to fetch all the information with path variable
    And path '/normal/webapi/all'
    When method get
    Then status 200
    And print response

  Scenario: Get Request to fetch all the information in Json format
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response

  Scenario: Get Request to fetch all the information in xml format
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200
    And print response