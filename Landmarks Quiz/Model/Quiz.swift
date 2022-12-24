//
//  Quiz.swift
//  Landmarks Quiz
//
//  Created by Ahmed on 24/12/2022.
//

import Foundation
import UIKit



struct Quiz {
    
   var image = ["China 1","Egypt 1","Egypt 2","France 1","India 1","India 2","Indonesia 1", "Japan 1","Jordan 1","Saudi 1","UAE 1","UAE 2","UAE 3","UK 1","USA 1","USA 2"]
    
    var choice = [["China", "Italy", "Egypt", "UAE"],
                  ["Egypt", "UAE", "UK", "USA"],
                  ["Egypt", "Italy","France" , "UAE"],
                  ["France", "Jordan", "Morocco", "Oman" ],
                  ["India", "UAE", "UK", "USA"],
                  ["India", "Italy", "Egypt", "UAE"],
                  ["Indonesia", "UAE", "Morocco", "Oman" ],
                  ["Japan", "Italy", "Egypt", "UAE"],
                  ["Jordan", "Italy", "Morocco", "Oman" ],
                  ["Saudi", "Italy", "Egypt", "UAE"],
                  ["UAE", "Saudi", "UK", "Egypt"],
                  ["UAE", "Saudi", "UK", "Egypt"],
                  ["UAE", "Saudi", "UK", "Egypt"],
                  ["UK", "Saudi", "Morocco", "Egypt"],
                  ["USA", "Jordan", "Morocco", "Oman" ],
                  ["USA", "Italy", "Egypt", "UAE"]]

    var currantQuestion = 0
    var score = 0
    var gameIsOver = "Game is over"
    var gameIsActive = true
    mutating func checkAnswer (answer: String)->Bool{
        if gameIsActive{
            if answer == choice[currantQuestion][0]{
                score+=1
                return true
            }else{
                print("false")
                return false
            }
        }else{
            return false
        }
        
        
    }
    
    
    mutating func nextQuestions (){
       
        if currantQuestion<image.count-1{
            currantQuestion += 1
        }else{
            gameIsActive = false
            print("game is over")
        }
    }
    
    
    mutating func tryAgain(){
        
        score = 0
        gameIsActive = true
        currantQuestion = 0
    }
    
    
}
