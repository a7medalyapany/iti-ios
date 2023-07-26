//
//  User.swift
//  Tabel View
//
//  Created by khaledsobh on 25/07/2023.
//

import Foundation

protocol AddUser{
    func addUser(name: String)
}

struct User{
    var name: String
    var email: String
    var age: String
    var phone: String
    
}
