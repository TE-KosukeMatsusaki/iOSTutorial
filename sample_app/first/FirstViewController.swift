//
//  FirstViewController.swift
//  sample_app
//
//  Created by Kosuke Matsusaki on 2020/10/08.
//  Copyright © 2020 Kosuke Matsusaki. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var secondButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        secondButton.addTarget(self, action: #selector(showSecondViewController), for: .touchDown)
    }

    @objc func showSecondViewController() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
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
