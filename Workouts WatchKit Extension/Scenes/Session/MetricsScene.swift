//
//  MetricsScene.swift
//  Workouts WatchKit Extension
//
//  Created by Maxime Maheo on 21/03/2022.
//

import SwiftUI

struct MetricsScene: View {
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading) {
            ElapsedTimeView(elapsedTime: 3 * 60 + 15.24,
                            showSubseconds: true)
                .foregroundColor(.green)
            
            Text(154.formatted(.number.precision(.fractionLength(0))) + " bpm")
            
            Text(Measurement(value: 0, unit: UnitLength.kilometers)
                    .formatted(.measurement(width: .abbreviated,
                                            usage: .road)))
            
            Text(Measurement(value: 0, unit: UnitLength.kilometers)
                    .formatted(.measurement(width: .abbreviated,
                                            usage: .road)))
        }
        .font(.system(.title, design: .rounded)
                .monospacedDigit()
                .lowercaseSmallCaps())
        .frame(maxWidth: .infinity, alignment: .leading)
        .ignoresSafeArea(edges: .bottom)
        .scenePadding()
    }
}

#if DEBUG

struct MetricsScene_Previews: PreviewProvider {
    static var previews: some View {
        MetricsScene()
    }
}

#endif
