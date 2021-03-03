//
//  CardView.swift
//  swiftui_practice
//
//  Created by Jorge Saavedra on 3/3/21.
//

import SwiftUI

struct CardView: View {
   var body: some View {
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

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
