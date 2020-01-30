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
    
    override func viewDidLoad() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateName), name: NSNotification.Name("testComplete"), object: LoadingViewController.self)
    }
    //MARK: - Actions

    @IBAction func testTapped(_ sender: Any) {
        displayLoadingViewController()
        label.text = "Testing in progress"
    }
    
    //MARK: - Methods
    @objc func displayLoadingViewController() {
        let loadingVC = LoadingViewController()
        self.present(loadingVC, animated: true)
    }
    
    @objc func updateName() {
        label.text = "Please press the test button!"
    }
}


