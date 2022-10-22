import Foundation

public class Store {
    private var questionIndex = -1
    
    private let questions = [
        Question(text: "What was the capital of the Persian Empire?",
                 answer1: Answer(text: "Persepolis", isCorrect: true),
                 answer2: Answer(text: "Babylon", isCorrect: false),
                 answer3: Answer(text: "Athens", isCorrect: false),
                 answer4: Answer(text: "The Persian Empire had no capital", isCorrect: false)),
        Question(text: "Who fought in the Battle of Thermopylae?",
                 answer1: Answer(text: "Persians and Greeks", isCorrect: true),
                 answer2: Answer(text: "Romans and Goths", isCorrect: false),
                 answer3: Answer(text: "Babylonians and Hittites", isCorrect: false),
                 answer4: Answer(text: "Romans and Carthaginians", isCorrect: false)),
        Question(text: "What was one of the earliest urban cities?",
                 answer1: Answer(text: "Babylon", isCorrect: true),
                 answer2: Answer(text: "New York City", isCorrect: false),
                 answer3: Answer(text: "Tokyo", isCorrect: false),
                 answer4: Answer(text: "Canada", isCorrect: false)),
        Question(text: "What year was Rome founded?",
                 answer1: Answer(text: "753 BCE", isCorrect: true),
                 answer2: Answer(text: "323 BCE", isCorrect: false),
                 answer3: Answer(text: "24 AD", isCorrect: false),
                 answer4: Answer(text: "1066 AD", isCorrect: false)),
        Question(text: "Who were helots in ancient Greece?",
                 answer1: Answer(text: "Slaves", isCorrect: true),
                 answer2: Answer(text: "Infantry", isCorrect: false),
                 answer3: Answer(text: "Cavalry", isCorrect: false),
                 answer4: Answer(text: "Government officials", isCorrect: false))
    ]
    
    public init() {
        
    }
    
    public func getNextQuestion() -> Question {
        questionIndex += 1
        
        return questions[questionIndex]
    }
}
