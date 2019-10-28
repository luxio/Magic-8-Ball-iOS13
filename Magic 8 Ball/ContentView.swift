//
//  ContentView.swift
//  Swift UI
//
//  Created by Stéphane Lux on 28.10.2019.
//  Copyright © 2019 LUXio IT-Solutions. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State var ballImage = "empty"
  
  var ballImages = [
    "ball1",
    "ball2",
    "ball3",
    "ball4",
    "ball5"
  ]
  
  var body: some View {
    ZStack {
      Color(
        "background")
        .edgesIgnoringSafeArea(.all)
      VStack {
        Text("Ask me anything...")
          .foregroundColor(.white)
          .font(.largeTitle)
          .padding()
        BallView(ballImage: ballImage)
        Button(action: {
          self.ballImage = self.ballImages.randomElement()!
        }) {
          Text("Ask")
            .padding(.all)
            .foregroundColor(Color("background"))
            .font(.title)
            .background(Color(.white))
            .padding()
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct BallView: View {
  
  let ballImage:String
  
  var body: some View {
    Image(ballImage)
      .resizable()
      .aspectRatio(contentMode: .fit)
      .frame(width: 200, height: 200, alignment: .center)
      .padding()
  }
}
