//
//  OriginalDelegateView.swift
//  sample_app
//
//  Created by Kosuke Matsusaki on 2020/11/02.
//  Copyright © 2020 Kosuke Matsusaki. All rights reserved.
//

import UIKit

protocol OriginalDelegate: AnyObject {
    func firstButtonTap()
    func secondButtonTap()
}

class OriginalDelegateView: UIView, UIGestureRecognizerDelegate {
    weak var delegate: OriginalDelegate?
    
    @IBAction func clickFirstButton(_ sender: UIButton) {
        delegate?.firstButtonTap()
    }
    
    @IBOutlet weak var secondButton: UIButton! {
        didSet{
            let buttonRecognizer = UITapGestureRecognizer(target: self, action: #selector(secondButtonTap(_:)))
            buttonRecognizer.delegate = self
            secondButton.addGestureRecognizer(buttonRecognizer)
        }
    }

    // MARK: - Event
    @objc func secondButtonTap(_ sender: UITapGestureRecognizer) {
        delegate?.secondButtonTap()
    }
}

