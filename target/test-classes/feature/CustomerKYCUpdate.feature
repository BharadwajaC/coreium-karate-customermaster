Feature: Customer KYC Update
  Background:
    * url 'http://localhost:9091'
    * def requestPayload =
    """
 {
"id":"6411d74e869b74375798feb7",
"customerId":"340daa49-236a-45d3-aca1-afa6770a355a",
"documentType":"DL",
"documentNumber":"DN101107",
"documentIssueDate":"2022-11-14",
"documentExpiryDate":"2025-12-24",
"documentFrontImageId":"2145678910",
"documentBackImageId":"214687891125",
"lastReviewDate":"2021-12-24 12:30:40",
"nextReviewDate":"2024-02-24 15:30:10",
"customerProfilePhotoId":"1194",
"documentIssueCountry":"India",
"customerSignatureId":"1104"
}
    """
  Scenario: POST API Cust KYC Update
    Given path '/customer/v1/onboard/update/kyc'
    And request requestPayload
    When method POST
    Then status 200
    And match $.data.customerId == '#present'
    And match $.data.customerId == '340daa49-236a-45d3-aca1-afa6770a355a'


