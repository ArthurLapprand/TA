package steps

import ta.Student
import ta.StudentController

/**
 * Created by joao on 19/05/16.
 */
class StudentConsultTestDataAndOperations {
    public static Student searchStudent(String login) {
        def controller = new StudentController()
        controller.params << [login:login]
        controller.searchStudent()
    }
}