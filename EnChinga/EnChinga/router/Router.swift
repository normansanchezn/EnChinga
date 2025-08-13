//
//  Router.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//
import Foundation
import SwiftUI
import Observation

@Observable
class Router {
    var path = NavigationPath()
    
    func navigateToSignIn() {
        path.append(Route.signInView)
    }
    func navigateToSingUp() {
        path.append(Route.signUpView)
    }
    func navigateToValidateOTPScreen() {
        path.append(Route.validateOTPVIew)
    }
    func navigateToCongratsScreen() {
        path.append(Route.congratsView)
    }
    func navigateToHome() {
        path.append(Route.homeView)
    }
    func navigateToForgotPassword() {
        path.append(Route.forgotPasswordView)
    }
}
