//
//  SummaryMetricView.swift
//  Workouts WatchKit Extension
//
//  Created by Maxime Maheo on 22/03/2022.
//

import SwiftUI

struct SummaryMetricView: View {
    
    // MARK: - Properties
    
    var title: String
    var value: String
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            Text(value)
                .font(.system(.title2, design: .rounded)
                        .lowercaseSmallCaps())
                .foregroundColor(.accentColor)
            Divider()
        }
    }
}

#if DEBUG

struct SummaryMetricView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryMetricView(title: "Title",
                          value: "Value")
    }
}

#endif
