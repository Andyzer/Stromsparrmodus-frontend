//
//  LoginView.swift
//  Stromsparrmodus-frontend
//
//  Created by Andreas Marton on 25.01.24.
//
import SwiftUI

struct LoginView: View {
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView()
            // Login Form
            Form {
                TextField("Username", text: $username)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                Button(action: {
                    print("Login")
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.blue)
                        Text("Log In")
                            .foregroundStyle(Color.white)
                            .bold()
                    }
                    .frame(height: 50)
                })
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

