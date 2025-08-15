//
//  EnChingaApp.swift
//  EnChinga
//
//  Created by Norman Sanchez on 06/08/25.
//

import SwiftUI

@main
struct EnChingaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView().withRouter()
        }
    }
}
