//
//  Shapes.swift
//  Day4SwiftUIViewsandViewModifiers
//
//  Created by Abdulmalik Muhammad on 31/01/2021.
//

import SwiftUI

struct Shapes: View {
  
  @State var wideShape = true
  
  var body: some View {
    
    VStack {
      
      if !wideShape {
        Circle()
          // .fill(Color.blue)
          //        .inset(by: 10)
          //        .stroke(Color.blue, lineWidth: 20)
          .strokeBorder(Color.blue, lineWidth: 20.0)
          .frame(width: wideShape ? 200 : 100, height: 100)
      }
      
      RoundedRectangle(cornerRadius: 20.0)
        .fill(Color.blue)
        .frame(width: wideShape ? 200 : 100, height:100)
     
      Capsule()
        .fill(Color.blue)
        .frame(width: wideShape ? 200 : 100, height:100)
      Ellipse()
        .fill(Color.blue)
        .frame(width: wideShape ? 200 : 100, height:100)
      
      
      Button(action: {
        withAnimation {
          wideShape.toggle()
        }
      }){
        Text("Animate!")
      }
      
    }
    .background(Color.green)
    
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
