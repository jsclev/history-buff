import SwiftUI

struct AnswerButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct ContentView: View {
    @State var questionText: String
    @State var answer1: Answer
    @State var answer2: Answer
    @State var answer3: Answer
    @State var answer4: Answer
    let store: Store
    let question: Question
    
    let rows: CGFloat = 2
    let columns: CGFloat = 2
    let spacing: CGFloat = 100
    
    init() {
        store = Store()
        question = store.getNextQuestion()
        questionText = question.text
        answer1 = question.answer1
        answer2 = question.answer2
        answer3 = question.answer3
        answer4 = question.answer4
    }
    
    var horizontalEdges: CGFloat {
        return columns - 1
    }
    
    var verticalEdges: CGFloat {
        return rows - 1
    }
    
    func getItemWidth(containerWidth: CGFloat) -> CGFloat {
        return (containerWidth - spacing * horizontalEdges) / columns
    }
    
    func getItemHeight(containerHeight: CGFloat) -> CGFloat {
        return 130.0
        // return (containerHeight - spacing * verticalEdges) / rows
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text(questionText)
                .foregroundColor(Constants.darkBrown)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            GeometryReader { geometry in
                VStack(alignment: .center, spacing: 25.0) {
                    HStack(alignment: .center, spacing: 25.0) {
                        Button(action: {}) {
                            Text(answer1.text)
                                .foregroundColor(Color.white)
                                .font(.headline)
                                .frame(width: getItemWidth(containerWidth: geometry.size.width),
                                       height: getItemHeight(containerHeight: geometry.size.height))
                                .background(Constants.greenBlue)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {}) {
                            Text(answer2.text)
                                .foregroundColor(Color.white)
                                .font(.headline)
                                .frame(width: getItemWidth(containerWidth: geometry.size.width),
                                       height: getItemHeight(containerHeight: geometry.size.height))
                                .background(Constants.greenBlue)
                        }
                        .cornerRadius(15)
                    }
                    
                    HStack(alignment: .center, spacing: 25.0) {
                        Button(action: {}) {
                            Text(answer3.text)
                                .foregroundColor(Color.white)
                                .font(.headline)
                                .frame(width: getItemWidth(containerWidth: geometry.size.width),
                                       height: getItemHeight(containerHeight: geometry.size.height))
                                .background(Constants.greenBlue)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {}) {
                            Text(answer4.text)
                                .foregroundColor(Color.white)
                                .font(.headline)
                                .frame(width: getItemWidth(containerWidth: geometry.size.width),
                                       height: getItemHeight(containerHeight: geometry.size.height))
                                .background(Constants.greenBlue)
                        }
                        .cornerRadius(15)
                    }
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            Spacer()
            Button(action: {
                let question = store.getNextQuestion()
                questionText = question.text
                answer1 = question.answer1
                answer2 = question.answer2
                answer3 = question.answer3
                answer4 = question.answer4
            }) {
                Text("Next Question")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .padding()
            }
            .background(Constants.green)
            
            .cornerRadius(15)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Constants.lightBrown)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
