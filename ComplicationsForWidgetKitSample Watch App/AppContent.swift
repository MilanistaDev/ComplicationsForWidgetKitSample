//
//  AppContent.swift
//  ComplicationsForWidgetKitSample Watch App
//
//  Created by Takuya Aso on 2023/12/06.
//

import SwiftUI

enum AppContentType: Int, Equatable {
    case main
    case menu
}

struct AppContent: Equatable, Hashable {
    var title: String
    var imageName: String
    var type: AppContentType
    var primaryColor: Color
    var secondaryColor: Color
}

let topContents: [AppContent] = [
    AppContent(
        title: "Main",
        imageName: "snowflake.circle",
        type: .main,
        primaryColor: .cyan,
        secondaryColor: .blue.opacity(0.7)
    ),
    AppContent(
        title: "Menu",
        imageName: "info.circle",
        type: .menu,
        primaryColor: .white,
        secondaryColor: .cyan
    )
]
