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
    And match response.[0].jobId == 1
    And match response.[0].experience[1] == "Apple"
    And match response.[0].project[0].projectName == "Movie App"
    And match response.[0].project[0].technology[2] == "Gradle"
    # Validate the Size of Json Array
    And match response.[0].project[0].technology == "#[3]"
    #Valide with Wild card character
    And match response.[0].experience[*] == ["Google","Apple","Mobile Iron"]

    #Valide with Wild card character with contains keyword

    And match response.[0].experience[*] contains ["Apple","Mobile Iron"]



