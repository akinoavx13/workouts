//
//  StartScene.swift
//  Workouts WatchKit Extension
//
//  Created by Maxime Maheo on 21/03/2022.
//

import SwiftUI
import HealthKit

struct StartScene: View {
    
    // MARK: - Properties
    
    private var workoutsType: [HKWorkoutActivityType] = [.running]
    
    // MARK: - Body
    
    var body: some View {
        List(workoutsType) { workoutType in
            NavigationLink(workoutType.name,
                           destination: SessionScene())
                .padding(EdgeInsets(top: 15,
                                    leading: 5,
                                    bottom: 15,
                                    trailing: 5))
        }
        .listStyle(.carousel)
        .navigationBarTitle("Workouts")
    }
}

#if DEBUG

struct StartScene_Previews: PreviewProvider {
    static var previews: some View {
        StartScene()
    }
}

#endif
