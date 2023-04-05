Feature: create kittens

  Background:
    * url 'http://localhost:9091/customer/v1/master/'

  Scenario Outline: create kittens

# create bob cat
    Given path 'cats/save'
    And request { name: '<name>'}
    When method post
    Then status 200
    Examples:
      | name |
      | Bubbly
      | Wild |