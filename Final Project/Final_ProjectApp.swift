//
//  Final_ProjectApp.swift
//  Final Project
//
//  Created by Maryam Zoweil on 6/12/23.
//

import SwiftUI

@main
struct Final_ProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(name: .constant(""),lastName: .constant(""), phoneNumber: .constant(""), email: .constant(""), address: .constant(""),  showPersonalInfo: false)
        }
    }
}
