//	
// Copyright © 2018 Essential Developer. All rights reserved.
//

import UIKit

class AnswerBaseCell: UITableViewCell {
    
    // MARK: - Properties -
    @IBOutlet private weak var questionLabel: UILabel!
    @IBOutlet private weak var correctAnswerLabel: UILabel!
    
    // MARK: - Public functions -
    func configure(with answer: PresentableAnswer) {
        questionLabel.text = answer.question
        correctAnswerLabel.text = answer.answer
    }
    
    // MARK: - Comments -
    // Helpers to pass your UI tests
    // I prefer to keep outlets private
    func questionLabelText() -> String? {
        return questionLabel.text
    }
    
    func correctAnswerLabelText() -> String? {
        return correctAnswerLabel.text
    }
}
