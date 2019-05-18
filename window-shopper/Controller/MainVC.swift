//
//  ViewController.swift
//  window-shopper
//
//  Created by Islam Kasem on 18/05/2019.
//  Copyright © 2019 Islam Kasem. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
   
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
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
       resultLbl.isHidden = true
       hoursLbl.isHidden = true
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt) , let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }


    @IBAction func clearCalculatorPressed(_ sender: Any) {
   resultLbl.isHidden = true
   hoursLbl.isHidden = true
wageTxt.text = ""
priceTxt.text = ""
        
        
    }
}

