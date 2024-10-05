//
//  NumberFormatter.swift
//  HelloCoffe
//
//  Created by Aris on 05/10/24.
//

import Foundation


extension NumberFormatter {
    
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
