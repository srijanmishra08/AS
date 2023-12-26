//
//  WelcomeScreenView.swift
//  project
//
//  Created by admin on 12/12/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSignupActive = false

    var body: some View {
        NavigationView {
            VStack {
                Spacer()

                Text("Welcome back")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()

                // Email and Password Fields
                VStack(spacing: 16) {
                    TextField("Email or username", text: $email)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)

                    SecureField("Password", text: $password)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(.horizontal)

                // Forgot Password Link
                HStack {
                    Spacer()
                    Button(action: {
                        // Handle forgot password action
                        print("Forgot password?")
                    }) {
                        Text("Forgot password?")
                            .foregroundColor(.blue)
                    }
                    .padding()
                }

                // Login Button
                Button(action: {
                    // Handle login logic here
                    print("Email: \(email), Password: \(password)")
                }) {
                    Text("Log in")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(200)
                }
                .padding(.horizontal)

                // Log in using Apple Button (Placeholder)
                Button(action: {
                    // Handle Apple Sign-In logic here
                    print("Log in using Apple")
                }) {
                    Text("Log in using Apple")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black) // Placeholder color for Apple Sign-In
                        .cornerRadius(200)
                }
                .padding(.horizontal)

                // Log in using Google Button (Placeholder)
                Button(action: {
                    // Handle Google Sign-In logic here
                    print("Log in using Google")
                }) {
                    Text("Log in using Google")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red) // Placeholder color for Google Sign-In
                        .cornerRadius(200)
                }
                .padding(.horizontal)

                // Sign Up Link with NavigationLink to SignupView
                HStack {
                    Text("Don’t have an account?")

                    NavigationLink(destination: SignupView(), isActive: $isSignupActive) {
                        EmptyView()
                    }
                    .hidden()

                    Button(action: {
                        // Handle button action to navigate to the signup page
                        isSignupActive = true
                    }) {
                        Text("Sign up")
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                    }
                }
                .padding()

                Spacer()
            }
            .navigationBarTitle("Log In")
        }
    }
}


#Preview {
    LoginView()
    
}
