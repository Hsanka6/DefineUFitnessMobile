//
//  CalorieTrackerViewController.swift
//  DefineUFitness
//
//  Created by Haasith Sanka on 7/8/19.
//  Copyright © 2019 Haasith Sanka. All rights reserved.
//

import UIKit

class CalorieTrackerViewController: UIViewController {

    var date:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBarSetUp()
        
        // Do any additional setup after loading the view.
    }
    
    func navBarSetUp(){
        guard let d = date else{
            return
        }
        self.title = d
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveDailyCalories))
    }
    
    @objc func saveDailyCalories(){
        print("saved")

        self.navigationController?.popToRootViewController(animated: true)
        
        //To access the tab bar instance
        if let tabBarController = self.view.window!.rootViewController as? TabBarController {
            
            //Change the selected index to the one you want (starts from 0)
            tabBarController.selectedIndex = 2
        }

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
