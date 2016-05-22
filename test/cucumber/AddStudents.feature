Feature: Add Student
  As a professor
  I want to register students in the system
  So

#Cenário Controler
  Scenario: Register a new students
    Given the student "Roberto Alves" with login "ra" is not register in the system
    When I register "Roberto Alves" with login "ra"
    Then the student "Roberto Alves" with login "ra" is registered in the system

#Cenário GUI
  Scenario: Message from the new student registration
    Given I am in the add student page
    When I add the "Roberto Alves" with login "ra"
    Then I can see the name of "Roberto Alves" and the login "ra" in the list of students

#Cenário Controler
  Scenario: Register a student twice
    Given the student "Roberto Alves" with login "ra" is register in the system
    When I register "Roberto Alves" with login "ra"
    Then the system does not register "Roberto Alves" with login "ra"

#Cenário GUI
  Scenario: Error message when registering a student twice
    Given  I am in the add student page
    When I add the "Roberto Alves" with login "ra"
    Then I can't see the name of "Roberto Alves" and the login "ra" in the list of students