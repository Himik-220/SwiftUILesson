//
//  FeatureCard.swift
//  SwiftUILesson
//
//  Created by Leonid Shchipkov on 23.03.2022.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay {
                TextOvelay(landmark: landmark)
            }
    }
}

struct TextOvelay: View {
    var landmark: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(Gradient(colors: [.black.opacity(0.0), .black.opacity(0)]),
                        startPoint: .bottom,
                        endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData().features[0])
    }
}
