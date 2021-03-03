//
//  ContentView.swift
//  swiftui_practice
//
//  Created by Jorge Saavedra on 3/3/21.
//

import SwiftUI

struct ContentView: View {
   @State var viewState: CGSize = CGSize.zero
   @State var showCard: Bool = false
   var body: some View {
      ZStack {
         
         TitleView()
            .blur(radius: showCard ? 20: 0)
            .opacity(showCard ? 0.4 :1)
            .offset(y: showCard ? -100: 0)
            .animation(
               Animation
                  .default
                  .delay(0.1)
                  .speed(2)
                  //.repeatCount(3, autoreverses: false)
                  //.repeatForever(autoreverses: true)
            )
         
         BackCardView()
            .background(showCard ? Color("card3") : Color("card4"))
            .cornerRadius(20)
            .shadow(radius: 20)
            .offset(x: 0, y: showCard ? -450 : -40)
            .offset(x: viewState.width, y: viewState.height)
            .scaleEffect(0.9)
            .rotationEffect(.degrees(showCard ? 0 : 10))
            .rotation3DEffect(
               Angle(degrees: 10),
               axis: (x: 10, y: 0, z: 0))
            .blendMode(.hardLight)
            .animation(.easeInOut(duration: 0.5))
         BackCardView()
            .background(showCard ? Color("card4") : Color("card3"))
            .cornerRadius(20)
            .shadow(radius: 20)
            .offset(x: 0, y: showCard ? -280 : -20)
            .offset(x: viewState.width, y: viewState.height)
            .scaleEffect(0.95)
            .rotationEffect(Angle(degrees: showCard ? 0 : 5))
            .rotation3DEffect(
               Angle(degrees: 5),
               axis: (x: 10, y: 0, z: 0))
            .blendMode(.hardLight)
            .animation(.easeInOut(duration: 0.3))
         CardView()
            .frame(width: showCard ? 375 : 340, height: 220)
            .background(Color.black)
            //.cornerRadius(20)
            .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
            .shadow(radius: 20)
            .offset(x: viewState.width, y: viewState.height)
            .offset(y: showCard ? -175 : 0)
            .blendMode(.hardLight)
            .animation(.spring(response: 0.3, dampingFraction: 0.9, blendDuration: 0))
            .onTapGesture {
               self.showCard.toggle()
            }
            .gesture(
               DragGesture().onChanged { value in
                  self.viewState = value.translation
                  self.showCard = true
               }
               .onEnded{ value in
                  self.viewState = .zero
                  self.showCard = false
               }
            )
         
         BottomCardView()
            .offset(x: 0, y: self.showCard ? 330 : 1000)
            //.blur(radius: 20)
            .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.7))
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






