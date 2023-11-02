//
//  RegisterationView.swift
//  MessengerTutorial
//
//  Created by daya vijayan on 24/10/23.
//

import SwiftUI

struct RegisterationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Spacer()
            //logo image
            Image("messenger")
                .resizable()
                .scaledToFit()
                .frame(width:150,height:150)
                .padding()
            
            //text fields
            VStack{
                TextField("enter your fullname", text:$fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                TextField("enter your email", text:$email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                SecureField("enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
            }
            Button{
                print("handle login")
            }label:{
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
            }
            .padding(.vertical)
            Spacer()
            Divider()
            Button{
              dismiss()
            }label:{
                HStack(spacing:3){
                    
                    Text("Already have an account")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
    }}

#Preview {
    RegisterationView()
}
