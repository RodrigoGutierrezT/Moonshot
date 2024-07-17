//
//  ContentView.swift
//  Moonshot
//
//  Created by Rodrigo on 15-07-24.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
                        VStack {
                            NavigationLink {
                                Text("Detail View")
                            } label: {
                                VStack {
                                    Image(mission.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                                    
                                    VStack {
                                        Text(mission.displaName)
                                            .font(.headline)
                                        
                                        Text(mission.formattedLaunchDate)
                                            .font(.caption)
                                    }
                                    .frame(maxWidth: .infinity)                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Moonshot")
        }
    }
}

#Preview {
    ContentView()
}
