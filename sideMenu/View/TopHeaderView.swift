//
//  ToHeaderView.swift
//  sideMenu
//

//

import UIKit
import Combine

class TopHeaderView: UIView {

    @IBOutlet weak var btnNotification: UIButton!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIButton!
    
    @Published var menuTapped:Bool = false
    @Published var backTapped:Bool = false
    
    
    @IBAction func menuTapped(_ sender: Any) {
        menuTapped = true
    }
    
    @IBAction func backTapped(_ sender: Any) {
        backTapped = true
    }
    
}
