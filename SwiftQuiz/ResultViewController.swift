//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Eduardo on 01/02/18.
//  Copyright © 2018 eduardo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAnswerd: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalAnswer: Int = 0
    var totalCorrectAnswer: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswerd.text = "Peguntas respondidas: \(totalAnswer)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswer)"
        lbWrong.text = "Perguntas incorretas: \(totalAnswer - totalCorrectAnswer)"
        var score = 0
        if  totalAnswer != 0 {
            score = (totalCorrectAnswer * 100 / totalAnswer)
            lbScore.text = "\(score)%"
        } else {
            lbScore.text = "0.00%"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
