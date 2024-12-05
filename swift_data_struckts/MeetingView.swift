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
            Circle().strokeBorder(lineWidth: 24)
            HStack {
                Text("Speekers 1 of 3")
            }
            Button(action: {
                
                let countDown = Couting(lenght: 1000)
                var stopWatch = Stopwatch()
                
                stopWatch.start()
                for value in 0..<1000{
                    print(value)
                }
                print(stopWatch.ellapsedTime())
                stopWatch.stop()
                
        
            }) {Image(systemName: "forward.fill")}
        }.padding(16)
    }
}

#Preview {
    MeetingView()
}

struct Couting: Sequence, IteratorProtocol {
    let lenght: Int
    private var count: Int = 0
    
    init(lenght: Int) {
        self.lenght = lenght
    }
    
    mutating func next() -> Int? {
        if count == lenght {
            return nil
        } else {
            defer { count += 1 }
            return count
        }
    }
}

func sleeper(second time: Int) {
     DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(time), execute: {
        print("HEllO")
    })
}

struct Stopwatch {
    private var time: Date?
    
    mutating func start() {
        self.time = Date()
    }
    
    mutating func stop() {
        self.time = nil
    }
    
    func ellapsedTime() -> TimeInterval {
         -(self.time?.timeIntervalSinceNow ?? 0)
    }
    
}

