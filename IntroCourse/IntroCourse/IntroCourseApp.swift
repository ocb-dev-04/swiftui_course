//
//  IntroCourseApp.swift
//  IntroCourse
//
//  Created by Oscar Chavez on 8/10/21.
//

import SwiftUI

@main
struct LandMarkAp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
