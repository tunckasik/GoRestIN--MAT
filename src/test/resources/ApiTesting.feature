Feature: Api Testing fir CRUD operators

  Background:
    Given user given api url "htpps://gorest.co.in"

  Scenario Outline: POST - Create a new user
    Given set api endpoint "public/v1/users"
    And User creates new user with request body "<Name>","<Gender>","<Email>","<Status>"
    Then validate the status code 201
    And validate the userId is not null
    And validate the user Name is "<Name>"
    And validate the user Gender is "<Gender>"
    And validate the user Email is "<Email>"
    And validate the user Status is "<Status>"
       
    
    Examples:
      | Name    | Gender | Email                 | Status |
      | Charles | male   | charles001@email.com | active |
