//
//  DailyExerciseViewController.swift
//  DefineUFitness
//
//  Created by Haasith Sanka on 7/10/19.
//  Copyright © 2019 Haasith Sanka. All rights reserved.
//

import UIKit

class DailyExerciseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    
    var dateExercises = [String]()
    var selectedDate:String?
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseCell", for: indexPath)
        
        return cell
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
