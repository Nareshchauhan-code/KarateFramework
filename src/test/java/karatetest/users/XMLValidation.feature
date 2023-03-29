Feature: To get the all details

  Background:
    Given url 'http://localhost:9897'
    And print 'This is Background keyword'


  Scenario: Get Request to fetch all the information in xml format
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200
    And print response
    And match response//jobId[1]/text()[1] == '1'




