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
    var selectedDate:String?
    
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
        //self.navigationController?.navigationItem.hidesBackButton = true
        //self.navigationItem.setHidesBackButton(true, animated:true);
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedDate = dates[indexPath.row]
        self.performSegue(withIdentifier: "toDailyCalories", sender: nil)
    }
    
    

    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDailyCalories"
        {
            if let destination = segue.destination as? CalorieTrackerViewController
            {
                destination.date = selectedDate
            }
        }
     }
 
   

}
