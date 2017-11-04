//
//  FieldCellDetailViewController.swift
//  Field Survey
//
//  Created by Geoffrey Husser on 11/3/17.
//  Copyright © 2017 Geoffrey Husser. All rights reserved.
//

import UIKit

class FieldCellDetailViewController: UIViewController {

    var fieldObs: FieldObservations?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var topTopLabel: UILabel!
    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var classificationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topTopLabel.text = "Observations"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        fieldIconImageView.image = fieldObs?.classification.image
        classificationLabel.text = fieldObs?.title
        
        if let date = fieldObs?.date{
           dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
        descriptionLabel.text = fieldObs?.description
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
