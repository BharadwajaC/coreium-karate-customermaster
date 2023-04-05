function fn() {
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }

  var config = {
     env: env,
     myVarName: 'Query Return',
     baseUrl: 'http://localhost:9091/customer/v1/master/cats',
     Authorization: 'eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbklkIjoiYnJlZXplQGFscGhhLmNvbSIsInVzZXJOYW1lIjoiVGhlbmRyYWwiLCJ1c2VySWQiOiI2NDFjNTU0ZjExYmFkYTJmNmMxYzFlYjciLCJpYXQiOjE2Nzk2NDYyMDEsImV4cCI6MTY3OTY0NjMyMX0.dccS7rFhzOIZ8whKVJjftcFs1BwfAKUddAdJXHkVLvHrR_cBCNkh_RZbKSICR1Dqi30ED5xUoRlhmM1O76MkoQ',
     x-session-id: '641d5df983b771062495d4de'
  }
  if(env == 'dev') {
        config.baseUrl = 'http://localhost:9091/customer/v1/master/cats'
  }
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
return config;

}