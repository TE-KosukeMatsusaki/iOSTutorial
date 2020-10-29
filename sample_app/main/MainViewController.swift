//
//  MainViewController.swift
//  sample_app
//
//  Created by Kosuke Matsusaki on 2020/10/07.
//  Copyright © 2020 Kosuke Matsusaki. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var secondButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "main"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        secondButton.addTarget(self, action: #selector(showSecondViewController), for: .touchDown)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func showFirstViewController() {
        navigationController?.pushViewController(FirstViewController(), animated: true)
    }
    
    @objc func showSecondViewController() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    @IBAction func clickFirstButton(_ sender: Any) {
        showFirstViewController()
    }
}
