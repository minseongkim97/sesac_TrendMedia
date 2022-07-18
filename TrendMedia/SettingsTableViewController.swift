//
//  SettingsTableViewController.swift
//  TrendMedia
//
//  Created by MIN SEONG KIM on 2022/07/18.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    let headers = ["전체 설정", "개인 설정", "기타"]
    let totalSettings = ["공지사항", "실험실", "버전 정보"]
    let privateSettings = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let etcSettings = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return totalSettings.count
        case 1:
            return privateSettings.count
        case 2:
            return etcSettings.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell")!
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = totalSettings[indexPath.row]
        case 1:
            cell.textLabel?.text = privateSettings[indexPath.row]
        case 2:
            cell.textLabel?.text = etcSettings[indexPath.row]
        default:
            break
        }
        
        return cell
    }
}
