//
//  Game.swift
//  Day2SwiiftUIData
//
//  Created by Abdulmalik Muhammad on 29/01/2021.
//

import Foundation

struct LeaderboardEntry {
  let score: Int
  let date: Int
}

struct Game {
  var target = Int.random(in: 1...100)
  var score = 0
  var round = 1
  var leaderboardEntries = [LeaderboardEntry]()
  func points(sliderValue: Int) -> Int {
    let difference = sliderValue > target ? sliderValue - target : target - sliderValue
    
    let bonus: Int
    
    if difference == 0 {
      bonus = 100
    } else if difference <= 2{
      bonus = 50
    } else {
      bonus = 0
    }
    
    return 100 - difference + bonus
  }
  
  mutating func startNewRound(points: Int){
    score += points
    round += 1
    target = Int.random(in: 1...100)
  }
  
  mutating func restartGame() {
    score = 0
    round = 1
    target = Int.random(in: 1...100)
  }
  
}
