//
//  A252TheSwiftUIApp.swift
//  A252TheSwiftUI
//
//  Created by 申潤五 on 2025/4/6.
//

import SwiftUI

@main
struct A252TheSwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .active:
                print("APP 啟動了")
            case .inactive:
                print("APP 休眠了")
            case .background:
                print("APP 進入背景了")
            @unknown default:
                print("APP ...進入了一個不明狀態")
            }
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("log-didFinishLaunching")
        return true
    }
}
