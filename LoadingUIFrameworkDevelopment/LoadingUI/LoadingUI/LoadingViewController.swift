//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Patrick Millet on 1/30/20.
//  Copyright © 2020 Patrick Millet. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    
    //MARK: Properties
   lazy var animationView: IndeterminateLoadingView = {
        let frame = CGRect(x: view.center.x, y: view.center.y, width: view.bounds.width / 2, height: view.bounds.width / 2)
        let animationView = IndeterminateLoadingView(frame: frame)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.backgroundColor = .systemTeal
        animationView.layer.cornerRadius = 30
        animationView.clipsToBounds = true
        return animationView
    }()
    
    
    //MARK: Lifecycle
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
    }

    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animationView.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 8.0) {
            self.animationView.stopAnimating()
            self.dismiss(animated: true)
        }
    }

    //MARK: Methods
    private func setupSubViews() {
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            animationView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -40),
            animationView.widthAnchor.constraint(equalToConstant: 200),
            animationView.heightAnchor.constraint(equalTo: animationView.widthAnchor, multiplier: 1)
        ])
    }
}
