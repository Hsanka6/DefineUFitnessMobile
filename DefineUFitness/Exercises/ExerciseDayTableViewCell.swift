//
//  ExerciseDayTableViewCell.swift
//  DefineUFitness
//
//  Created by Haasith Sanka on 6/30/19.
//  Copyright © 2019 Haasith Sanka. All rights reserved.
//

import UIKit

class ExerciseDayTableViewCell: UITableViewCell {
    @IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var exerciseList: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setUp(date: String, exercises: String){
        dateLabel.text = date
        exerciseList.text = exercises
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
