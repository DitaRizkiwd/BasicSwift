//
//  SwiftUIState.swift
//  LearnTheBasic
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct SwiftUIState: View {
    @State private var isPlay:Bool = false
    @State private var counterPlayerOne = 1
    @State private var counterPlayerTwo = 1
    
    var body: some View {
        VStack{
            Button{
                isPlay.toggle()
            }
            label :{
                Image(systemName: isPlay ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 150))
                    .foregroundColor(isPlay ? .blue: .cyan)
            }
            ListPlayer(counterPlayerOne: $counterPlayerOne, counterPlayerTwo: $counterPlayerTwo)
            
            Button{
                counterPlayerOne = 0
                counterPlayerTwo = 0
            } label:{
            Text("Reset")
            }
        }
    }
}

#Preview {
    SwiftUIState()
}
struct ListPlayer:View {
    @Binding var counterPlayerOne: Int
    @Binding var counterPlayerTwo: Int
    
    var body: some View {
        List{
            HStack(spacing : 60){
                Text("counter play one")
                Text("\(counterPlayerOne)")
            }
            .onTapGesture {
                counterPlayerOne += 1
            }
            HStack(spacing : 60){
                Text("counter play two")
                Text("\(counterPlayerTwo)")
            }
            .onTapGesture {
                counterPlayerTwo += 1
            }
        }
    }
}
