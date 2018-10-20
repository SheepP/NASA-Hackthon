//
//  ViewController.swift
//  NASA
//
//  Created by 鄭羽辰 on 2018/10/19.
//  Copyright © 2018 鄭羽辰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    @IBAction func startSelect(_ sender: Any) {
        for option in options{
            option.isHidden = !option.isHidden
        }
        if imageView1.isHidden == true{
            imageView1.isHidden = false
        }else{
            imageView1.isHidden = true
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

