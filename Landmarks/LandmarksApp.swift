//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by macgza on 11/08/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        let mainWindow = WindowGroup {
            ContentView().environmentObject(modelData)
        }
        
        #if os(macOS)
        mainWindow
            .commands {
                LandmarkCommand()
            }
        #else
        mainWindow
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
