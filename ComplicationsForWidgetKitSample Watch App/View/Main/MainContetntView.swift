//
//  MainContetntView.swift
//  ComplicationsForWidgetKitSample Watch App
//
//  Created by Takuya Aso on 2023/12/06.
//

import SwiftUI

struct MainContetntView: View {
    var body: some View {
        Text("Main")
            .navigationTitle("Main")
            .containerBackground(.pink.opacity(0.8).gradient, for: .navigation)
    }
}

#Preview {
    MainContetntView()
}
