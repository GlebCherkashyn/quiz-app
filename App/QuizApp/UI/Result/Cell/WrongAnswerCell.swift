//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import UIKit

class WrongAnswerCell: AnswerBaseCell {
    
    // MARK: - Outlets -
    @IBOutlet private weak var wrongAnswerLabel: UILabel!
    
    // MARK: - Overrided functions -
    override func configure(with answer: PresentableAnswer) {
        super.configure(with: answer)
        
        switch answer.type {
        case .wrongAnswer(let wrongAnswer):
            wrongAnswerLabel.text = wrongAnswer
        default:
            break
        }
    }
    
    // MARK: - Public functions -
    
    // MARK: - Comments -
    // Helper to pass your UI tests
    // I prefer to keep outlets private
    func wrongLabelAnswerText() -> String? {
        return wrongAnswerLabel.text
    }
}
