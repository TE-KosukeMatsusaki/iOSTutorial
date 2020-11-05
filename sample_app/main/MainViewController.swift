//
//  MainViewController.swift
//  sample_app
//
//  Created by Kosuke Matsusaki on 2020/10/07.
//  Copyright © 2020 Kosuke Matsusaki. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var contentsView: UIView!
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
    
    private func showDelegateView() {
        let nib = UINib(nibName: "OriginalDelegateView", bundle: Bundle(for: type(of: self)))
        let delegateView = nib.instantiate(withOwner: self, options: nil).first as! OriginalDelegateView
        delegateView.delegate = self
        delegateView.center = view.center
        view.addSubview(delegateView)
    }
    
    private func removeOriginalDelegateView() {
        for subView in view.subviews {
            if type(of: subView) == OriginalDelegateView.self {
                subView.isHidden = true
            }
        }
    }

    @IBAction func clickFirstButton(_ sender: Any) {
        showFirstViewController()
    }
    
    @IBAction func clickDelegateButton(_ sender: Any) {
        showDelegateView()
    }
}

// MARK: - OriginalDelegate

extension MainViewController: OriginalDelegate {
    func firstButtonTap() {
        NSLog("First Button Tap")
        removeOriginalDelegateView()
        showFirstViewController()
    }
    func secondButtonTap() {
        NSLog("Second Button Tap")
        removeOriginalDelegateView()
        showSecondViewController()
    }
}
