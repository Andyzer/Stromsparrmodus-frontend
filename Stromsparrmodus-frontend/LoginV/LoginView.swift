//
//  LoginView.swift
//  Stromsparrmodus-frontend
//
//  Created by Andreas Marton on 25.01.24.
//
import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel();
    
    var body: some View {
        VStack {
            // Header
            HeaderView()
            
            
            
            // Login Form
            Form {
                
                TextField("Username", text: $viewModel.username)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                CustomButton(title: "Login",
                             background: .blue
                ) {
                    viewModel.login()
                }
                .padding()
            }

            
            
            
            
            //Register View
            VStack {
                Text("Create New Account")
                Button(action: {
                    print("Register")
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.blue)
                            .opacity(0.6)
                        Text("Register")
                            .foregroundStyle(Color.white)
                            .bold()
                    }
                    .frame(width: 300 ,height: 50)
                })
            }
            
            Spacer()
        }
    }
}

    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

