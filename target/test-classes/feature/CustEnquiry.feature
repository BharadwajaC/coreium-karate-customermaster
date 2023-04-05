Feature: Customer Enquiry through CustomerId
  Scenario: fetch Customer using customerId
    Given url 'http://localhost:9091/customer/v1/master/get/list'
    When method GET
    Then status 200
    Then print output