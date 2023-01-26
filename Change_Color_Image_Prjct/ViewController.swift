//
//  ViewController.swift
//  Change_Color_Image_Prjct
//
//  Created by Mariya Babenko on 26.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchOnOff: UISwitch!
    
    
    let userDefaults = UserDefaults.standard
    let ON_OFF_KEY = "onOffKey"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       chakeSwitchState()
        
    }
    
    func chakeSwitchState () {
        if userDefaults.bool(forKey: ON_OFF_KEY) {
            switchOnOff.setOn(true, animated: false)
            viewBg.backgroundColor = .black
            myImg.image = UIImage(named: "Smile2")
        }
        else {
            switchOnOff.setOn(false, animated: true)
            viewBg.backgroundColor = UIColor (named: "MedovnikColor")
            myImg.image = UIImage(named: "Smile1")
        }
    }

    @IBOutlet weak var viewBg: UIView!
    
    @IBOutlet weak var myImg: UIImageView!
    
    @IBAction func switchMy(_ sender: Any) {
        
        if (switchOnOff.isOn) {
        
            userDefaults.set(true, forKey: ON_OFF_KEY)
            viewBg.backgroundColor = .black
            myImg.image = UIImage(named: "Smile2")
        }
        else {
        
            userDefaults.set(false, forKey: ON_OFF_KEY)
            viewBg.backgroundColor = UIColor (named: "MedovnikColor")
            myImg.image = UIImage(named: "Smile1")
        }
    }
    
}

