//
//  User.swift
//  TwitterSwiftUI
//
//  Created by Emil Shafigin on 8/9/22.
//

import FirebaseFirestoreSwift
import Firebase

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
    
    var isCurrentUser: Bool {
        Auth.auth().currentUser?.uid == id
    }
}
