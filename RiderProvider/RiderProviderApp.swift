//
//  RiderProviderApp.swift
//  RiderProvider
//
//  Created by Adarsh Singh on 14/12/24.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}


@main
struct RiderProviderApp: App {
    let persistenceController = PersistenceController.shared
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
//            ContentView()
            LoginScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
