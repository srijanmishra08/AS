//
//  SignupView.swift
//  project
//
//  Created by admin on 14/12/23.
//

import SwiftUI

struct SignupView: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isLoginActive = false

    var body: some View {
        NavigationView {
            VStack {
                Spacer()

                Text("Create account")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()

                Text("Sign up to get started!")
                    .foregroundColor(.gray)
                    .padding()

                // Full Name, Email, Password, and Confirm Password Fields
                VStack(spacing: 16) {
                    TextField("Full Name", text: $fullName)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    TextField("Email address", text: $email)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)

                    SecureField("Password", text: $password)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    SecureField("Confirm password", text: $confirmPassword)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(.horizontal)

                // Sign Up Button
                Button(action: {
                    // Handle sign-up logic here
                    print("Full Name: \(fullName), Email: \(email), Password: \(password), Confirm Password: \(confirmPassword)")
                }) {
                    Text("Sign up")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                .padding(.horizontal)

                // Sign Up using Apple Button (Placeholder)
                Button(action: {
                    // Handle Apple Sign-Up logic here
                    print("Sign up using Apple")
                }) {
                    Text("Sign up using Apple")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black) // Placeholder color for Apple Sign-Up
                        .cornerRadius(20)
                }
                .padding(.horizontal)

                // Sign Up using Google Button (Placeholder)
                Button(action: {
                    // Handle Google Sign-Up logic here
                    print("Sign up using Google")
                }) {
                    Text("Sign up using Google")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red) // Placeholder color for Google Sign-Up
                        .cornerRadius(20)
                }
                .padding(.horizontal)

                // Already a Member? Sign In Link
                HStack {
                    Text("Already a member?")

                    NavigationLink(destination: LoginView(), isActive: $isLoginActive) {
                        EmptyView()
                    }
                    .hidden()

                    Button(action: {
                        // Handle button action to navigate to the login page
                        isLoginActive = true
                    }) {
                        Text("Sign In")
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                    }
                }
                .padding()

                Spacer()
            }
            .navigationBarTitle("Sign Up")
        }
    }
}
#Preview {
    SignupView()
}
