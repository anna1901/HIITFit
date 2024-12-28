//
//  RatingView.swift
//  MyFirstNot
//
//  Created by Ania on 28/12/2024.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            ForEach(0 ..< 5) { _ in
                Image(systemName: "waveform.path.ecg")
                    .foregroundStyle(.gray)
                    .font(.largeTitle)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RatingView()
}
