//
//  MainViewController.swift
//  Employee
//
//  Created by khaledsobh on 31/07/2023.
//

import UIKit

class MainViewController: UITableViewController {
    var employees: [Employee] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchEmployeeData()
    }

    func fetchEmployeeData() {
        NetworkManager.shared.fetchEmployees { [weak self] (employees, error) in
            guard let self = self else { return }
            if let error = error {
                print("Error fetching employee data: \(error)")
                return
            }
            if let employees = employees {
                self.employees = employees
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90;
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let employee = employees[indexPath.row]
        cell.textLabel?.text = "Name: \(employee.employeeName)"
        cell.detailTextLabel?.text = "Salary: \(employee.employeeSalary)$, Age: \(employee.employeeAge)"
        return cell
    }
}
