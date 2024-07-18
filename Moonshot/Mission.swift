//
//  Mission.swift
//  Moonshot
//
//  Created by Rodrigo on 16-07-24.
//

import Foundation


struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displaName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated , time: .omitted) ?? "N/A"
    }
    
    var completeFormattedLaunchDate: String {
        launchDate?.formatted(date: .complete , time: .omitted) ?? "N/A"
    }
}
