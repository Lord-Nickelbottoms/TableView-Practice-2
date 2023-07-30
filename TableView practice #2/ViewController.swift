//
//  ViewController.swift
//  TableView practice #2
//
//  Created by Nizaam Haffejee on 2023/07/29.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let countries = [
        [   "Serbia",
            "Belgrad",
        ],
        [ "Ukraine",
          "Kiev",
        ],
        [
            "Russia",
            "Moscow",
        ],
        [
            "Russia",
            "Sant-Peterborough",
        ],
        [
            "Ukraine",
            "Lvov",
        ],
        [
            "China",
            "Beijing",
        ],
        [
            "Poland",
            "Cracow",
        ],
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CountryCell
        else{
            return UITableViewCell()
        }
        
        cell.item.text = countries[indexPath.row][0]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectCountry = countries[indexPath.row]
        performSegue(withIdentifier: "toInfo", sender: selectCountry)
//        let infoVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
//        infoVC.headerLabel.text = countries[indexPath.row][0]
//        infoVC.countryNameLabel.text = countries[indexPath.row][0]
//        infoVC.cityNameLabel.text = countries[indexPath.row][1]
//
//        performSegue(withIdentifier: "toInfo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toInfo", let selectedCountry = sender as? [String]{
            if let infoVC = segue.destination as? InfoViewController{
                infoVC.headerLabel.text = selectedCountry[0]
                infoVC.countryNameLabel.text = selectedCountry[0]
                infoVC.cityNameLabel.text = selectedCountry[1]
            }
        }
    }
}
