//
//  AlarmsSubView.swift
//  Clock
//
//  Created by Thomas Noone on 2024-12-07.
//


import SwiftUI

struct AlarmsSubView: View {
    //MARK: Stored Properties
    let time: String
    let amOrPm: String
    let togglebutton: Bool
    
    var body: some View {
        VStack{
            HStack{
                Text(time)
                    .font(.system(size: 64.0, weight: .thin, design: .default))
                Text(amOrPm)
                    .font(.system(.largeTitle, design: .default, weight: .thin))
                Spacer()
                Toggle("", isOn: Binding.constant(togglebutton))
            }
            Text("Alarm")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, -50)
        }
        .padding(.vertical, -10) // Adjust the vertical spacing between ExtractedViews
    }
}