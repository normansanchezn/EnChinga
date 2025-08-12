//
//  Untitled.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//

import Foundation
import SwiftUI

/// This apps manage routes in the app
struct RouterViewModifier: ViewModifier {
    @State private var router = Router()
    
    private func routeView(for route: Route) -> some View {
        Group {
            switch route {
            case .signUpView:
                SignUpView()
            case .signInView:
                SignInView()
            case .validateOTPVIew:
                ValidateOTP()
            case .congratsView:
                SignInView()
            }
        }
        .environment(router)
    }
    func body(content: Content) -> some View {
        NavigationStack(path: $router.path) {
            content
                .environment(router)
                .navigationDestination(for: Route.self) { route in
                    routeView(for: route)
                }
        }
    }
}


