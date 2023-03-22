Feature: To get the all details

  Background:
    Given url 'http://localhost:9897'
    And print 'This is Background keyword'

  Scenario: Get Request to fetch all the information in Json format and match
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response contains deep {"jobDescription": "To develop andriod application" }
    And match header Content-Type == 'application/json'

