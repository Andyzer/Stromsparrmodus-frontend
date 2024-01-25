//
//  HeaderView.swift
//  Stromsparrmodus-frontend
//
//  Created by spaceCadet on 25.01.24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.blue)
                .rotationEffect(.degrees(15))
                .offset(y: -95)
                
            VStack {
                Text("Stromsparmodus App")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
                    .bold()
                    //move text up a little
                    .offset(y: -80)
            }
            .padding(.top, 50)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height:  350)
    }
}

#Preview {
    HeaderView()
}
