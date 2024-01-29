//
//  CustomButton.swift
//  Stromsparrmodus-frontend
//
//  Created by spaceCadet on 27.01.24.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
                
            }
        }
    }
}

struct CustomButton_Preview: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Value",
                     background: .blue)
        //Action
        {
            print("Button pressed")
        }
    }
}
