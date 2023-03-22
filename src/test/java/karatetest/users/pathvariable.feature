Feature: To get the all details

  Scenario: Get Request to fetch all the information
    Given url 'http://localhost:9897'
    And path '/normal/webapi/all'
    When method get
    Then status 200
    And print response