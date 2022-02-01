//
//  HomeVC.swift
//  sideMenu
//

//

import UIKit
import Combine

class HomeVC: UIViewController {

    @IBOutlet weak var topView: UIView!
    
    var cancellable:AnyCancellable?
   
    let topHeader : TopHeaderView = {
        if let th = Bundle.main.loadNibNamed("TopHeaderView", owner: self, options: nil)?.first as? TopHeaderView {
            th.lblTitle.text = "Home VC"
            th.btnBack.isHidden = true
            return th
        }
        return TopHeaderView()
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeader()
    }
    
    private func setupHeader(){
        self.topView.addSubview(topHeader)
        
        cancellable = topHeader.$menuTapped.sink(receiveValue: { (isTapped) in
            print(isTapped)
            if isTapped {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "SideMenu") as! SideMenu
                self.navigationController?.pushViewController(vc, animated: true)
            }
        })
    }
}
