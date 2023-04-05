Feature:  Customer Save API
  Background:
    * url 'http://localhost:9091'
    * def requestPayload = read ('classpath:user.json')
  #Scenario: Save New Customer Master
  #  Given path '/customer/v1/onboard/save'
   # And request requestPayload
    #And header Content-Type = 'application/json'
    #When method POST
    #Then status 200


  @ignore
  Feature:

  Scenario:
    Given 'http://localhost:9091'
    And path '/customer/v1/onboard/save'
    And request { name: '#(name)', age: '#(age)' }
    When method post
    Then status 200

