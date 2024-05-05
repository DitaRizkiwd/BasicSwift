//
//  SwiftUILink.swift
//  LearnTheBasic
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct SwiftUILink: View {
    @State private var showWebView = false
    var body: some View {
        VStack{
            //cara pertama
            let url = URL(string: "https://google.com")
            
            Link("Personal Website", destination: url!)
            
            //cara kedua
            Link(destination: url!) {
                HStack{
                    Image(systemName: "applelogo")
                    Text("Sign in with Apple Account")
                }
                .frame(width: 240, height: 70)
                .foregroundStyle(.white)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            }
            //cara ketiga
            Button{
                showWebView = true
            }
        label:{
            Text("Show Personal Website")
        }
        .fullScreenCover(isPresented: $showWebView, content: {
            WebView(url: url!)
        })
            
        }
    }
}

#Preview {
    SwiftUILink()
}
