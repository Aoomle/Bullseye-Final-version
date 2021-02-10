//
//  Leaderboard.swift
//  Bullseye-Final-version
//
//  Created by Abdulmalik Muhammad on 08/02/2021.
//

import SwiftUI

struct LeaderboardView: View {
  var body: some View {
    RowView(index: 1, score: 200, date: Date())
  }
}

struct RowView: View {
  let index: Int
  let score: Int
  let date: Date
  
  var body: some View {
    HStack {
      RoundedTextView(text: "\(index)")
      ScoreText(text: "\(score)")
        .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
      DateText(date: date)
        .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
        .padding()
    }.background(
      RoundedRectangle(cornerRadius: .infinity)
        .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
    ).padding([.leading, .trailing])
    .frame(width: Constants.Leaderboard.leaderboardMaxRowWidth)
  }
}


struct Leaderboard_Previews: PreviewProvider {
  static var previews: some View {
    LeaderboardView()
  }
}
