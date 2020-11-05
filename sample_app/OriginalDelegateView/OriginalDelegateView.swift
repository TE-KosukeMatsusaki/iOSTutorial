//
//  OriginalDelegateView.swift
//  sample_app
//
//  Created by Kosuke Matsusaki on 2020/11/02.
//  Copyright © 2020 Kosuke Matsusaki. All rights reserved.
//

import UIKit

protocol OriginalDelegate: AnyObject {
    func buttonTap()
}

class OriginalDelegateView: UIView, UIGestureRecognizerDelegate {
    weak var delegate: OriginalDelegate?
    
    @IBAction func clickFirstButton(_ sender: UIButton) {
        delegate?.buttonTap()
    }
    
//    @IBOutlet weak var mainButton: UIButton! {
//        didSet{
//            let buttonRecognizer = UITapGestureRecognizer(target: self, action: #selector(buttonTap(_:)))
//            buttonRecognizer.delegate = self
//            mainButton.addGestureRecognizer(buttonRecognizer)
//        }
//    }
//
//    // MARK: - Event
//    @objc func buttonTap(_ sender: UITapGestureRecognizer) {
//        delegate?.buttonTap()
//    }
}

