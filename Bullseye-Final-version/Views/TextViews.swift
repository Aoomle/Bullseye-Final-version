//
//  TextView.swift
//  Day4SwiftUIViewsandViewModifiers
//
//  Created by Abdulmalik Muhammad on 31/01/2021.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .kerning(2)
      .bold()
      .font(.footnote)
      .lineSpacing(4)
      .multilineTextAlignment(.center)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigNumber: View {
  var text: String
  
  var body: some View {
    Text(text)
      .kerning(-1.0)
      .fontWeight(.black)
      .font(.largeTitle)
      .lineSpacing(42.0)
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
      .frame(width: 35.0)
  }
}

struct LabelText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .bold()
      .foregroundColor(Color("TextColor"))
      .kerning(1.5)
      .font(.caption)
  }
}

struct BodyText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .lineSpacing(12.0)
  }
}

struct ButtonText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .font(.body)
      .foregroundColor(.white)
      .padding()
      .frame(maxWidth: .infinity)
      .background(
        Color.accentColor
      )
      .cornerRadius(12)
  }
}

struct ScoreText: View {
  var score: Int

  var body: some View {
    Text(String(score))
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
      .font(.title3)
  }
}

struct DateText: View {
  var date: Date

  var body: some View {
    Text(date, style: .time)
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
      .font(.title3)
  }
}

struct BigBoldText: View {
  let text: String

  var body: some View {
    Text(text.uppercased())
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
      .font(.title)
      .fontWeight(.black)
  }
}


struct TextView_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Instructions")
      BigNumber(text: "999")
      SliderLabelText(text: "99")
      LabelText(text: "80")
      BodyText(text: "You scored 200 points\n🎉🎉🎉")
      ButtonText(text: "Start New Round")
      BigBoldText(text: "Leaderboard")
      ScoreText(score: 1123)
      DateText(date: Date())
    }
    .padding()
  }
}
