//
//  TextCell.swift
//  dynamic Collection Cell
//
//  Created by iOS Developer on 12/18/17.
//  Copyright © 2017 sawanmind. All rights reserved.
//

import UIKit

extension ViewController2 {
    
    
     func cellForRow_TextCell(_ tableView: UITableView, _ indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! BaseCell2
        
        let margin = cell.contentView.layoutMarginsGuide
        
        if indexPath.section % 2 == 0 {
            
            cell.profileImage.isHidden = true
            
            cell.messagelbl.backgroundColor  = UIView().tintColor
            cell.messagelbl.textColor  = UIColor.white
            cell.messagelbl.addTrailingConstraint(toView: margin)
            cell.messagelbl.addTopConstraint(toView: margin)
            cell.messagelbl.addBottomConstraint(toView: margin)
            
            cell.contentView.layoutIfNeeded()
            cell.layoutIfNeeded()
            
            
            
            
            
            let titleAttributes = [NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.body), NSAttributedStringKey.foregroundColor: UIColor.white]
            
            let titleAttributes2 = [NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1),
                                    NSAttributedStringKey.foregroundColor: UIColor(white:0.90, alpha:1)]
            
            
            let image1Attachment = NSTextAttachment()
            image1Attachment.image = UIImage(named: "read")?.withRenderingMode(.alwaysTemplate)
            
            
            
            let image1String = NSAttributedString(attachment: image1Attachment)
            
            let partOne = NSMutableAttributedString(string: randomTexts[indexPath.section], attributes: titleAttributes)
            let partTwo = NSMutableAttributedString(string: "9:09 PM", attributes: titleAttributes2)
            let combination = NSMutableAttributedString()
            
            combination.append(partOne)
            combination.append(NSAttributedString(string:" "))
            combination.append(partTwo)
            combination.append(NSAttributedString(string:" "))
            combination.append(image1String)
            cell.messagelbl.attributedText = combination
            
            
        } else {
            
            cell.profileImage.isHidden = false
            cell.messagelbl.leadingAnchor.constraint(equalTo: cell.profileImage.trailingAnchor, constant: 7).isActive = true
            cell.messagelbl.addTopConstraint(toView: margin)
            cell.messagelbl.addBottomConstraint(toView: margin)
            
            
            
            cell.contentView.layoutIfNeeded()
            cell.layoutIfNeeded()
            
            let titleAttributes = [NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.body), NSAttributedStringKey.foregroundColor: UIColor.black]
            
            let titleAttributes2 = [NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1), NSAttributedStringKey.foregroundColor: UIColor.gray]
            
            
            
            let partOne = NSMutableAttributedString(string: randomTexts[indexPath.section], attributes: titleAttributes)
            let partTwo = NSMutableAttributedString(string: "9:09 PM", attributes: titleAttributes2)
            
            let combination = NSMutableAttributedString()
            
            combination.append(partOne)
            combination.append(NSAttributedString(string:" "))
            combination.append(partTwo)
            combination.append(NSAttributedString(string:" "))
            cell.messagelbl.attributedText = combination
        }
        
        
        
        return cell
    }
    
}




extension ViewController2 {
    
    func willDisplay_TextCell(_ tableView: UITableView, _ indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! BaseCell2
        
        let margin = cell.contentView.layoutMarginsGuide
        
        if indexPath.section % 2 == 0 {
            
            
            cell.messagelbl.addTrailingConstraint(toView: margin)
            cell.messagelbl.addTopConstraint(toView: margin)
            cell.messagelbl.addBottomConstraint(toView: margin)
            
            cell.contentView.layoutIfNeeded()
            cell.layoutIfNeeded()
            
            
            
            
            
            let titleAttributes = [NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.body), NSAttributedStringKey.foregroundColor: UIColor.black]
            
            let titleAttributes2 = [NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1),
                                    NSAttributedStringKey.foregroundColor: UIColor.gray]
            
            
            let image1Attachment = NSTextAttachment()
            image1Attachment.image = UIImage(named: "read")?.withRenderingMode(.alwaysTemplate)
            
            
            
            let image1String = NSAttributedString(attachment: image1Attachment)
            
            let partOne = NSMutableAttributedString(string: "\(randomTexts[indexPath.section])", attributes: titleAttributes)
            let partTwo = NSMutableAttributedString(string: "9:09 PM", attributes: titleAttributes2)
            let combination = NSMutableAttributedString()
            
            combination.append(partOne)
            combination.append(NSAttributedString(string:" "))
            combination.append(partTwo)
            combination.append(NSAttributedString(string:" "))
            combination.append(image1String)
            cell.messagelbl.attributedText = combination
            
            
        } else {
            
            
            cell.messagelbl.leadingAnchor.constraint(equalTo: cell.profileImage.trailingAnchor, constant: 7).isActive = true
            cell.messagelbl.addTopConstraint(toView: margin)
            cell.messagelbl.addBottomConstraint(toView: margin)
            
            
            
            cell.contentView.layoutIfNeeded()
            cell.layoutIfNeeded()
            
            let titleAttributes = [NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.body), NSAttributedStringKey.foregroundColor: UIColor.black]
            
            let titleAttributes2 = [NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1), NSAttributedStringKey.foregroundColor: UIColor.gray]
            
            
            
            let partOne = NSMutableAttributedString(string: randomTexts[indexPath.section], attributes: titleAttributes)
            let partTwo = NSMutableAttributedString(string: "\t9:09 PM", attributes: titleAttributes2)
            
            let combination = NSMutableAttributedString()
            
            combination.append(partOne)
            combination.append(NSAttributedString(string:" "))
            combination.append(partTwo)
            combination.append(NSAttributedString(string:" "))
            cell.messagelbl.attributedText = combination
        }
    }
    
}


extension ViewController2 {
    
    
    func didEndDisplay_TextCell(_ tableView: UITableView, _ indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! BaseCell2
        let margin = cell.contentView.layoutMarginsGuide
        cell.selectionStyle = .none
        
        if indexPath.section % 2 == 0 {
            
            
            
            
            cell.messagelbl.addTrailingConstraint(toView: margin).isActive = false
            cell.messagelbl.addTopConstraint(toView: margin).isActive = false
            cell.messagelbl.addBottomConstraint(toView: margin).isActive = false
            
            
            cell.contentView.layoutIfNeeded()
            cell.layoutIfNeeded()
            cell.messagelbl.text = randomTexts[indexPath.section]
            
        } else {
            
            
            
            cell.messagelbl.leadingAnchor.constraint(equalTo: cell.profileImage.trailingAnchor, constant: 7).isActive = false
            cell.messagelbl.addTopConstraint(toView: margin).isActive = false
            cell.messagelbl.addBottomConstraint(toView: margin).isActive = false
            
            cell.contentView.layoutIfNeeded()
            cell.layoutIfNeeded()
            cell.messagelbl.text = randomTexts[indexPath.section]
        }
    }
    
    
}


