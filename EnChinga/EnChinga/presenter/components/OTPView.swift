//
//  OTPView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//

import SwiftUI

struct OTPView: View {
    @State private var otp: [String] = Array(repeating: "", count: 4)
    @FocusState private var focusedIndex: Int?
    
    var body: some View {
        HStack(spacing: 16) {
            ForEach(0..<4, id: \.self) { index in
                TextField("", text: $otp[index])
                    .frame(width: 50, height: 50)
                    .multilineTextAlignment(.center)
                    .keyboardType(.numberPad)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(focusedIndex == index ? Color.blue : Color.gray, lineWidth: 2)
                    )
                    .focused($focusedIndex, equals: index)
                    .onChange(of: otp[index]) { newValue in
                        if newValue.count > 1 {
                            otp[index] = String(newValue.prefix(1))
                        }
                        if !newValue.isEmpty && index < 3 {
                            focusedIndex = index + 1
                        }
                    }
            }
        }
        .onAppear {
            focusedIndex = 0 // empieza en el primer campo
        }
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
    }
}
