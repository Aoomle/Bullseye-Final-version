//
//  BackgroundLeaderBoard.swift
//  Bullseye-Final-version
//
//  Created by Abdulmalik Muhammad on 09/02/2021.
//

import SwiftUI

struct BackgroundLeaderBoard: View {
  var body: some View {
    VStack {
      LeaderboardTop()
    }
  }
}

struct LeaderboardTop: View {
  var body: some View {
    HStack {
      LeaderboardText(text: "leaderboard")
      Spacer()
      RoundedImageViewFilled(systemName: "xmark")
    }.padding()
    Spacer()
  }
}

struct BackgroundLeaderBoard_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundLeaderBoard()
      .preferredColorScheme(.dark)
  }
}


