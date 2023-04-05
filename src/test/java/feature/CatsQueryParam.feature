Feature: Cat fetch through Id
  Scenario: fetch Customer using customerId
    Given url baseUrl
    And path '/fetch'
    * def queryParam = {name : 'Bob'}
    And params queryParam
    When method GET
    Then status 200
    Then print response