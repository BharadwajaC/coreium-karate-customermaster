@ignore
Feature: the name is expected to be set as a call arg

  Scenario:
    Given url 'http://localhost:9091/customer/v1/master/cats'
  #  And path 'cats'
    And request { name: '#(name)' }
    When method post
    Then status 200