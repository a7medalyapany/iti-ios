//
//  User.swift
//  Table View
//
//  Created by khaledsobh on 29/07/2023.
//

import Foundation

protocol AddUser{
    func addUser(user: User)
}

struct User{
    var name: String
    var email: String
    var phone: String
    var age: String
}
