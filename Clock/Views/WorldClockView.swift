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
                CountryTime(time: "3:20", hoursDifference: 12, City: "Hong Kong", amOrPm: "AM")
                //Toronto
                CountryTime(time: "3:20", hoursDifference: 0, City: "Toronto", amOrPm: "PM")
                
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


