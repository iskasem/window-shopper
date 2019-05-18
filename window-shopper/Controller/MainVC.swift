//
//  ViewController.swift
//  window-shopper
//
//  Created by Islam Kasem on 18/05/2019.
//  Copyright © 2019 Islam Kasem. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let clcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        clcBtn.backgroundColor = #colorLiteral(red: 0.9803373218, green: 0.5653814673, blue: 0.007719835732, alpha: 1)
        clcBtn.setTitle("Calculate", for: .normal)
        clcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        clcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
      wageTxt.inputAccessoryView = clcBtn
     priceTxt.inputAccessoryView = clcBtn
       
    }
    
    @objc func calculate(){
        print ("hey we are here")
    }


}

