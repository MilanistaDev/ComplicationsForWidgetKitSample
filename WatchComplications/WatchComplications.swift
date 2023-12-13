//
//  WatchComplications.swift
//  WatchComplications
//
//  Created by Takuya Aso on 2023/12/08.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        let entries: [SimpleEntry] = [SimpleEntry(date: Date())]
        // No need update timeline
        let timeline = Timeline(entries: entries, policy: .never)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}

struct WatchComplicationsEntryView : View {
    @Environment(\.widgetRenderingMode) var renderingMode
    var entry: Provider.Entry

    var body: some View {
        if renderingMode == .fullColor {
            Image("WatchComplicationIcon")
                .resizable()
                .scaledToFit()
        } else {
            Image("WatchComplicationIcon_accented")
                .resizable()
                .scaledToFit()
                .widgetAccentable()
        }
    }
}

@main
struct WatchComplications: Widget {
    let kind: String = "WatchComplications"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(watchOS 10.0, *) {
                WatchComplicationsEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                WatchComplicationsEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("Complication sample")
        .description("This is an example widget.")
        .supportedFamilies([.accessoryCircular]) // ひとつのみ
    }
}

#Preview(as: .accessoryRectangular) {
    WatchComplications()
} timeline: {
    SimpleEntry(date: .now)
}
