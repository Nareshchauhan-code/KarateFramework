Feature: To get the all details

  Background:
    Given url 'http://localhost:9897'
    And print 'This is Background keyword'


  Scenario: Get Request to fetch all the information in xml format
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response.[0].jobId == "#present"
    And match response.[0].experience[1] == "#notnull"
    And match response.[0].project[0].projectName == "#ignore"
    And match response.[0].project[0].technology == "#array"




