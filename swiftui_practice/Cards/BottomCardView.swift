//
//  BottomCardView.swift
//  swiftui_practice
//
//  Created by Jorge Saavedra on 3/3/21.
//

import SwiftUI

struct BottomCardView: View {
   var body: some View {
      VStack(spacing: 20){
         Rectangle()
            .frame(width: 40, height: 5, alignment: .center)
            .cornerRadius(3)
            .opacity(0.1)
         Text("This certificate is proof that Jorge Saavedra has achieved the UI Design course with approval from a Design+Code instructor+")
            .multilineTextAlignment(.center)
            .font(.subheadline)
            .lineSpacing(4)
         Spacer()
      }
      .padding(.top, 8)
      .padding(.horizontal, 20)
      .frame(maxWidth: .infinity)
      .background(Color.white)
      .cornerRadius(30)
      .shadow(radius: 20)
      .offset(x: 0, y: 550)
   }
}

struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView()
    }
}
