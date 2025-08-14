//
//  DeliveryStatus.swift
//  EnChinga
//
//  Created by Norman Sanchez on 13/08/25.
//

import SwiftUI

struct DeliveryStatusCard: View {
    @Binding var deliveryStatusModel: DeliveryStatusModel?
    
    var body: some View {
        
        Button{
            deliveryStatusModel?.onTap?()
        } label: {
            HStack {
                VStack(alignment: .leading) {
                    Text(deliveryStatusModel?.deliveryStatusType.titleCard ?? "dummy_text")
                        .font(.headline)
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.leading, 16)
                    
                    Text(deliveryStatusModel?.deliveryStatusType.subtitleCard ?? "dummy_text")
                        .font(.caption)
                        .foregroundStyle(.white)
                        .bold()
                        .padding(.leading, 16)
                    
                    Text(deliveryStatusModel?.deliveryStatusType.extraInfoCard ?? "duummy_text")
                        .font(.caption)
                        .foregroundStyle(.white)
                        .padding(.leading, 16)
                }.padding(16)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.white)
                    .padding(.trailing, 32)
            }
            .frame(maxWidth: .infinity, minHeight: 100)
            .background(deliveryStatusModel?.deliveryStatusType.cardColor)
            .cornerRadius(12)
            .shadow(radius: 2)
        }
        .buttonStyle(.plain)
    }
}
