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
                    Text("Hstack")
                }
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
            
        }
        
    }
}



#Preview {
    AlarmsView()
}
