Feature: Customer List API
  Scenario: Retrieve the Customer List
    Given header Content-Type = 'application/json'
    And header Accept-Encoding = 'gzip,deflate'
    And header Connection = 'Keep-Alive'
    And header Expect = '100-continue'
    And header Authorization = 'eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbklkIjoiYnJlZXplQGFscGhhLmNvbSIsInVzZXJOYW1lIjoiVGhlbmRyYWwiLCJ1c2VySWQiOiI2NDFjNTU0ZjExYmFkYTJmNmMxYzFlYjciLCJpYXQiOjE2Nzk2Mzc4OTksImV4cCI6MTY3OTYzODAxOX0.shmuQqrIEJrhNMoT2lKYjkL82yuEGOD3Ejwuov181ojTtcA_EkDtoEhZQmw4axbtWU1ZDRwBKke28r5S4VCM_g'
    And header x-session-id = '641d3d8b83b771062495d4dd'
    Given url 'http://localhost:9091/customer/v1/master/get/list'
    When method GET
    Then status 200
