//
//  SecondViewController.swift
//  sample_app
//
//  Created by Kosuke Matsusaki on 2020/10/08.
//  Copyright © 2020 Kosuke Matsusaki. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "second"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        mainButton.addTarget(self, action: #selector(backToTopViewController), for: .touchDown)
    }

    @objc func backToTopViewController() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func showScrollViewController() {
        navigationController?.pushViewController(TableViewController(), animated: true)
    }
    
    @IBAction func clickScrollButton(_ sender: Any) {
        showScrollViewController()
    }
}
