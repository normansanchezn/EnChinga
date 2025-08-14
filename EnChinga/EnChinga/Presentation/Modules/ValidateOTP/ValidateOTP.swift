//
//  ValidateOTP.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//

import SwiftUI

public struct ValidateOTP: View {
    
    @Environment(Router.self) var router
    
    @State private var otpScreenTitle: LocalizedStringKey = "validate_otp_title_screen"
    @State private var otpScreenSubtitle: LocalizedStringKey = "validate_otp_screen_subtitle"
    @State private var emailTextModel: TextModel = TextModel(text: "email_dummy", color: Color.black, isBold: true)
    @State private var otpNoHaveBeenRecived: LocalizedStringKey = "if_you_dont_have_otp_text"
    @State private var validateOTPButton: ButtonModel? = ButtonModel(textButton: "validate_otp_button_text")

    
    public var body: some View {
        ScrollView {
            TitleText(text: otpScreenTitle)
            SubtitleHeader(subtitle: $otpScreenSubtitle)
            HStack {
                SimpleText(textModel: $emailTextModel)
            }.padding()
            OTPView()
            SubtitleText(text: otpNoHaveBeenRecived)
                .padding()
            PrimaryButton(buttonModel: $validateOTPButton)
        }.onAppear() {
            validateOTPButton?.onButtonClicked = {
                self.validateOTP()
            }
        }
    }
    
    private func validateOTP() {
        router.navigateToCongratsScreen()
    }
}
