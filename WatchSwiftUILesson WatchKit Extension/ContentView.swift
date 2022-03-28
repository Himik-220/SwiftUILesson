//
//  ContentView.swift
//  WatchSwiftUILesson WatchKit Extension
//
//  Created by Leonid Shchipkov on 23.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
