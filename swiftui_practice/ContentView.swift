//
//  ContentView.swift
//  swiftui_practice
//
//  Created by Jorge Saavedra on 3/3/21.
//

import SwiftUI

struct ContentView: View {
   var body: some View {
      ZStack {
         VStack {
            Spacer()
         }
         .frame(width: 300, height: 220)
         .background(Color(.blue))
         .cornerRadius(20)
         .shadow(radius: 20)
         .offset(x: 0, y: -20)
         
         VStack{
            HStack{
               VStack(alignment: .leading){
                  Text("UI Design")
                     .font(.title)
                     .fontWeight(.semibold)
                     .foregroundColor(Color(.white))
                  Text("Certificate")
                     .foregroundColor(Color("accent"))
               }
               Spacer()
               Image("Logo1")
            }
            .padding()
            Spacer()
            Image("Card1")
               .resizable()
               .aspectRatio(contentMode: .fill)
               .frame(width: 300, height: 110, alignment: .top)
            
         }
         .frame(width: 340, height: 220)
         .background(Color.black)
         .cornerRadius(20)
         .shadow(radius: 20)
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
