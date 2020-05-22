//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Leonardo Quintero  on 5/21/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        
        Question(q: "What is the name of the final course of all 'Mario Kart' video games?", a: ["Dry Dry Desert", "Mario Circuit", "Rainbow Road"], correctAnswer: "Rainbow Road"),
        Question(q: "Mario originated as a character in which video game?", a: ["Donkey Kong", "Mario Bros", "Mario 64"], correctAnswer: "Donkey Kong"),
        Question(q: "Nintendo began as a company that sold which products?", a: ["Cars", "Consoles", "Playing cards"], correctAnswer: "Playing cards"),
        Question(q: "What is Pearl's signature colour in 'Splatoon 2'?", a: ["Red", "Blue", "Pink"], correctAnswer: "Pink"),
        Question(q: "'Astro Boy' is which type of video game?", a: ["Racing", "Action", "Adventure"], correctAnswer: "Action"),
        Question(q: "Which was the first Nintendo console for optical discs?", a: ["Gamecube", "NES", "Switch"], correctAnswer: "Gamecube"),
        Question(q: "In 'Call of Duty: Advanced Warfare,' what's the name of Jack Mitchell's best friend?", a: ["Matt Daymon", "Scott Willis", "Will Irons"], correctAnswer: "Will Irons"),
        Question(q: "Who is the first character you play in 'Injustice 2?'", a: ["Flash", "Batman", "Superman"], correctAnswer: "Batman"),
        Question(q: "What was the best selling video game in December 2017?", a: ["New Super Mario Bros", "Call of Duty: WWII", "Rock Band"], correctAnswer: "Call of Duty: WWII"),
        Question(q: "What was the first video game in the world called?", a: ["Donkey Kong", "Pong", "Ball"], correctAnswer: "Pong"),
        Question(q: "What is the highest grossing game of all time?", a: ["Mario", "Pokemon", "Zelda"], correctAnswer: "Pokemon"),
        Question(q: "Which French video game company is publishing the 'Far Cry' series?", a: ["Ubisoft", "Microsoft", "Sega"], correctAnswer: "Ubisoft"),
        Question(q: "'Kingdom Of Hyrule’ is the main setting for which classic video game franchise?", a: ["Zelda", "Halo", "PacMan"], correctAnswer: "Zelda"),
        Question(q: "Who is the most famous video game character of all time?", a: ["Link", "Samus", "Mario"], correctAnswer: "Mario"),
        Question(q: "What's the best selling video game console of all time?", a: ["NES", "Xbox 360", "PlayStation 2"], correctAnswer: "PlayStation 2")
        
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

