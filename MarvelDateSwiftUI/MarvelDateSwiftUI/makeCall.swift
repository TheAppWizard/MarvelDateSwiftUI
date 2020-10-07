//
//  makeCall.swift
//  MarvelDateSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 07/10/20.
//

import SwiftUI

struct makeCall: View {
    @State private var animationAmount: CGFloat = 1
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("Calling.. Scarlett Johansson")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                
                
            Image("p7")
                .resizable()
                .frame(width: 400, height: 600, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(25)
                
                Spacer(minLength: 0)
                ZStack{
                    
                    
                Circle()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.red)
                    .overlay(
                        Circle()
                            .stroke(Color.red)
                            .scaleEffect(animationAmount)
                            .opacity(Double(2 - animationAmount))
                        
                            .animation(
                                Animation.easeInOut(duration: 1)
                                    .repeatForever(autoreverses: false)
                            )
                    ).onAppear(){
                        self.animationAmount += 2
                      }
              
                    
                    Image(systemName: "video.fill")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
                           
            }
        }
    }
}

struct makeCall_Previews: PreviewProvider {
    static var previews: some View {
        makeCall()
    }
}
