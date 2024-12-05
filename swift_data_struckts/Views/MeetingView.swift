//
//  ContentView.swift
//  swift_data_struckts
//
//  Created by ericFlutter on 29.11.2024.
//

import SwiftUI


struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 20)
            HStack{
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle().strokeBorder(lineWidth: 24)
            HStack {
                Text("Speekers 1 of 3")
                Spacer()
                Button(action: {
                }) {Image(systemName: "forward.fill")}
                    .accessibilityLabel("Next speakers")
            }
        }.padding()
    }
}

#Preview {
    MeetingView()
}

func sleeper(second time: Int) {
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(time), execute: {
        print("HEllO")
    })
}
