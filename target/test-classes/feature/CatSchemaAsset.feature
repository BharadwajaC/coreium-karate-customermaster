Feature: Schema Assertion
  Scenario Outline: Verify Schema
    Given url '<url>'
    When method GET
    Then status 200
    And print response
    Then match each response.data ==
    """
    {
            "id": "#Map",
            "name": "#String",
            "age": "#String"
    }
    """
    Examples:
    |url|
    |http://localhost:9091/customer/v1/master/cats|