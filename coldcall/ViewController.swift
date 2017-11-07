//
//  ViewController.swift
//  coldcall
//
//  Created by Rohan Baddam on 11/1/17.
//  Copyright © 2017 Rohan Inc. All rights reserved.
//

import UIKit

var name = ["maddi","neethu","shamili","mounika","anjali"]
class ViewController: UIViewController {
    @IBOutlet weak var centerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func coldButtonPressed(_ sender: UIButton) {
        let rand = arc4random_uniform(UInt32(name.count))
        nameLabel.text = name[Int(rand)]
        let randnumber = arc4random_uniform(UInt32(5))+1
        print(randnumber)
        centerLabel.text = String(Int(randnumber))
        if randnumber <= 2{
            centerLabel.textColor = .red
            print ("in red")
        } else if randnumber == 5{
            centerLabel.textColor = .green
            print ("in green")
        } else {
            centerLabel.textColor = .orange
            print ("in orange")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "click cold call button!"
        centerLabel.text = "Be ready!!"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

