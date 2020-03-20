//
//  String to Int Implementation in Swift
//  DS & Algo
//
//  Created by Fayaz on 3/20/20.
//  Copyright © 2020 String to Int. All rights reserved.
//
//Classic Interview Questions for beginners

import Foundation


var stringValue = "0123456789"

let valueHasMap = [
    "0" as Character : 0,
    "1": 1,
    "2": 2,
    "3": 3,
    "4": 4,
    "5": 5,
    "6": 6,
    "7": 7,
    "8": 8,
    "9": 9,
]

func convertStringtoInt(string:String) -> Int? {
    var numValue = 0
    for (i,c) in string.enumerated() {
        let exponent = string.count - i - 1
        if let value = valueHasMap[c] {
            numValue += NSDecimalNumber(decimal: Decimal(value) * pow(10, exponent)).intValue
        }else{
            return nil
        }
    }
    return numValue
}

convertStringtoInt(string: stringValue)
