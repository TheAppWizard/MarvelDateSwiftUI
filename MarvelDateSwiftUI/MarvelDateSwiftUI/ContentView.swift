//
//  ContentView.swift
//  MarvelDateSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 07/10/20.
//

//makeCall.Swift Additional UI File

import SwiftUI

  struct ContentView: View {
      var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            Text("The App Wizard")
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundColor(Color.white)
            
          Home()
        }
      }
  }
  
  struct ContentView_Previews: PreviewProvider {
      static var previews: some View {
            ContentView()
      }
}
  
  
  
