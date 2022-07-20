//
//  ShoppingTableViewController.swift
//  TrendMedia
//
//  Created by MIN SEONG KIM on 2022/07/20.
//

import UIKit

class ShoppingTableViewController: UITableViewController {
    var shoppingList = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    @IBOutlet weak var shoppingTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell", for: indexPath) as! ShoppingTableViewCell
        cell.shoppingProductLabel.text = shoppingList[indexPath.row]
        return cell
    }
    
    @IBAction func shoppingTextFieldReturn(_ sender: UITextField) {
        shoppingList.append(sender.text!)
        tableView.reloadData()
    }
    
    @IBAction func didTappedAddButton(_ sender: UIButton) {
        shoppingList.append(shoppingTextField.text!)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // 우측 스와이프 디폴트 기능: commit editingStyle
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            shoppingList.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
}
