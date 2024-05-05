//
//  ContentView.swift
//  LearnTheBasic
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        VStack {
            Image(systemName: "cloud.hail.fill")
                .font(.system(size: 120))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.gray,.blue)
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 10)
            
        
            
            
            
            Image(.image1)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Group{
                let url = URL(string: "https://images.unsplash.com/photo-1712135595180-f3902e325574?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" )
                AsyncImage(url: url){
                    image in
                    image.resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                    
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 300)
            }
            .overlay{
                ZStack(alignment: .bottom){
                    Rectangle()
                        .opacity(0.5)
                    
                    HStack{
                        Image(systemName: "cloud.sun.rain")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white, .yellow, .blue)
                            .font(.largeTitle)
                        Text("This is Cloud")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                    }
                }
            }
            
            Text("Hello, iOS Developer")
            
            Text("This is my journey")
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
