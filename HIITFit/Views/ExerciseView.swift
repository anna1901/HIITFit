//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Ania on 27/12/2024.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    @Binding var selectedTab: Int
    @State private var rating = 0
    
    let index: Int
    
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    
    let interval: TimeInterval = 30
    
    var url: URL? {
        let url = Bundle.main.url(
            forResource: exercise.videoName,
            withExtension: "mp4")
        print(url!)
        return url
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: exercise.exerciseName)
                    .padding(.bottom)
                VideoPlayerView(videoName: exercise.videoName)
                    .frame(height: geometry.size.height * 0.45)
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: geometry.size.height * 0.07))
                HStack(spacing: 150) {
                    startButton
                    doneButton
                }
                .font(.title3)
                .padding()
                RatingView(rating: $rating)
                    .padding()
                Spacer()
                Button("History") {}
                    .padding(.bottom)
            }
        }
        
    }
    
    var startButton: some View {
        Button("Start Exercise") { }
    }
    
    var doneButton: some View {
        Button("Done") {
            selectedTab = lastExercise ? 9 : selectedTab + 1
        }
    }
    
}



#Preview {
    ExerciseView(selectedTab: .constant(1), index: 0)
}


