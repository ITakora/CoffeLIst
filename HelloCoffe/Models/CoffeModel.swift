//
//  Coffe.swift
//  HelloCoffe
//
//  Created by Aris on 02/10/24.
//

import Foundation

@MainActor
class CoffeModel: ObservableObject {
    
    let webservice: Webservice
    @Published private(set) var orders: [Order] = []
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
    
    func populateOrders() async throws {
        orders = try await webservice.getOrders()
    }
    
}
