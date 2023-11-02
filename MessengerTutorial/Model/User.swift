//
//  User.swift
//  MessengerTutorial
//
//  Created by daya vijayan on 24/10/23.
//

import Foundation
struct User: Codable,Identifiable,Hashable{
    let id = NSUUID().uuidString
    let fullname : String
    let email: String
    let profileImageUrl: String?
    
}
extension User{
    static let MOCK_USER = User(fullname: "Sanal", email: "Sanalboy@gmail.com", profileImageUrl: "batman")
}
