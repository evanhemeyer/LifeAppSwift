//
//  LifeAppiOSApp.swift
//  LifeAppiOS
//
//  Created by Evan Hemeyer on 10/30/22.
//

import SwiftUI

@main
struct LifeAppiOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
