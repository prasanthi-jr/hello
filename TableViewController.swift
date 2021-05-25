//
//  TableViewController.swift
//  Hello  World
//
//  Created by cunextgenapple on 10/05/21.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var img = [UIImage(named: "a"), UIImage(named: "b"), UIImage(named: "c"),
               UIImage(named: "d"), UIImage(named: "e")]
    
    var data = ["$300", "$234" , "$450" , "$330" , "$200"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listTableViewCell" , for:indexPath) as!
    listTableViewCell
    
        cell.imageCell.image = self.img[indexPath.row]
        cell.labelCell.text = self.data[indexPath.row]
        return cell
    }
}        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // */

