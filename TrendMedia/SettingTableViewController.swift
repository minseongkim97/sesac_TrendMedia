//
//  SettingTableViewController.swift
//  TrendMedia
//
//  Created by MIN SEONG KIM on 2022/07/18.
//

import UIKit

class SettingTableViewController: UITableViewController {

    var birthdayFriends = ["뽀로로", "신데렐라", "올라프", "스노기", "모구리", "니닝닉"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 섹션의 갯수(옵션)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "생일인 친구"
        } else if section == 1 {
            return "즐겨찾기"
        } else if section == 2 {
            return "뭘까"
        } else {
            return "섹션"
        }
        
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "푸터"
    }
    
    // 1. 셀의 갯수(필수): numberOfRowsInSection
    // ex. 카톡 100명 > 셀 100개, 3000명 > 셀 3000개
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 6
        } else if section == 1 {
            return 2
        } else if section == 2 {
            return 10
        } else {
            return 0
        }
    }
    
    // 2. 셀의 디자인과 데이터(필수): cellForRowAt
    // ex. 카톡 이름, 프로필 사진, 상태 메시지 등
    // IndexPaths: 특정 섹션의 특정 행에 대한 위치 정보. 섹션과 행의 속성을 통해 엑세스 가능
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "rightDetailCell")!
            cell.textLabel?.text = "2번 인덱스 섹션의 텍스트"
            cell.textLabel?.textColor = .brown
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
            cell.detailTextLabel?.text = "디테일 레이블"
            
            // indexPath.row % 2
            cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray : .white
            cell.imageView?.image = indexPath.row % 2 == 0 ? UIImage(systemName: "star") : UIImage(systemName: "star.fill")
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
            if indexPath.section == 0 {
                
                cell.textLabel?.text = birthdayFriends[indexPath.row]
                cell.textLabel?.textColor = .systemMint
                cell.textLabel?.font = .boldSystemFont(ofSize: 20)
            } else if indexPath.section == 1 {
                cell.textLabel?.text = "1번 인덱스 텍스트"
                cell.textLabel?.textColor = .systemPink
                cell.textLabel?.font = .italicSystemFont(ofSize: 25)
            }
            return cell
        }
    }
    
    // 셀의 높이(옵션, 빈도 높은) (feat. tableView.rowHeight) 옵션의 차이. heightForRowAt 함수가 우선적이다. 화면이 뜨고 나서 함수가 호출되고 동적이기 때문에
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
