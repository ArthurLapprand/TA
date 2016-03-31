Feature: Cadastrar aluno
  As a professor
  I want to register students in the system
  So

#Cenário Controler
  Scenario: Register a new students
    Given the student "Roberto Alves" with login "ra" is not register in the system
    When I register "Roberto Alves" with login "ra"
    Then the student "Roberto Alves" with login "rc" is registered in the system

#Cenário GUI
  Scenario: Message from the new student registration
    Given I am in the add student page
    And the student "Roberto Alves" with login "ra" is not register in the system
    When I add the "Roberto Alves" with login "ra"
    And I finalize the registration of the student
    Then a mensager with the name of "Roberto Alves" and the login "ra" warns me that this student was registered

#Cenário Controler
  Scenario: Register a student twice
    Given the student "Roberto Alves" with login "ra" is register in the system
    When I register "Roberto Alves" with login "ra"
    Then the system do nothing

#Cenário GUI
  Scenario: Error message when registering a student twice
    Given  I am in the add student page
    And the student "Roberto Alves" with login "ra" is register in the system
    When I add the "Roberto Alves" with login "ra"
    And I finalize the registration of the student
    Then a error mensager with the name of "Roberto Alves" and the login "ra" warns me that this student was not registered