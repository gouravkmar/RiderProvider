//
//  LoginScreen.swift
//  RiderProvider
//
//  Created by Gourav Kumar on 15/12/24.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth
struct LoginScreen: View {
    @State private var phoneNumber: String = "" // State variable to hold the phone number
    @State private var isNavigating: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Enter Phone Number")
                .font(.headline)
            
            TextField("Phone Number", text: $phoneNumber)
                .keyboardType(.phonePad) // Sets the keyboard to phone number style
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
            
            Button(action: {
                authenticate(phoneNumber: phoneNumber)
            }) {
                Text("Send OTP")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            NavigationLink(destination: OTPLoginView(), isActive: $isNavigating) {
                OTPLoginView()
            }
            .hidden()
        }
        .padding()
    }
    private func authenticate(phoneNumber: String) {
            // Add your authentication logic here
            print("Authenticating phone number: \(phoneNumber)")
        isNavigating = true
        PhoneAuthProvider.provider()
          .verifyPhoneNumber(phoneNumber, uiDelegate: nil) { verificationID, error in
              if let error = error {
                  print(error)
//                self.showMessagePrompt(error.localizedDescription)
                return
              }
              print(verificationID)
              // Sign in using the verificationID and the code sent to the user
              // ...
          }
        
    }
}


#Preview {
    LoginScreen()
}
