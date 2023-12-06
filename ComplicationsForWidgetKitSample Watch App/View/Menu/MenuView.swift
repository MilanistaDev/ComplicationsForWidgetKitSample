//
//  MenuView.swift
//  ComplicationsForWidgetKitSample Watch App
//
//  Created by Takuya Aso on 2023/12/06.
//

import SwiftUI

struct MenuView: View {
    
    private let colorList: [Color] = [.orange, .red, .green, .purple, .mint]
    
    var body: some View {
        TabView {
            ForEach(0..<5) { index in
                Text("Menu \(index)")
                    .navigationTitle("Menu \(index)")
                    .containerBackground(colorList[index].opacity(0.8).gradient, for: .navigation)
            }
        }
        .tabViewStyle(.verticalPage)
    }
}

#Preview {
    MenuView()
}
