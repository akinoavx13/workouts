//
//  SessionScene.swift
//  Workouts WatchKit Extension
//
//  Created by Maxime Maheo on 21/03/2022.
//

import SwiftUI
import WatchKit

struct SessionScene: View {
    
    enum Tab {
        case controls,
             metrics,
             nowPlaying
    }
    
    // MARK: - Properties
    
    @State private var selection: Tab = .metrics
    
    // MARK: - Body
    
    var body: some View {
        TabView(selection: $selection) {
            ControlsScene().tag(Tab.controls)
            MetricsScene().tag(Tab.metrics)
            NowPlayingView().tag(Tab.nowPlaying)
        }
    }
}

#if DEBUG

struct SessionScene_Previews: PreviewProvider {
    static var previews: some View {
        SessionScene()
    }
}

#endif
