//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import UIKit

enum AnswerType {
    case rightAnswer
    case wrongAnswer(_ wrongAnswer: String)
}

extension AnswerType: CellDataProtocol {
   
    // MARK: - Comments -
    // Of course I understand that switch always 'smells', but for me it is better to make it here that in class that handles table view data source methods
    var cellID: String {
        switch self {
        case .rightAnswer:
            return QuizAppCell.rightAnswer.description
        default:
            return QuizAppCell.wrongAnswer.description
        }
    }
    
    // MARK: - Comments -
    // Also I like have all hard code in one place, in files like this of UIConstants
    var defaultRowHeight: CGFloat {
        switch self {
        case .rightAnswer:
            return 70
        case .wrongAnswer:
            return 90
        }
    }
}

struct PresentableAnswer {
    let question: String
    let answer: String
    
    // MARK: - Comments -
    // Your condition to check answer type was optional value of 'wrongAnswer', but it will always be unused for CorrectAnswerCell, thats why I think enum gives more context and is more expandable. In case if you need to add some other data to cell or some information about it's behaviour (example: some cells should block selection, some labels should have another font of color etc.)

    let type: AnswerType
}
