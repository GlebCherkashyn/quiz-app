//	
// Copyright © 2018 Essential Developer. All rights reserved.
//

import UIKit

// MARK: - Comments -
// Helper enum to register cells if you have a lot of them. More details in ResultViewController, in viewDidLoad
enum QuizAppCell {
    case rightAnswer, wrongAnswer
    
    var description: String {
        switch self {
        case .rightAnswer:
            return String(describing: CorrectAnswerCell.self)
        case .wrongAnswer:
            return String(describing: WrongAnswerCell.self) 
        }
    }
}
