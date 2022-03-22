//
//  SummaryScene.swift
//  Workouts WatchKit Extension
//
//  Created by Maxime Maheo on 22/03/2022.
//

import SwiftUI

struct SummaryScene: View {
    
    // MARK: - Properties
    
    @State private var durationFormatter: DateComponentsFormatter = {
       let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.zeroFormattingBehavior = .pad
        return formatter
    }()
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                SummaryMetricView(title: "Total time",
                                  value: durationFormatter.string(from: 30 * 60 + 15) ?? "")
                    .accentColor(.yellow)
            }
        }
    }
}

#if DEBUG

struct SummaryScene_Previews: PreviewProvider {
    static var previews: some View {
        SummaryScene()
    }
}

#endif
