//
//  ColorPickerControlView.swift
//  LearnTheBasic
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct ColorPickerControlView: View {
    @State private var selectedColor:Color = .cyan
    var body: some View {
        VStack{
            ColorPicker("selected color", selection: $selectedColor, supportsOpacity: true)
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(selectedColor)
                .frame(height:100)
        }
        .padding()
    }
}

#Preview {
    ColorPickerControlView()
}
