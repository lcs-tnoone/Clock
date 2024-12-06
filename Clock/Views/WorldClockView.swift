//
//  WorldClockView.swift
//  Clock
//
//  Created by Thomas Noone on 2024-12-06.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                //HongKong
                CountryTime(time: "3:20", hoursDifference: 12, country: "Hong Kong", AMorPM: "AM")
                //Toronto
                CountryTime(time: "3:20", hoursDifference: 0, country: "Toronto", AMorPM: "PM")
                
                Text("World Clock")
                    .navigationTitle("World Clock")
                    .toolbar {
                        
                        ToolbarItem(placement: .topBarLeading) {
                            
                            Button("Edit") {
                                // Does nothing right now
                            }
                            
                        }
                        
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
        
    }
}


#Preview {
    LandingView()
}

struct CountryTime: View {
    let time: String
    let hoursDifference: Int
    let country: String
    let AMorPM: String
    
    var body: some View {
        HStack{
            //Left side
            VStack{
                Text("Today, +\(hoursDifference)HRS")
                Text(country)
                    .font(.system(.largeTitle, design: .default, weight: .thin))
            }
            Spacer()
            
            //Right Side
            Text(time)
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text(AMorPM)
                .font(.system(.largeTitle, design: .default, weight: .thin))
            
        }
    }
}
