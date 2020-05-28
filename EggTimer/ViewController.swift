//
//  ViewController.swift
//  EggTimer
//
//  Created by leslie on 3/29/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 210
    
    @IBOutlet weak var timeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @objc func decreaseTimer() {
        if time > 0 {
            
            time -= 1
            
            timeLbl.text = String(time)
            
        } else {
            
            timer.invalidate()
            
        }
    }
    
    @IBAction func pauseBtnPressed(_ sender: UIBarButtonItem) {
        
        timer.invalidate()
        
    }
    
    @IBAction func playBtnPressed(_ sender: UIBarButtonItem) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }

    @IBAction func minusTenBtnPressed(_ sender: UIBarButtonItem) {
        
        if time > 10 {
            
            time -= 10
            
            timeLbl.text = String(time)
            
        }
    }

    @IBAction func plusTenBtnPressed(_ sender: UIBarButtonItem) {
        
        time += 10
        
        timeLbl.text = String(time)
        
    }

    @IBAction func resetBtnPressed(_ sender: UIBarButtonItem) {
        
        time = 210
        
        timeLbl.text = String(time)
        
    }


}

