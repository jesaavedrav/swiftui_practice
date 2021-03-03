//
//  TitleView.swift
//  swiftui_practice
//
//  Created by Jorge Saavedra on 3/3/21.
//

import SwiftUI

struct TitleView: View {
   var body: some View {
      VStack {
         HStack {
            Text("Certificates")
               .font(.largeTitle)
               .fontWeight(.bold)
            Spacer()
         }
         .padding()
         Image("Background1")
         Spacer()
      }
   }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
