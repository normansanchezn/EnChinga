//
//  Untitled.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//

// View+Extension.swift
import Foundation
import SwiftUI
struct RouterViewModifier: ViewModifier {
    @State private var router = Router()
    private func routeView(for route: Route) -> some View {
        Group {
            switch route {
            case .setup:
                AccountSetupView()
            case .verify:
                VerificationCodeView()
            case .questionnaire:
                QuestionnaireView()
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


