//
//  ElapsedTimeView.swift
//  Workouts WatchKit Extension
//
//  Created by Maxime Maheo on 21/03/2022.
//

import SwiftUI

struct ElapsedTimeView: View {
    
    // MARK: - Properties
    
    @State private var timeFormatter = ElapsedTimeFormatter()
    
    var elapsedTime: TimeInterval = 0
    var showSubseconds = true
    
    // MARK: - Body
    
    var body: some View {
        Text(NSNumber(value: elapsedTime),
             formatter: timeFormatter)
            .fontWeight(.semibold)
            .onChange(of: showSubseconds) {
                timeFormatter.showSubseconds = $0
            }
    }
}

private class ElapsedTimeFormatter: Formatter {

    // MARK: - Properties
    
    let componentsFormatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.zeroFormattingBehavior = .pad
        return formatter
    }()
    var showSubseconds = true
    
    // MARK: - Methods
    
    override func string(for value: Any?) -> String? {
        guard let time = value as? TimeInterval,
              let formatterString = componentsFormatter.string(from: time)
        else { return nil }
        
        if showSubseconds {
            let hundreths = Int((time.truncatingRemainder(dividingBy: 1)) * 100)
            let decimalSeparator = Locale.current.decimalSeparator ?? "."
            return String(format: "%@%@%0.2d", formatterString, decimalSeparator, hundreths)
        }
        
        return formatterString
    }
    
}

#if DEBUG

struct ElapsedTimeView_Previews: PreviewProvider {
    static var previews: some View {
        ElapsedTimeView()
    }
}

#endif
