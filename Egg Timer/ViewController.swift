//
//  ViewController.swift
//  Egg Timer
//
//  Created by Brian Tan on 2/7/17.
//  Copyright © 2017 Brian Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var second = 210
    var timer = Timer()

    @IBOutlet weak var numLabel: UILabel!
    
    @IBAction func playBtn(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseBtn(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func sub10(_ sender: Any) {
        if second > 10 {
            second -= 10
            numLabel.text = String(second)
        }
    }
    
    @IBAction func add10(_ sender: Any) {
        second += 10
        numLabel.text = String(second)
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        second = 210
        numLabel.text = String(second)
    }
    
    func processTimer() {
        if second > 0 {
            second -= 1
        }
        
        numLabel.text = String(second)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

