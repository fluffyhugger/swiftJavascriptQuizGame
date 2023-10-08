//
//  ViewController.swift
//  JavascriptTest
//
//  Created by Sirapob on 7/10/2566 BE.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var faceEmoji: UIImageView!
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    var Allquiz = AllQuiz()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel!.text!
        let userRight = Allquiz.checkAnswer(userAnswer)
        
        if userRight{
            faceEmoji.image = #imageLiteral(resourceName: "Happy-Face-Emoji-PNG-Photos")
        }else{
            faceEmoji.image = #imageLiteral(resourceName: "36860-2-sad-emoji-transparent-image")
        }
        
        Allquiz.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil ,repeats: false)
        updateUI()
    }
    @objc func updateUI(){
        textLabel.text = Allquiz.getQuestionText()
        scoreLabel.text = "Score: \(Allquiz.getScore())"
        progressBar.progress = Allquiz.getProgress()
    }
}

