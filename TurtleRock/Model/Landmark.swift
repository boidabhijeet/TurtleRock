//
//  Landmark.swift
//  TurtleRock
//
//  Created by Abhi on 07/10/21.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark: Codable, Identifiable {
    let name: String
    let category: Category
    let city, state: String
    let id: Int
    let isFeatured, isFavorite: Bool
    let park: String
    let coordinates: Coordinates
    let landmarkDescription, imageName: String
    
//    private var imageName: String
//    var image: Image {
//        Image(imageName)
//    }
//
//    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum CodingKeys: String, CodingKey {
        case name, category, city, state, id, isFeatured, isFavorite, park, coordinates
        case landmarkDescription = "description"
        case imageName
    }
}

enum Category: String, Codable {
    case lakes = "Lakes"
    case mountains = "Mountains"
    case rivers = "Rivers"
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let longitude, latitude: Double
}

