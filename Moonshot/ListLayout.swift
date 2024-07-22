//
//  ListLayout.swift
//  Moonshot
//
//  Created by Rodrigo on 18-07-24.
//

import SwiftUI

struct ListLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        List(missions) { mission in
            HStack {
                NavigationLink(value: mission) {
                    VStack(alignment: .leading) {
                        Text(mission.displaName)
                            .font(.headline)
                            .foregroundStyle(.white)
                        
                        Text(mission.formattedLaunchDate)
                            .font(.caption)
                            .foregroundStyle(.white.opacity(0.7))
                    }
                    
                    Spacer()
                    
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 75, height: 75)
                        .padding()
                }
            }
            .listRowBackground(Color.lightBackground)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
        }
        .listStyle(.plain)
        .padding([.horizontal, .bottom])
        
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    return ListLayout(astronauts: astronauts, missions: missions)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
