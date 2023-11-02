//
//  ProfileView.swift
//  MessengerTutorial
//
//  Created by daya vijayan on 24/10/23.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    let user: User
    var body: some View {
        VStack{
            VStack{
                PhotosPicker(selection:$viewModel.selectedItem){
                    if let profileImage = viewModel.profileImage{
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width:80,height:80)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }else{
                        CircularProfileImageView(user: user, size: .xlarge)
//                        Image( user.profileImageUrl ?? "")
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width:80,height:80)
//                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                        Image(systemName: "person.circle.fill")
//                            .resizable()
//                            .frame(width:80,height:80)
//                            .foregroundColor(Color(.systemGray4))
                    }
                    
                }
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            List{
                Section{
                    ForEach(SettingsOptionsViewModel.allCases){option in
                        HStack{
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width:24, height:24)
                                .foregroundColor(option.imageBackgroundcolor)
                            Text(option.title)
                                .font(.subheadline)
                        }
                        
                    }
                }
                Section{
                    Button("Log Out"){
                        
                    }
                    Button("Delete Account"){
                        
                }
                }.foregroundColor(.red)
            }
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USER)
}
