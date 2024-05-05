//
//  ButtonControl.swift
//  LearnTheBasic
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct ButtonControl: View {
    var body: some View {
        VStack(spacing: 24){
            Button{
                print("standard button tapped")
            }
        label: {
            Text("Standard button")
        } .buttonStyle(.borderedProminent)
                .controlSize(.extraLarge)
            
            
            //role button 2
            Button(role: .destructive){
                print("standard button tapped")
            }
        label: {
            Text("Destructive Button")
        } .buttonStyle(.bordered)
                .controlSize(.extraLarge)
            
            //button 3
            Button{
                print("button custom")
            }
        label: {
            Text("Hello iOs Developer")
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            
        }
            
            //button 4
            Button{
                
            }
        label: {
            Text("Hello iOs Developer")
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/),style: FillStyle())
                .padding()
                .overlay{
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(.cyan, lineWidth: 5)
                }
            
        }
            //button 5
            Button{
                
            }
            label : {
                Image(systemName: "power.circle.fill")
                    .padding()
                    .background(.cyan)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
            
            // button 6
            Button{
                
            }
            label :{
                Label("Add Stock",systemImage: "flame")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding()
            .foregroundStyle(.white)
            .background(
                LinearGradient(colors: [.blue, .cyan],startPoint: .trailing, endPoint: .leading)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
        }
        .padding()
    }
        
}

#Preview {
    ButtonControl()
}
