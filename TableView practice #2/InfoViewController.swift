//
//  InfoViewController.swift
//  TableView practice #2
//
//  Created by Nizaam Haffejee on 2023/07/29.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var cityNameLabel: UILabel!
    
    var countryName: String = ""
    var cityName: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryNameLabel.text = countryName
        cityNameLabel.text = cityName
    }
}
