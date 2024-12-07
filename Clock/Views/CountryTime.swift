//
//  CountryTime.swift
//  Clock
//
//  Created by Thomas Noone on 2024-12-07.
//


import SwiftUI

struct CountryTime: View {
    let time: String
    let hoursDifference: Int
    let City: String
    let amOrPm: String
    
    var body: some View {
        HStack{
            //Left side
            VStack{
                Text("Today, +\(hoursDifference)HRS")
                Text(City)
                    .font(.system(.largeTitle, design: .default, weight: .thin))
            }
            Spacer()
            
            //Right Side
            Text(time)
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text(amOrPm)
                .font(.system(.largeTitle, design: .default, weight: .thin))
            
        }
    }
}