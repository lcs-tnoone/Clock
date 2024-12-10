//
//  StopwatchView.swift
//  Clock
//
//  Created by Thomas Noone on 2024-12-06.
//

import SwiftUI

struct StopwatchView: View {
    var body: some View {
        VStack {
            Text("00:00:00")
                .font(.system(size: 60, weight: .bold, design: .monospaced))
                .padding()

            HStack {
                Text("00")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                Text(":")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                Text("00")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                Text(":")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                Text("00")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
            }
        }
        .navigationTitle("Stopwatch")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button {
                    // Does nothing right now
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}


#Preview {
    LandingView()
}
