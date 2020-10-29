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
        mainButton.addTarget(self, action: #selector(backToTopViewController), for: .touchDown)
    }

    @objc func backToTopViewController() {
        self.navigationController?.popToRootViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
