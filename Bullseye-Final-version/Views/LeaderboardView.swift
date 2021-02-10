//
//  Leaderboard.swift
//  Bullseye-Final-version
//
//  Created by Abdulmalik Muhammad on 08/02/2021.
//

import SwiftUI

struct LeaderboardView: View {
  var body: some View {
    VStack(spacing: 10) {
      HeaderView()
      LabelView()
      RowView(index: 1, score: 200, date: Date())
    }
  }
}

struct RowView: View {
  let index: Int
  let score: Int
  let date: Date
  
  var body: some View {
    HStack {
      RoundedTextView(text: "\(index)")
      Spacer()
      ScoreText(score: score)
        .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
      Spacer()
      DateText(date: date)
        .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
    }.background(
      RoundedRectangle(cornerRadius: .infinity)
        .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
    )
    .padding(.leading)
    .padding(.trailing)
    .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
  }
}

struct HeaderView: View {
  var body: some View {
    ZStack {
      BigBoldText(text: "leaderboard")
      HStack {
        Spacer()
        Button(action: {}) {
          RoundedImageViewFilled(systemName: "xmark")
            .padding(.trailing)
        }
      }
    }
  }
}

struct LabelView: View {
  var body: some View {
    HStack {
      Spacer()
        .frame(width: Constants.General.roundedViewLength)
      Spacer()
      LabelText(text: "Score")
        .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
      Spacer()
      LabelText(text: "Date")
        .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
    }
    .padding(.leading)
    .padding(.trailing)
    .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
  }
}

struct LeaderboardView_Previews: PreviewProvider {
  static var previews: some View {
    LeaderboardView()
    LeaderboardView()
      .previewLayout(.fixed(width: 568, height: 320))
    LeaderboardView()
      .preferredColorScheme(.dark)
    LeaderboardView()
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
