//
//  FormControlView.swift
//  LearnTheBasic
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct FormControlView: View {
    @State private var firstname:String=""
    @State private var lastname:String=""
    var body: some View {
        Form{
            Section{
                TextField("First Name", text: $firstname)
                TextField("Last Name", text: $lastname)
                
            }
        header:{
            Text("Account info".uppercased())
        }
        footer:{
            Text("Please fill the field")
        }
        }
    }
}

#Preview {
    FormControlView()
}
