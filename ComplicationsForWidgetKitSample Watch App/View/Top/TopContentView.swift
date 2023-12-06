//
//  TopContentView.swift
//  ComplicationsForWidgetKitSample Watch App
//
//  Created by Takuya Aso on 2023/12/06.
//

import SwiftUI

struct TopContentView: View {
    @State private var selectedContent: AppContent?

    var body: some View {
        NavigationSplitView {
            List(selection: $selectedContent) {
                ForEach(topContents, id: \.self) { content in
                    TopContentRow(content: content)
                }
            }
            .listStyle(CarouselListStyle())
            .navigationTitle("Sample App")
            .navigationBarTitleDisplayMode(.large)
            .containerBackground(.cyan.opacity(0.5).gradient, for: .navigation)
        } detail: {
            switch selectedContent?.type {
            case .main:
                MainContetntView()

            case .menu:
                Text("Menu")

            case nil:
                EmptyView()
            }
        }
    }
}

#Preview {
    TopContentView()
}
