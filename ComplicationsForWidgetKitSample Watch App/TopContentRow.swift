//
//  TopContentRow.swift
//  ComplicationsForWidgetKitSample Watch App
//
//  Created by Takuya Aso on 2023/12/06.
//

import SwiftUI

struct TopContentRow: View {
    let content: AppContent

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12.0) {
                Image(systemName: content.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32.0, height: 32.0)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(content.primaryColor, content.secondaryColor)

                Text(content.title)
                    .font(.headline)
            }

            Spacer()
        }
        .padding(.all, 20.0)
    }
}

#Preview {
    ForEach(topContents, id: \.self) { content in
        TopContentRow(content: content)
    }
}
