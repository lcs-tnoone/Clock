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
                        .padding(.top, 25) // Move the image
                        .padding(.leading, 10)
                    Text("Sleep | Wake up")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 24.0, weight: .bold, design: .default))
                        .padding(.top, 25) // Move the text
                    
                    
                }
                Divider().background(Color.gray)
                    .padding(.vertical, -25)

                
                .padding(.vertical, 15)
                HStack{
                    Text("Other")
                        .font(.system(size: 24.0, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)



                    
                }
                Divider().background(Color.gray)
                    .padding(.vertical, -15)

                Spacer()
                AlarmsSubView(time: "9:25", amOrPm: "AM", togglebutton: true)
                Divider().background(Color.gray)
                    .padding(.vertical, -15)
                AlarmsSubView(time: "1:25", amOrPm: "PM", togglebutton: true)
                Divider().background(Color.gray)
                    .padding(.vertical, -15)
                AlarmsSubView(time: "8:25", amOrPm: "PM", togglebutton: false)
                Divider().background(Color.gray)
                    .padding(.vertical, -15)
                AlarmsSubView(time: "9:45", amOrPm: "PM", togglebutton: true)
                Divider().background(Color.gray)
                    .padding(.vertical, -15)
                
                Spacer()
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


