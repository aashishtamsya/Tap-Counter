//
//  ViewController.swift
//  ATTapCounter Swift
//
//  Created by Felix ITs 01 on 27/08/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelCount: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBAction func tapAction(sender: AnyObject) {
        let button : UIButton = sender as! UIButton
        if let text = self.labelCount.text {
            let newText : String = increaseCounter(text)
            self.labelCount.text = newText
        }
    }
    
    @IBAction func resetAction(sender: AnyObject) {
        labelCount.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupScreen()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupScreen() {
        
        resetButton.tintColor = UIColor.redColor();
        tapButton.tintColor = UIColor.blackColor()
        resetButton.backgroundColor = UIColor.yellowColor()
    }
    
    func increaseCounter(text : String) -> String {
        var value : Int = Int(text)!
        value = value + 1
        return String(value)
    }
}

