//
//  FirstViewController.swift
//  DefineUFitness
//
//  Created by Haasith Sanka on 6/30/19.
//  Copyright © 2019 Haasith Sanka. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dates = ["1/2/22","1/3/22"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseCell") as? ExerciseDayTableViewCell else{
            return UITableViewCell()
        }
        cell.setUp(date: dates[indexPath.row], exercises: "3x Situps")
        return cell
    }
    

    @IBOutlet var tableView: UITableView!
    func setUpTable(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTable()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

