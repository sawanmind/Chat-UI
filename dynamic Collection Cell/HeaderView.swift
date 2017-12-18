//
//  HeaderView.swift
//  dynamic Collection Cell
//
//  Created by iOS Developer on 12/18/17.
//  Copyright © 2017 sawanmind. All rights reserved.
//

import UIKit



extension ViewController2 {
   
    func headerViewCell(_ tableView: UITableView, _ section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerid") as! headerView
        
        if section % 5 == 0  {
            header.nameLabel.text = "Today"
        }else {
            header.nameLabel.text = ""
        }
        
        return header
    }
    
    
}

