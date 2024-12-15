//
//  OTPLoginView.swift
//  RiderProvider
//
//  Created by Gourav Kumar on 15/12/24.
//

import SwiftUI

struct OTPLoginView: View {
    @State var otp = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("Enter OTP")
                .font(.headline)
            
            TextField("Phone Number", text: $otp)
                .keyboardType(.phonePad) // Sets the keyboard to phone number style
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
            
            Button(action: {
                validateOTP()
            }) {
                Text("Authenticate")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
    private func validateOTP(){
        
    }
}

#Preview {
    OTPLoginView()
}
