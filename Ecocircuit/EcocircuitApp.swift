//
//  EcocircuitApp.swift
//  Ecocircuit
//
//  Created by Fahd Robbana on 6/11/2023.
//

import SwiftUI

@main
struct EcocircuitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
