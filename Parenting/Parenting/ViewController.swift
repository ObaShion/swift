//
//  ViewController.swift
//  Parenting
//
//  Created by 大場史温 on 2021/06/02.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    

    @IBOutlet weak var myTableView: UITableView!
    var users: [user] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableView.dataSource = self
        myTableView.delegate = self
        loadData()
    }
    func loadData() {
        users.append(user(username: "BAD HOP", useritem: "Owl", userimage: "d12949-1014-382320-0"))
        users.append(user(username: "JP The Waby", useritem: "Bird", userimage: "JPTHEWAVY-Official_Photo_2020-e1586525849491"))
        users.append(user(username: "Lex", useritem: "Lion", userimage: "lex"))
        users.append(user(username: "Lex", useritem: "Hippo", userimage: "lex"))
        users.append(user(username: "Lex", useritem: "Bear", userimage: "lex"))
        users.append(user(username: "Lex", useritem: "Hedgehog", userimage: "lex"))
        users.append(user(username: "Lex", useritem: "Elephant", userimage: "lex"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: "AnimalTableViewCell", for: indexPath) as? userTableViewCell else {
                fatalError("Dequeue failed: AnimalTableViewCell.")
            }
            
            cell.usernameLabel.text = users[indexPath.row].username
            cell.useritemLabel.text = users[indexPath.row].useritem
            cell.userimageView.image = UIImage(named: users[indexPath.row].userimage)

            return cell
    }
    
    
    
    
}
