//
//  MainViewController.swift
//  sample_app
//
//  Created by Kosuke Matsusaki on 2020/10/07.
//  Copyright © 2020 Kosuke Matsusaki. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func showFirstViewController() {
        navigationController?.pushViewController(FirstViewController(), animated: true)
    }
    
    func showSecondViewController() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    @IBAction func clickFirstButton(_ sender: Any) {
        mainLabel.text = "Move to First"
        showFirstViewController()
    }
    
    @IBAction func clickSecondButton(_ sender: Any) {
        mainLabel.text = "Move to Second"
        showSecondViewController()
        
    }
    
    @IBOutlet weak var firstContentsView: UIView!
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
