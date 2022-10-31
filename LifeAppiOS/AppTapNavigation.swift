//
//  Tabs.swift
//  LifeAppiOS
//
//  Created by Evan Hemeyer on 10/30/22.
//

import SwiftUI

struct AppTabNavigation: View {
    enum Tab {
        case dashboard
        case budgets
        case account
    }
    @State private var selection: Tab = .dashboard
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                Text("Hello")
            }
            .tabItem{
                let menuText = Text("Dashboard")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "house")
                }
            }.tag(Tab.dashboard)
            NavigationView {
                Text("Budget")
            }
            .tabItem {
                    let menuText = Text("Budget")
                    Label {
                        menuText
                    } icon: {
                        Image(systemName: "dollarsign")
                    }
                }.tag(Tab.budgets)
            NavigationView {
                Text("Account")
            }
            .tabItem {
                    let menuText = Text("Acciybt")
                    Label {
                        menuText
                    } icon: {
                        Image(systemName: "person.crop.circle")
                    }
                }.tag(Tab.account)
        }
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
