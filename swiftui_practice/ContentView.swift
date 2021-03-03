//
//  ContentView.swift
//  swiftui_practice
//
//  Created by Jorge Saavedra on 3/3/21.
//

import SwiftUI

struct ContentView: View {
   @State var show: Bool = false
   var body: some View {
      ZStack {
         
         TitleView()
            .blur(radius: show ? 20: 0)
            .animation(.easeInOut(duration: 0.3))
         
         BackCardView()
            .background(show ? Color("card3") : Color("card4"))
            .cornerRadius(20)
            .shadow(radius: 20)
            .offset(x: 0, y: show ? -400 : -40)
            .scaleEffect(0.9)
            .rotationEffect(.degrees(show ? 0 : 10))
            .rotation3DEffect(
               Angle(degrees: 10),
               axis: (x: 10, y: 0, z: 0))
            .blendMode(.hardLight)
            .animation(.easeInOut(duration: 0.5))
         BackCardView()
            .background(show ? Color("card4") : Color("card3"))
            .cornerRadius(20)
            .shadow(radius: 20)
            .offset(x: 0, y: show ? -200 : -20)
            .scaleEffect(0.95)
            .rotationEffect(Angle(degrees: show ? 0 : 5))
            .rotation3DEffect(
               Angle(degrees: 5),
               axis: (x: 10, y: 0, z: 0))
            .blendMode(.hardLight)
            .animation(.easeInOut(duration: 0.3))
         CardView()
            .blendMode(.hardLight)
            .onTapGesture {
               self.show.toggle()
            }
         
         BottomCardView()
            .blur(radius: show ? 20: 0)
            .animation(.easeInOut(duration: 0.3))
      }
   }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      Group {
         ContentView()
      }
   }
}






