//
//  ForgotPasswordView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @State var buttonModel: ButtonModel? = ButtonModel(textButton: "continue_text")
    @State private var selectedOption: String = "email"
    @State var emailTitleCard: LocalizedStringKey = "forgot_your_password_text"
    @State var phoneTitleCard: LocalizedStringKey = "forgot_password_subtitle_text"
    
    
    var body: some View {
        VStack {
            TitleText(text: $emailTitleCard)
            SubtitleText(text:  $phoneTitleCard)
            OptionButton(
                iconName: "envelope.fill",
                title: "email_text",
                subtitle: "subtitle_option_email_text",
                isSelected: selectedOption == "email",
                action: {
                    selectedOption = "email"
                }
            ).padding(.top, 16)
                .padding(.horizontal, 16)
            OptionButton(
                iconName: "phone.fill",
                title: "phone_text",
                subtitle: "subtitle_title_option_phone",
                isSelected: selectedOption == "phone",
                action: {
                    selectedOption = "phone"
                }
            ).padding(.top, 8)
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
            PrimaryButton(buttonModel: $buttonModel)
        }
    }
}
