//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by iOS Developer on 19.03.2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .bold()
#if !os(watchOS)
                Text(landmark.park)
                    .font(.caption)
                    .foregroundStyle(.secondary)
#endif
            }
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(Color.yellow)
                
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
    
}
