//
//  ViewController.swift
//  liveScreen
//
//  Created by Sierra 4 on 16/05/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    
    var array = ["06:00pm" , "11:00am" , "12:00pm" , "02:00pm" , "04:00pm"]
    var array2 = ["12thMay2017","12thMay2017","13thMay 017","16thMay2017","17thMay2017"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.estimatedRowHeight = 250
        tblView.rowHeight  = UITableViewAutomaticDimension
        let nib = UINib(nibName: "FirstTableViewCell", bundle: nil)
        tblView.register(nib, forCellReuseIdentifier: "firstCell")
        
        let nib2 = UINib(nibName: "SecondTableViewCell", bundle: nil)
        tblView.register(nib2, forCellReuseIdentifier: "secondCell")
        
        let nib3 = UINib(nibName: "ThirdTableViewCell2", bundle: nil)
        tblView.register(nib3, forCellReuseIdentifier: "thirdCell")
        
        let nib4 = UINib(nibName: "FourthTableViewCell2", bundle: nil)
        tblView.register(nib4, forCellReuseIdentifier: "fourthCell")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 3:
            return array.count
        default:
            return 1
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section)
        {
        case 0:
            let firstcell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath) as!
            FirstTableViewCell
            return firstcell
            
        case 1:
            let secondcell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath) as!
            SecondTableViewCell
            return secondcell
            
        case 2:
            let thirdcell = tableView.dequeueReusableCell(withIdentifier: "thirdCell", for: indexPath) as!
            ThirdTableViewCell2
            return thirdcell

        case 3:
            let fourthcell = tableView.dequeueReusableCell(withIdentifier: "fourthCell", for: indexPath) as! FourthTableViewCell2
           fourthcell.lblTime.text = array[indexPath.row]
            fourthcell.lblDate.text = array2[indexPath.row]
            return fourthcell
            
        default:
            let secondcell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath) as!
            SecondTableViewCell
            return secondcell
        }
    } func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        
        switch indexPath.section {
//        case 3:
//            return 95
//        default:
//            return 250
        case 1:
            return 250
        
        default:
            return UITableViewAutomaticDimension
        }
    }
}
