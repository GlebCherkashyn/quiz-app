//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    private(set) var summary = ""
    private(set) var answers = [PresentableAnswer]()

    convenience init(summary: String, answers: [PresentableAnswer]) {
        self.init()
        self.summary = summary
        self.answers = answers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerLabel.text = summary
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register([.rightAnswer, .wrongAnswer])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return answers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let answer = answers[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: answer.type.cellID) as! AnswerBaseCell
        cell.configure(with: answer)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return answers[indexPath.row].type.defaultRowHeight
    }
}
