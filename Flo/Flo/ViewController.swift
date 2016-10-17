//
//  ViewController.swift
//  Flo
//
//  Created by Mark Siu on 16/10/2016.
//  Copyright © 2016 Mark Siu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Counter outlets
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counterView.counter)
    }

    @IBAction func btnPushButton(button: PushButtonView) {
        if button.isAddButton {
            counterView.counter = counterView.counter + 1
        } else {
            if counterView.counter > 0 {
                counterView.counter = counterView.counter - 1
            }
        }
        counterLabel.text = String(counterView.counter)
    }

}

