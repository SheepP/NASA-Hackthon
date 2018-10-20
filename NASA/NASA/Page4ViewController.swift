//
//  Page4ViewController.swift
//  NASA
//
//  Created by 鄭羽辰 on 2018/10/20.
//  Copyright © 2018 鄭羽辰. All rights reserved.
//

import UIKit

class Page4ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBAction func backToPage3(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    var itemList = ["Apple","Banana","Orange"]
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
