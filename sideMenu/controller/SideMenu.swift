//
//  ViewController.swift
//  sideMenu
//

//

import UIKit
import Combine
class SideMenu: UIViewController {
    @IBOutlet weak var topView: UIView!
    
    var cancellable:AnyCancellable?
    
     let topHeader : TopHeaderView = {
        if let th = Bundle.main.loadNibNamed("TopHeaderView", owner: self, options: nil)?.first as? TopHeaderView {
            th.lblTitle.text = "Second VC"
            th.btnMenu.isHidden = true
            return th
        }
        return TopHeaderView()
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupHeader()
    }
    
    private func setupHeader(){
        self.topView.addSubview(topHeader)
        
        cancellable = topHeader.$backTapped.sink(receiveValue: { (isTapped) in
            print(isTapped)
            if isTapped {
                self.navigationController?.popViewController(animated: true)
            }
        })
    }
}


