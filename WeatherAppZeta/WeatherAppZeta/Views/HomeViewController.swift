//
//  ViewController.swift
//  WeatherAppZeta
//
//  Created by Kendall Poindexter on 5/26/20.
//  Copyright © 2020 Kendall Poindexter. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var weatherDescriptionLabel: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var homeTableView: UITableView!
    
    let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.setLocationManagerDelegate()
        viewModel.requestLocation()
    }


}

