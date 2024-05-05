//
//  ContainerStack.swift
//  LearnTheBasic
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct ContainerStack: View {
    var body: some View {
        ZStack{ //zero size stack
            LinearGradient(colors: [.cyan, .blue, .cyan], startPoint:.topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack { //vertical stack
                Text("Hello, iOS Developer")
                    .font(.system(.largeTitle))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Image(systemName: "applelogo")
                    .font(.system(size: 148))
                
                HStack { //Horizontal stack
                    Image(systemName: "lock.open")
                    Text("Unlock your creativity")
                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.light)
                .padding(.bottom, 24)
                
            }.foregroundColor(.white)
        }
    }
}

#Preview {
    ContainerStack()
}
