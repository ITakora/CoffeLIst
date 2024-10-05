//
//  OrderCellView.swift
//  HelloCoffe
//
//  Created by Aris on 05/10/24.
//

import SwiftUI

struct OrderCellView: View {
    
    let order: Order
    
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(order.name).accessibilityIdentifier("orderNameText")
                    .bold()
                Text("\(order.coffeeName) (\(order.size.rawValue))").accessibilityIdentifier("coffeNameAndSizeText")
                    .opacity(0.7)
            }
            
            Spacer()
            
            Text(order.total as NSNumber, formatter: NumberFormatter.currency)
                .accessibilityIdentifier("coffePriceText")
            
        }
    }
}

