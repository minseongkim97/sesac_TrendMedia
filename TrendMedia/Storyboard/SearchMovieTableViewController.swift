//
//  SearchMovieTableViewController.swift
//  TrendMedia
//
//  Created by MIN SEONG KIM on 2022/07/19.
//

import UIKit

struct Movie {
    let image: UIImage
    let title: String
    let date: String
    let description: String
}

class SearchMovieTableViewController: UITableViewController {

    var list = [Movie(image: UIImage(systemName: "star")!, title: "헤어질 결심", date: "2022 .06.29|KR", description: "산 정상에서 추락한 한 남자의 변사 사건. 담당 형사 '해준'(박해일)은 사망자의 아내 '서래'(탕웨이)와 마주하게 된다. 산에 가서 안 오면 걱정했어요, 마침내 죽을까 봐. 남편의 죽음 앞에서 특별한 동요를 보이지 않는 '서래'. 경찰은 보통의 유가족과는 다른 '서래'를 용의선상에 올린다. '해준'은 사건 당일의 알리바이 탐문과 신문, 잠복수사를 통해 '서래'를 알아가면서 그녀에 대한 관심이 점점 커져가는 것을 느낀다. 한편, 좀처럼 속을 짐작하기 어려운 '서래'는 상대가 자신을 의심한다는 것을 알면서도 조금의 망설임도 없이 '해준'을 대하는데…. 진심을 숨기는 용의자 용의자에게 의심과 관심을 동시에 느끼는 형사 그들의 <헤어질 결심>")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchMovieTableViewCell", for: indexPath) as! SearchMovieTableViewCell
        cell.movieImageView.image = list[indexPath.row].image
        cell.titleLabel.text = list[indexPath.row].title
        cell.dateLabel.text = list[indexPath.row].date
        cell.descriptionLabel.text = list[indexPath.row].description
        return cell
    }
}
