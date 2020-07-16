//
//  AmourApp.swift
//  Amour
//
//  Created by steve on 6/26/20.
//

import SwiftUI
import StreamChatClient
import StreamChatCore
import StreamChat

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        Client.configureShared(.init(apiKey: "b67pax5b2wdq", logOptions: .info))
        let userExtraData = UserExtraData(name: "Muddy salad")
        Client.shared.set(user: User(id: "muddy-salad-3", extraData: userExtraData),
                          token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoibXVkZHktc2FsYWQtMyJ9.O3X4xanIIaAPb80B0pE6AZB9FERwRDVJ140S0JMofHM")
        return true
    }
}

@main
struct AmourApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
