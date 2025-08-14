//
//  DeliveryStatusType.swift
//  EnChinga
//
//  Created by Norman Sanchez on 14/08/25.
//

import SwiftUICore

enum DeliveryStatusType: String {
    case delivered
    case pending
    case cancelled
    case failed
    
    var cardColor: Color {
        switch self {
            case .delivered:
                return Color("DeliveredColor")
            case .pending:
                return Color("PendingColor")
            case .cancelled:
                return Color("CancelColor")
            case .failed:
            return Color("FailedColor")
        }
    }
    
    var titleCard: LocalizedStringKey {
        switch self {
            case .delivered:
                return "delivered_status_title"
            case .pending:
                return "pending_status_title"
            case .cancelled:
                return "canceled_status_title"
            case .failed:
                return "failled_status_title"
        }
    }
    
    var subtitleCard: LocalizedStringKey {
        switch self {
            case .delivered:
                return "delivered_status_subtitle"
            case .pending:
                return "pending_status_subtitle"
            case .cancelled:
                return "canceled_status_subtitle"
            case .failed:
                return "failled_status_subtitle"
        }
    }
    
    var extraInfoCard: LocalizedStringKey? {
        switch self {
            case .delivered:
                return "delivered_status_extra_info"
            case .pending:
                return "pending_status_extra_info"
            case .cancelled:
                return "canceled_status_extra_info"
            case .failed:
                return "failled_status_extra_info"
        }
    }
}
