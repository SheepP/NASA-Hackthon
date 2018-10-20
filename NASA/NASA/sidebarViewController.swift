//
//  sidebarViewController.swift
//  NASA
//
//  Created by Doing on 2018/10/20.
//  Copyright © 2018年 鄭羽辰. All rights reserved.
//

import UIKit

class sidebarViewController: SlideMenuController {

    override func awakeFromNib() {
        if let mainController = self.storyboard?.instantiateViewController(withIdentifier: "main"){
            self.mainViewController = mainController
        }
        if let leftController = self.storyboard?.instantiateViewController(withIdentifier: "left"){
            self.mainViewController = leftController
        }
        if let rightController = self.storyboard?.instantiateViewController(withIdentifier: "right"){
            self.mainViewController = rightController
        }
        super.awakeFromNib()
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

