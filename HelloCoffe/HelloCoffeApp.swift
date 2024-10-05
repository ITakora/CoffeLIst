//
//  HelloCoffeApp.swift
//  HelloCoffe
//
//  Created by Aris on 24/09/24.
//

import SwiftUI

@main
struct HelloCoffeApp: App {
    
    @StateObject private var model: CoffeModel
    
    init() {
        let webservice = Webservice()
        _model = StateObject(wrappedValue: CoffeModel(webservice:  webservice))
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
