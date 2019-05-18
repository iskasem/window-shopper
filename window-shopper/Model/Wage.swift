//
//  Wage.swift
//  window-shopper
//
//  Created by Islam Kasem on 18/05/2019.
//  Copyright © 2019 Islam Kasem. All rights reserved.
//

import Foundation
class Wage{
    class func getHours (forWage wage:Double , andPrice price:Double) -> Int
    {
    return Int(ceil(price/wage))
    }
    
}
