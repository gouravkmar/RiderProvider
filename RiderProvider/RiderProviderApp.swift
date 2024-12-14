//
//  RiderProviderApp.swift
//  RiderProvider
//
//  Created by Adarsh Singh on 14/12/24.
//

import SwiftUI

@main
struct RiderProviderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}