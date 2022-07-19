//
//  SettingsTableViewController.swift
//  TrendMedia
//
//  Created by MIN SEONG KIM on 2022/07/18.
//

import UIKit

enum SettingOption: Int, CaseIterable {
    case total, personal, others
    
    var sectionTitle: String {
        switch self {
        case .total:
            return "전체 설정"
        case .personal:
            return "개인 설정"
        case .others:
            return "기타"
        }
    }
    
    var cellTitles: [String] {
        switch self {
        case .total:
            return ["공지사항", "실험실", "버전 정보"]
        case .personal: 
            return ["개인/보안", "알림", "채팅", "멀티프로필"]
        case .others:
            return ["고객센터/도움말"]
        }
    }
}

class SettingsTableViewController: UITableViewController {
    let headers = ["전체 설정", "개인 설정", "기타"]
    let totalSettings = ["공지사항", "실험실", "버전 정보"]
    let privateSettings = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let etcSettings = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return SettingOption.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SettingOption.allCases[section].sectionTitle
//        return headers[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingOption.allCases[section].cellTitles.count
//        switch section {
//        case 0:
//            return totalSettings.count
//        case 1:
//            return privateSettings.count
//        case 2:
//            return etcSettings.count
//        default:
//            return 0
//        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell")!
        cell.textLabel?.text = SettingOption.allCases[indexPath.section].cellTitles[indexPath.row]
//        switch indexPath.section {
//        case 0:
//            cell.textLabel?.text = totalSettings[indexPath.row]
//        case 1:
//            cell.textLabel?.text = privateSettings[indexPath.row]
//        case 2:
//            cell.textLabel?.text = etcSettings[indexPath.row]
//        default:
//            break
//        }
        
        return cell
    }
}
