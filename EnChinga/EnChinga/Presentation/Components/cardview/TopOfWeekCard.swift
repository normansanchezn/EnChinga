//
//  TopOfWeekCard.swift
//  EnChinga
//
//  Created by Norman Sanchez on 15/08/25.
//

import SwiftUI

struct TopOfWeekCard: View {
    
    var topOfWeekModel: TopOfWeekModel
    
    var body: some View {
        ZStack {
            Image(topOfWeekModel.imageBackground)
                .resizable()
                .scaledToFit()
                .frame(minWidth: 200, maxWidth: 250)
                .blur(radius: 2)
                .padding(.trailing, -150)
                .rotationEffect(Angle(degrees: 30))
            ZStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(topOfWeekModel.title)
                        .font(.system(size: 35, weight: .bold))
                        .frame(minWidth: 100, maxWidth: 150)
                    LabelText(labelText: "\(topOfWeekModel.restaurantName)")
                    Spacer()
                    HStack {
                        Text("\(topOfWeekModel.price)")
                            .font(.system(size: 16, weight: .bold))
                        Spacer()
                        Button { } label: {
                            Image(systemName: "basket")
                                .padding()
                                .background(Color("PrimaryColor").opacity(0.9))
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                        }
                    }
                    .padding(4)
                    .padding(.leading, 16)
                    .background(Color("PrimaryColor").opacity(0.25))
                    .clipShape(Capsule())
                }
            }
            
        }.padding()
            .frame(width: 200, height: 300)
            .background(topOfWeekModel.backgroundColor.opacity(0.2))
            .cornerRadius(20)
    }
}
