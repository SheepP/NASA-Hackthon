//
//  Page4ViewController.swift
//  NASA
//
//  Created by 鄭羽辰 on 2018/10/20.
//  Copyright © 2018 鄭羽辰. All rights reserved.
//

import UIKit

class Page4ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var itemTableView: UITableView!
    @IBOutlet weak var userImage1: UIImageView!
    @IBOutlet weak var userImage2: UIImageView!
    @IBOutlet weak var userImage3: UIImageView!
    
    @IBAction func backToPage3(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    var itemList = UserDefaults.standard.stringArray(forKey: "package") ?? [String]()
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = itemList[indexPath.row]
        return cell
        
    }
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            itemList.remove(at: indexPath.row)
            UserDefaults.standard.set(itemList, forKey: "package")
            itemTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        if let AddItemViewController = tabBarController?.viewControllers?[3] as? AddItemViewController{
            AddItemViewController.infofromview4 = indexPath.row
        }
        tabBarController?.selectedIndex = 3
    }
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage1.layer.cornerRadius = userImage1.frame.size.width / 2
        userImage1.clipsToBounds = true
        userImage2.layer.cornerRadius = userImage2.frame.size.width / 2
        userImage2.clipsToBounds = true
        userImage3.layer.cornerRadius = userImage3.frame.size.width / 2
        userImage3.clipsToBounds = true
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
