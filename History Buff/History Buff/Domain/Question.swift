import Foundation

public class Question {
    public let text: String
    public let answer1: Answer
    public let answer2: Answer
    public let answer3: Answer
    public let answer4: Answer
    
    public init(text: String,
                answer1: Answer,
                answer2: Answer,
                answer3: Answer,
                answer4: Answer) {
        self.text = text
        self.answer1 = answer1
        self.answer2 = answer2
        self.answer3 = answer3
        self.answer4 = answer4
    }
}
