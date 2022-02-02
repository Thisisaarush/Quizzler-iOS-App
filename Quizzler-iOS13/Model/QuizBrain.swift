import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "4 + 2 = 6", a: "True"),
        Question(q: "3 + 1 = 5", a: "False"),
        Question(q: "0 - 1 = 1", a: "False"),
        Question(q: "60 / 2 = 30", a: "True"),
        Question(q: "3 - 3 = 6", a: "False"),
        Question(q: "0 + 0 = 0", a: "True"),
        Question(q: "4 - 22 = -18", a: "True"),
        Question(q: "0 - 0 = -1", a: "False"),
        Question(q: "100 / 10 = 100", a: "False"),
    ]
    
    var questionNumber = 0;
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            return true;
        } else {
            return false;
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text;
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count);
        return progress;
    }
    
    mutating func nextQuestion() {
        if (questionNumber + 1 < quiz.count) {
            questionNumber += 1;
        } else {
            questionNumber = 0;
        }
    }
}
