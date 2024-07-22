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
    
    @State private var showingGrid = true
    
    var body: some View {
        NavigationStack{
            Group {
                if showingGrid {
                    GridLayout(astronauts: astronauts, missions: missions)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                }
            }
            .navigationDestination(for: Mission.self) { mission in
                MissionView(mission: mission, astronauts: astronauts)
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                if showingGrid {
                    Button("List toggle",systemImage: "list.bullet") {
                        withAnimation(.default) {
                            showingGrid.toggle()
                        }
                    }
                } else {
                    Button("Grid toggle",systemImage: "circle.grid.3x3") {
                        withAnimation(.default) {
                            showingGrid.toggle()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
