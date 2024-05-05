//
//  SwiftUIAlertControl.swift
//  LearnTheBasic
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct SwiftUIAlertControl: View {
    @State private var showAlert: Bool = false
    var body: some View {
        VStack{
            Button{
                showAlert = true
            }
        label:{
            Image(systemName: "trash")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .padding()
        .foregroundColor(.white)
        .background(.red)
        .clipShape(Circle())
        .alert("Are you sure want to delete this items", isPresented: $showAlert){
            Button(role: .destructive){
                
            }
            label:{
                Text("Delete")
            }
        }
        }
    }
}

#Preview {
    SwiftUIAlertControl()
}
