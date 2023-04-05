Feature: Customer List API
  Scenario: Retrieve the Customer List
    Given header Authorization
    Given header x-session-id
    Given url baseUrl
    When method get
    Then status 200
    And match $.data[1].name contains 'Billie'
    And match response.data[1].name == '#string'