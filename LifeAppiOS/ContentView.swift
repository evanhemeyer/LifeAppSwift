//
//  ContentView.swift
//  LifeAppiOS
//
//  Created by Evan Hemeyer on 10/30/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        AppTabNavigation()
    }
}

enum Tabs {
    case Dashboard;
    case Budgets;
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
