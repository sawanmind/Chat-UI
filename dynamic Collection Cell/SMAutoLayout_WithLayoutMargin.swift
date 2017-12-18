//
//  SMAutoLayout.swift
//  dynamic Collection Cell
//
//  Created by iOS Developer on 12/18/17.
//  Copyright © 2017 sawanmind. All rights reserved.
//


import Foundation
import UIKit

extension UIView {

    @discardableResult
    public func addLeadingConstraint(toView view: UILayoutGuide?, attribute: NSLayoutAttribute = .leading, relation: NSLayoutRelation = .equal, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        
        let constraint = createConstraint(attribute: .leading, toView: view, attribute: attribute, relation: relation, constant: constant)
        addConstraintToSuperview(constraint)
        
        return constraint
    }

    @discardableResult
    public func addTrailingConstraint(toView view: UILayoutGuide?, attribute: NSLayoutAttribute = .trailing, relation: NSLayoutRelation = .equal, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        
        let constraint = createConstraint(attribute: .trailing, toView: view, attribute: attribute, relation: relation, constant: constant)
        addConstraintToSuperview(constraint)
        
        return constraint
    }
    
    
 
    @discardableResult
    public func addLeftConstraint(toView view: UILayoutGuide?, attribute: NSLayoutAttribute = .left, relation: NSLayoutRelation = .equal, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        
        let constraint = createConstraint(attribute: .left, toView: view, attribute: attribute, relation: relation, constant: constant)
        addConstraintToSuperview(constraint)
        
        return constraint
    }
    

    @discardableResult
    public func addRightConstraint(toView view: UILayoutGuide?, attribute: NSLayoutAttribute = .right, relation: NSLayoutRelation = .equal, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        
        let constraint = createConstraint(attribute: .right, toView: view, attribute: attribute, relation: relation, constant: constant)
        addConstraintToSuperview(constraint)
        
        return constraint
    }
    
    

    @discardableResult
    public func addTopConstraint(toView view: UILayoutGuide?, attribute: NSLayoutAttribute = .top, relation: NSLayoutRelation = .equal, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        
        let constraint = createConstraint(attribute: .top, toView: view, attribute: attribute, relation: relation, constant: constant)
        addConstraintToSuperview(constraint)
        
        return constraint
    }
    
    

    @discardableResult
    public func addBottomConstraint(toView view: UILayoutGuide?, attribute: NSLayoutAttribute = .bottom, relation: NSLayoutRelation = .equal, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        
        let constraint = createConstraint(attribute: .bottom, toView: view, attribute: attribute, relation: relation, constant: constant)
        addConstraintToSuperview(constraint)
        
        return constraint
    }
    
    

    @discardableResult
    public func addCenterXConstraint(toView view: UILayoutGuide?, relation: NSLayoutRelation = .equal, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        
        let constraint = createConstraint(attribute: .centerX, toView: view, attribute: .centerX, relation: relation, constant: constant)
        addConstraintToSuperview(constraint)
        
        return constraint
    }
    
    

    @discardableResult
    public func addCenterYConstraint(toView view: UILayoutGuide?, relation: NSLayoutRelation = .equal, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        
        let constraint = createConstraint(attribute: .centerY, toView: view, attribute: .centerY, relation: relation, constant: constant)
        addConstraintToSuperview(constraint)
        
        return constraint
    }
    
    

    @discardableResult
    public func addWidthConstraint(toView view: UILayoutGuide?, relation: NSLayoutRelation = .equal, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        
        let constraint = createConstraint(attribute: .width, toView: view, attribute: .width, relation: relation, constant: constant)
        addConstraintToSuperview(constraint)
        
        return constraint
    }
    
    
   
    @discardableResult
    public func addHeightConstraint(toView view: UILayoutGuide?, relation: NSLayoutRelation = .equal, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        
        let constraint = createConstraint(attribute: .height, toView: view, attribute: .height, relation: relation, constant: constant)
        addConstraintToSuperview(constraint)
        
        return constraint
    }
    
    

    fileprivate func addConstraintToSuperview(_ constraint: NSLayoutConstraint) {
        
        translatesAutoresizingMaskIntoConstraints = false
        superview?.addConstraint(constraint)
    }
    
   
    fileprivate func createConstraint(attribute attr1: NSLayoutAttribute, toView: UILayoutGuide?, attribute attr2: NSLayoutAttribute, relation: NSLayoutRelation, constant: CGFloat) -> NSLayoutConstraint {
        
        let constraint = NSLayoutConstraint(
            item: self,
            attribute: attr1,
            relatedBy: relation,
            toItem: toView,
            attribute: attr2,
            multiplier: 1.0,
            constant: constant)
        
        return constraint
    }
}
  


