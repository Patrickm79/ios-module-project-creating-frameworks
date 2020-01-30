//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Patrick Millet on 1/30/20.
//  Copyright © 2020 Patrick Millet. All rights reserved.
//

import UIKit
import LoadingUI

class TestViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var label: UILabel!
    
    //MARK: - Actions

    @IBAction func testTapped(_ sender: Any) {
        displayLoadingViewController()
    }
    
    //MARK: - Methods
    @objc func displayLoadingViewController() {
        let loadingVC = LoadingViewController()
        self.present(loadingVC, animated: true)
    }
}


