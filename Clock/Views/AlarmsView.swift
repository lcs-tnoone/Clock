//
//  AlarmsView.swift
//  Clock
//
//  Created by Thomas Noone on 2024-12-06.
//

import SwiftUI

struct AlarmsView: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    //Top text
                    Image(systemName: "bed.double.fill")
                        .padding(.top, 15) // Move the image down slightly
                        .padding(.leading, 10)
                    Text("Sleep | Wake up")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 24.0, weight: .bold, design: .default))
                        .padding(.top, 15) // Move the text down slightly


                }
                HStack{
                    
                }
                Spacer()
                ExtractedView(time: "9:25", amOrPm: "AM", togglebutton: true)
                Spacer()
                
                
                Text("Alarms")
                    .navigationTitle("Alarms")
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
            .padding(3) // Add padding for the entire content
        }
        
    }
}



#Preview {
    LandingView()
}

struct ExtractedView: View {
    //MARK: Stored Properties
    let time: String
    let amOrPm: String
    let togglebutton: Bool
    
    var body: some View {
        HStack{
            Text(time)
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text(amOrPm)
                .font(.system(.largeTitle, design: .default, weight: .thin))
            Spacer()
            Toggle("", isOn: Binding(get: { togglebutton }, set: { newValue in}))
        }
        Text("Alarm")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, -50)
    }
}
