//
//  mapViewController.swift
//  NASA
//
//  Created by Doing on 2018/10/21.
//  Copyright © 2018年 鄭羽辰. All rights reserved.
//

import UIKit

class mapViewController: UIViewController {

    @IBAction func backMainButtom(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var userImageA: UIImageView!
    @IBOutlet weak var userImageB: UIImageView!
    @IBOutlet weak var userImageC: UIImageView!
    @IBOutlet weak var userImageD: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        userImageA.layer.cornerRadius = userImageA.frame.size.width / 2
        userImageA.clipsToBounds = true
        userImageB.layer.cornerRadius = userImageB.frame.size.width / 2
        userImageB.clipsToBounds = true
        userImageC.layer.cornerRadius = userImageC.frame.size.width / 2
        userImageC.clipsToBounds = true
        userImageD.layer.cornerRadius = userImageD.frame.size.width / 2
        userImageD.clipsToBounds = true
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
