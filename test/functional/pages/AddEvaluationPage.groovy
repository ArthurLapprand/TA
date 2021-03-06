package pages

import geb.Page
import ta.Criterion

/**
 * Created by TMB on 20/06/2016.
 */
class AddEvaluationPage extends Page {
    static url = "/TA/evaluation/create"

    static at = {
        title ==~ /Create Evaluation/
    }

    def selectAddEvaluation(){
        $("input", name: "create").click()
    }

    def chooseCriterion(String desc) {
        //$("select", id: "criterion").click()
        def la = (String) Criterion.findByDescription(desc).id
        $("select", id: "criterion").value(la)
    }

    def chooseValue(String value) {
        $("select", name: "value").click()
        $("select", name: "value").find("option").find{it.value().equals(value)}.click()
    }
}
