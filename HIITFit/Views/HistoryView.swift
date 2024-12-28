//
//  HistoryView.swift
//  HIITFit
//
//  Created by Ania on 28/12/2024.
//

import SwiftUI

struct HistoryView: View {
    let history = HistoryStore()

    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {}) {
              Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding(.trailing)

            VStack {
                Text("History")
                    .font(.title)
                    .padding()
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section(header: Text(day.date.formatted(as: "MMM d"))) {
                            ForEach(day.exercises, id: \.self) { exercise in
                                Text(exercise)
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HistoryView()
}
