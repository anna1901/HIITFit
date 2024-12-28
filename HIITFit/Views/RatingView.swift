//
//  RatingView.swift
//  HIITFit
//
//  Created by Ania on 28/12/2024.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    let maximumRating = 5
    
    let onColor = Color.red
    let offColor = Color.gray
    
    var body: some View {
        HStack {
            ForEach(1 ..< maximumRating + 1, id: \.self) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundStyle(index <= rating ? onColor : offColor)
                    .onTapGesture {
                        rating = index
                        print(rating)
                    }
            }
        }
        .font(.largeTitle)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RatingView(rating: .constant(3))
}
