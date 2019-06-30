//
//  NutritionViewController.swift
//  DefineUFitness
//
//  Created by Haasith Sanka on 6/30/19.
//  Copyright © 2019 Haasith Sanka. All rights reserved.
//

import UIKit

class NutritionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var dates = ["1/2/22","1/3/22"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "nutritionCell") else {
            return UITableViewCell()
        }
        cell.textLabel?.text = dates[indexPath.row]
        return cell
    }
    

    @IBOutlet var tableView: UITableView!
    
    func tableSetUp(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableSetUp()
        // Do any additional setup after loading the view.
    }
    

   

}
