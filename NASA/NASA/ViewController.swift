//
//  ViewController.swift
//  NASA
//
//  Created by 鄭羽辰 on 2018/10/19.
//  Copyright © 2018 鄭羽辰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func startSelect(_ sender: Any) {
        for option in options{
            option.isHidden = !option.isHidden
        }
    }
    
    @IBOutlet var options: [UIButton]!
    
    @IBAction func optionsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "questionView", sender: nil)
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

