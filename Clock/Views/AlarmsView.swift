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
                HStack{
                    Text("9:25")
                        .font(.system(size: 64.0, weight: .thin, design: .default))
                    Text ("AM")
                        .font(.system(.largeTitle, design: .default, weight: .thin))
                    Spacer()
                    Toggle("", isOn: Binding.constant(true))
                   

                }
                Text("Alarm")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, -50)
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
