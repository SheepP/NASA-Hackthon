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
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let text = itemInputTextField.text{
            guard let page4Controller = tabBarController?.viewControllers?[0] as? Page4ViewController else {return}
            if text != ""{
                if infofromview4 != nil{
                    page4Controller.itemList[infofromview4!] = text
                    infofromview4 = nil
                }else{
                    page4Controller.itemList.append(text)
                }
                page4Controller.itemTableView.reloadData()
                UserDefaults.standard.set(page4Controller.itemList, forKey: "package")
            }else{
                if infofromview4 != nil{
                    page4Controller.itemList.remove(at: infofromview4!)
                    page4Controller.itemTableView.reloadData()
                    UserDefaults.standard.set(page4Controller.itemList, forKey: "package")
                    infofromview4 = nil
                }
            }
        }
        itemInputTextField.text = ""
        okButton.setTitle("Back", for: .normal)
        tabBarController?.selectedIndex = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if infofromview4 != nil{
            if let page4Controller = tabBarController?.viewControllers?[0] as? Page4ViewController{
                itemInputTextField.text = page4Controller.itemList[infofromview4!]
                okButton.setTitle("OK", for: .normal)
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        buttonPressed(UIButton())
        return true
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
