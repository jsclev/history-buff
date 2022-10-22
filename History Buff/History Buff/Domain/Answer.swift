import Foundation

public class Answer {
    public let text: String
    public let isCorrect: Bool
    
    public init(text: String, isCorrect: Bool) {
        self.text = text
        self.isCorrect = isCorrect
    }
}
