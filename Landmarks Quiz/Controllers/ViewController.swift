//
//  ViewController.swift
//  Landmarks Quiz
//
//  Created by Muhamed Alkhatib on 18/08/2020.
//

import UIKit

class ViewController: UIViewController{
    //MARK: - Variables
    
    
    var quiz = Quiz()
    
    
     //MARK: - IBOtlets
    @IBOutlet weak var scoreRecourdingLbl: UILabel!
    @IBOutlet weak var landMarkImage: UIImageView!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    @IBOutlet weak var answerResultImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadQuestion()

     
    }


    
    func loadQuestion(){
        let cQustion = quiz.currantQuestion
        let choices = quiz.choice[cQustion].shuffled()
        let cImage = quiz.image[cQustion]
        let score = quiz.score
        landMarkImage.image = UIImage(named: cImage)
        answer1.setTitle(choices[0], for: UIControl.State.normal)
        answer2.setTitle(choices[1], for: UIControl.State.normal)
        answer3.setTitle(choices[2], for: UIControl.State.normal)
        answer4.setTitle(choices[3], for: UIControl.State.normal)
        
        
        if quiz.currantQuestion == quiz.image.count - 1{
            scoreRecourdingLbl.text = quiz.gameIsOver + " With Score : \(score)"
        }else{
            scoreRecourdingLbl.text = "Your Score is \(score)"
        }
    }
    
    @IBAction func answerChoice(_ sender: Any) {
         
        if quiz.checkAnswer(answer:(sender as AnyObject).currentTitle!) {
             
            answerResultImage.image = UIImage(named: "true")
             
        }else{
            
            answerResultImage.image = UIImage(named: "false")
             
        }
        
        quiz.nextQuestions()
        loadQuestion()
        
        
    }
    
    
    @IBAction func tryAgain(_ sender: Any) {
        
        
        quiz.tryAgain()
        loadQuestion()
        quiz.nextQuestions()
        
    }
    
    
    
}

