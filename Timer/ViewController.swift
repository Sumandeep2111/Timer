//
//  ViewController.swift
//  Timer
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer:Timer?
    var seconds:Int = 10
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startTimer(_ sender: UIButton) {
        runTimer()
    }
    func runTimer () {
        guard timer == nil else {return}
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            self.updateTimer()
        })
    }
    func updateTimer () {
        if seconds == 0 { return}
        else{
            seconds -= 1
            timeLabel.text = "\(seconds)"
        }
    }
    func stopTimer () {
        timer?.invalidate()
        timer = nil
    }
}

