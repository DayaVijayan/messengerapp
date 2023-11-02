//
//  LoginView.swift
//  MessengerTutorial
//
//  Created by daya vijayan on 24/10/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
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
                //forgot password
                Button{
                    print("Forgot Password")
                }label:{
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                
                //login button
                Button{
                    print("handle login")
                }label:{
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.blue)
                        .frame(width: 360,height: 44)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal,24)
                }
                
                //facebookLogin
                HStack{
                    //sandwiching
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2)-40, height:0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2)-40, height:0.5)
                }.foregroundColor(.gray)
                HStack{
                    Image("facebook")
                        .resizable()
                        .frame(width:20,height:20)
                    Text("continue with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top,8)
                Spacer()
                
                //signup link//
                NavigationLink{
                    RegisterationView()
                        .navigationBarBackButtonHidden()
                }label:{
                    HStack(spacing:3){
                        
                        Text("Dont have an account")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
            }
        }
    }
        
}

#Preview {
    LoginView()
}
