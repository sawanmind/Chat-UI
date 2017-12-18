//
//  ViewController2.swift
//  dynamic Collection Cell
//
//  Created by iOS Developer on 12/18/17.
//  Copyright © 2017 sawanmind. All rights reserved.
//

import UIKit

class ViewController2: UITableViewController {

    
    let randomTexts = ["Aenean dapibus urna a ullamcorper malesuada. Ut tempor.",
                       "ok.",
                       "?.",
                       "I am here?.",
                       "Sed venenatis ligula massa, a vulputate ipsum fringilla eget. Ut justo erat, facilisis id rhoncus cursus, fringilla at.",
                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum lobortis nibh metus, elementum tempus libero ornare vitae. Etiam sed leo pretium, consectetur turpis non, dapibus purus. Suspendisse potenti. Ut ut eros nunc. Cras nulla justo, porttitor non sapien at, iaculis.",
                       "Maecenas pellentesque sed magna in congue. Sed non lacus in mi posuere scelerisque. Aenean.",
                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eget ex a velit tincidunt sodales. Donec elementum nisi at enim tempus, et rutrum erat semper. Phasellus ultricies est nec finibus.","Aenean dapibus urna a ullamcorper malesuada. Ut tempor.",
                       "ok.",
                       "?.",
                       "I am here?.",
                       "Sed venenatis ligula massa, a vulputate ipsum fringilla eget. Ut justo erat, facilisis id rhoncus cursus, fringilla at.",
                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum lobortis nibh metus, elementum tempus libero ornare vitae. Etiam sed leo pretium, consectetur turpis non, dapibus purus. Suspendisse potenti. Ut ut eros nunc. Cras nulla justo, porttitor non sapien at, iaculis.",
                       "Maecenas pellentesque sed magna in congue. Sed non lacus in mi posuere scelerisque. Aenean.",
                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eget ex a velit tincidunt sodales. Donec elementum nisi at enim tempus, et rutrum erat semper. Phasellus ultricies est nec finibus.","Aenean dapibus urna a ullamcorper malesuada. Ut tempor.",
                       "ok.",
                       "?.",
                       "I am here?.",
                       "Sed venenatis ligula massa, a vulputate ipsum fringilla eget. Ut justo erat, facilisis id rhoncus cursus, fringilla at.",
                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum lobortis nibh metus, elementum tempus libero ornare vitae. Etiam sed leo pretium, consectetur turpis non, dapibus purus. Suspendisse potenti. Ut ut eros nunc. Cras nulla justo, porttitor non sapien at, iaculis.",
                       "Maecenas pellentesque sed magna in congue. Sed non lacus in mi posuere scelerisque. Aenean.",
                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eget ex a velit tincidunt sodales. Donec elementum nisi at enim tempus, et rutrum erat semper. Phasellus ultricies est nec finibus."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       
        tableView.register(BaseCell2.self, forCellReuseIdentifier: "reuseIdentifier")
        tableView.register(headerView.self, forHeaderFooterViewReuseIdentifier: "headerid")
        tableView.estimatedRowHeight = 40
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorStyle = .none
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return randomTexts.count
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return 1
    }

    
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellForRow_TextCell(tableView, indexPath)
    }

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        willDisplay_TextCell(tableView, indexPath)
        
        
    }
    
    override func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath){
        didEndDisplay_TextCell(tableView, indexPath)
        
    
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section % 5 == 0  {
           return 30
        }else {
           return 0
        }
    }
 
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerid") as! headerView
      
          if section % 5 == 0  {
            header.nameLabel.text = "Today"
          }else {
            header.nameLabel.text = ""
        }
      
        return header
    }
    
    
}

class headerView: UITableViewHeaderFooterView {
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupViews()
        contentView.backgroundColor = UIColor.white
    }
    
    
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
 
    
  fileprivate  func setupViews() {
      
       
        contentView.addSubview(nameLabel)
        nameLabel.addCenterXConstraint(toView: contentView.layoutMarginsGuide)
        nameLabel.addTopConstraint(toView: contentView.layoutMarginsGuide)

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




class BaseCell2: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    fileprivate func setupViews(){
        layoutIfNeeded()
        selectionStyle = .none
        contentView.addSubview(messagelbl)
        contentView.addSubview(profileImage)
        profileImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 7).isActive = true
        profileImage.addTopConstraint(toView: contentView.layoutMarginsGuide).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
      
    }
    
    lazy var messagelbl: SMLabel = {
        let textView = SMLabel()
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.adjustsFontSizeToFitWidth = true
        textView.sizeToFit()
        textView.textColor = UIColor.black
        textView.textAlignment = .left
        textView.backgroundColor = UIColor(white: 0.95, alpha: 1)
        textView.numberOfLines = 0
        textView.lineBreakMode = .byTruncatingTail
        textView.preferredMaxLayoutWidth = UIScreen.main.bounds.width / 2
        textView.isUserInteractionEnabled = true
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.layer.cornerRadius = 5
        textView.layer.masksToBounds = true
        return textView
    }()
    
     var profileImage: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 15
        view.image = UIImage(named:"profile")
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    

}







