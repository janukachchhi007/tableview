//
//  ViewController.swift
//  tableview
//
//  Created by R94 on 05/02/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
//
   var setting =  ["airplane Mode","WiFi","Mobile Network","Personal Hotspot","Bluetooth","OTG"]
  @IBOutlet weak var tableView: UITableView!
//    override func viewDidLoad() {
//         super.viewDidLoad()
//
//        }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return setting.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell()
//        cell.textLabel?.text = setting[indexPath.row][indexPath.section]
//        return cell
//    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section == 0
//        {
//            return "section 1"
//        }
//        else if section == 1
//        {
//            return "section 2"
//        }
//        return ""
//    }
//}
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return setting.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        cell.textLabel?.text = "\(setting[indexPath.row])"
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0
        {
            return "section 1"
        }
        return ""
    }

}

