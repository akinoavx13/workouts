//
//  ControlsScene.swift
//  Workouts WatchKit Extension
//
//  Created by Maxime Maheo on 21/03/2022.
//

import SwiftUI

struct ControlsScene: View {
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            VStack {
                Button {
                } label: { Image(systemName: "xmark") }
                .tint(.red)
                .font(.title2)
                
                Text("End")
            }
            
            VStack {
                Button {
                } label: { Image(systemName: "pause") }
                .tint(.yellow)
                .font(.title2)
                
                Text("Pause")
            }
        }
    }
}

#if DEBUG

struct ControlsScene_Previews: PreviewProvider {
    static var previews: some View {
        ControlsScene()
    }
}

#endif
