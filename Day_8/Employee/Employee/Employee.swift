//
//  Employee.swift
//  Employee
//
//  Created by khaledsobh on 31/07/2023.
//

import Foundation

struct Employee : Codable{
    let id : Int
    let employeeName : String
    let employeeSalary : Int
    let employeeAge : Int
    
}

struct EmployeeResult: Codable {
    let status: String
    let data: [Employee]
    let message: String
}
