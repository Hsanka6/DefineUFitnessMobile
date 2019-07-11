//
//  DailyExerciseViewController.swift
//  DefineUFitness
//
//  Created by Haasith Sanka on 7/10/19.
//  Copyright © 2019 Haasith Sanka. All rights reserved.
//

import UIKit

class DailyExerciseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var dateExercises:[String]?
    var selectedDate:String?
    var exercises = [String]()
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        // Do any additional setup after loading the view.
    }
    func setUpUI(){
        guard let d = selectedDate else{
            return
        }
        self.title = d
        
        guard let exer = dateExercises else {
            return
        }
        
        exercises = exer
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let youtubeId = "vklj235nlw"
        var url = URL(string:"youtube://\(youtubeId)")!
        if !UIApplication.shared.canOpenURL(url)  {
            url = URL(string:"http://www.youtube.com/")!
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("count")
        return exercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseCell", for: indexPath)
        cell.textLabel?.text = exercises[indexPath.row]
        print(exercises[indexPath.row])
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
