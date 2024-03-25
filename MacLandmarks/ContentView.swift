//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Алексей Щекотев on 25.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
