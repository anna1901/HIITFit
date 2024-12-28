//
//  SuccessView.swift
//  HIITFit
//
//  Created by Ania on 28/12/2024.
//

import SwiftUI

struct SuccessView: View {
    let message = """
        Good job completing all four exercises!
        Remember tomorrow's another day.
        So eat well and get some rest.
        """
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundStyle(.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(message)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.gray)
            }
            VStack {
                Spacer()
                Button("Continue") {}
                    .padding(.bottom)
            }
        }
    }
}

#Preview {
    SuccessView()
}
