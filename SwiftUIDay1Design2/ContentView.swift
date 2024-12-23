//
//  ContentView.swift
//  SwiftUIDay1Design2
//
//  Created by Srikanth Kyatham on 12/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Image("dubizzle")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            VStack(spacing: 15){
                CustomView(icon: "Facebook", text: "Continue with Facebook")
                CustomView(icon: "Google", text: "Continue with Google")
                CustomView(icon: "Apple", text: "Continue with Apple")
                CustomView(icon: "Email", text: "Continue with Email")
            }
            .padding(.horizontal, 20)
            Text("Don't have an account? Create one")
                .foregroundStyle(.red)
                .fontWeight(.semibold)
                .padding()
            HStack{
                Text("By logging in I agree to the")
                    .foregroundStyle(.gray)
                    .font(.system(size: 15))
                Text("Terms and Conditions")
                    .foregroundStyle(.blue)
            }
            HStack{
                Text("and")
                    .foregroundStyle(.gray)
                    .font(.system(size: 15))
                Text("Privacy Policy")
                    .foregroundStyle(.blue)
            }
            Spacer()
        }
        .padding()
    }
}

struct CustomView: View {
    var icon: String
    var text: String
    
    var body: some View {
        HStack(spacing: 20){
            Image(icon)
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(Color.red)
                .font(.system(size: 20))
            Text(text)
                .font(.system(size: 20))
            Spacer()
        }
        .padding()
        .frame(height: 50)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray)
        )
    }
}

#Preview {
    ContentView()
}
