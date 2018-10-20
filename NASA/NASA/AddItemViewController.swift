//
//  AddItemViewController.swift
//  NASA
//
//  Created by 鄭羽辰 on 2018/10/20.
//  Copyright © 2018 鄭羽辰. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
    var infofromview4:Int?
    

    @IBOutlet weak var itemInputTextField: UITextField!
    
    @IBOutlet weak var okButton: UIButton!
    
    @IBAction func textFieldDidChanged(_ sender: UITextField) {
        if sender.text != ""{
            okButton.setTitle("OK", for: .normal)
        }else{
            okButton.setTitle("Back", for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
