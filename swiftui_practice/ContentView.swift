//
//  ContentView.swift
//  swiftui_practice
//
//  Created by Jorge Saavedra on 3/3/21.
//

import SwiftUI

struct ContentView: View {
   @State var show: Bool = false
   @State var viewState: CGSize = CGSize.zero
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
            .offset(x: viewState.width, y: viewState.height)
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
            .offset(x: viewState.width, y: viewState.height)
            .scaleEffect(0.95)
            .rotationEffect(Angle(degrees: show ? 0 : 5))
            .rotation3DEffect(
               Angle(degrees: 5),
               axis: (x: 10, y: 0, z: 0))
            .blendMode(.hardLight)
            .animation(.easeInOut(duration: 0.3))
         CardView()
            .offset(x: viewState.width, y: viewState.height)
            .blendMode(.hardLight)
            .animation(.spring(response: 0.3, dampingFraction: 0.9, blendDuration: 0))
            .onTapGesture {
               self.show.toggle()
            }
            .gesture(
               DragGesture().onChanged { value in
                  self.viewState = value.translation
                  self.show = true
               }
               .onEnded{ value in
                  self.viewState = .zero
                  self.show = false
               }
            )
         
         BottomCardView()
            .blur(radius: show ? 0: 20)
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






