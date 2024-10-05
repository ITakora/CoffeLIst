//
//  ContentView.swift
//  HelloCoffe
//
//  Created by Aris on 24/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var model: CoffeModel
    
    
    private func populateOrders () async {
        do {
            try await model.populateOrders()
        }catch {
            print(error)
        }
    }
    
    var body: some View {
        VStack {
            List(model.orders) { order in 
                OrderCellView(order: order)
                
            }
        }.task {
            await populateOrders()
        }   
        
    }
}

#Preview {
    ContentView().environmentObject(CoffeModel(webservice:Webservice()))
}




