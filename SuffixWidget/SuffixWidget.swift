//
//  SuffixWidget.swift
//  SuffixWidget
//
//  Created by Egor Malyshev on 04.11.2021.
//

import WidgetKit
import SwiftUI

@main
struct SuffixWidget: Widget {
    let kind: String = "SuffixWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: SuffixWidgetTimeline()) { entry in
            SuffixWidgetEntryView(entry: entry)
        }
        .supportedFamilies([.systemMedium])
        .configurationDisplayName("Suffix Widget")
        .description("Widget will show history of suffixes search")
    }
}
