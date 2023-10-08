//
//  Allquiz.swift
//  JavascriptTest
//
//  Created by Sirapob on 8/10/2566 BE.
//

import Foundation

struct AllQuiz{
    let questionsAndAnswers = [
        // Question 1
        Question(
            q:"JavaScript is a server-side programming language.", a:"False"),

        // Question 2
        Question(
            q:"JavaScript is primarily used for adding interactivity to websites.", a:"True"),

        // Question 3
        Question(
            q:"A variable declared with the const keyword cannot be reassigned.", a:"True"),

        // Question 4
             Question(
                q:"JavaScript is a case-sensitive language, meaning myVariable and myvariable are considered different variables.", a:"True"),

        // Question 5
        Question(
            q:"The if statement in JavaScript is used for looping through arrays.", a:"False"),

        // Question 6
             Question(
                q:"JavaScript is an object-oriented programming language.", a:"True"),

        // Question 7
        Question(
            q:"The === operator in JavaScript checks both value and data type for equality.", a:"True"),

        // Question 8
        Question(
            q:"JavaScript has built-in support for asynchronous programming through features like Promises and Async/Await.", a:"True"),

        // Question 9
        Question(
            q:"JavaScript can be used for creating mobile apps for Android and iOS.", a:"True"),

        // Question 10
        Question(
            q:"JavaScript is a dynamically typed language, meaning variable types are determined at runtime.", a:"False")
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ a : String) -> Bool{
        if a == questionsAndAnswers[questionNumber].a{
            self.score += 1
            return true
        }else{
            return false
        }
    }
    func getQuestionText() -> String{
        return questionsAndAnswers[questionNumber].q
    }
    func getProgress() -> Float{
        return Float(questionNumber) / Float(questionsAndAnswers.count)
    }

    
    mutating func nextQuestion(){
        if questionNumber + 1 < questionsAndAnswers.count{
            self.questionNumber += 1
        }else{
            self.questionNumber = 0
            self.score = 0
        }
    }
    mutating func getScore() -> Int{
        return score
    }
}
