//
//  SwiftUILessonApp.swift
//  WatchSwiftUILesson WatchKit Extension
//
//  Created by Leonid Shchipkov on 23.03.2022.
//

import SwiftUI

@main
struct SwiftUILessonApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
