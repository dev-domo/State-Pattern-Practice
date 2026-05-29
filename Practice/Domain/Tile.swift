//
//  Tile.swift
//  Practice
//
//  Created by 더스틴 on 5/21/26.
//

enum Tile: Equatable {
    case path
    case wall
    case mission(Mission)
    case startZone
    
    static func == (lhs: Tile, rhs: Tile) -> Bool {
        switch (lhs, rhs) {
        case (.path, .path), (.wall, .wall), (.startZone, .startZone):
            return true
        case (.mission(let lhsMission), .mission(let rhsMission)):
            return lhsMission.isEqual(to: rhsMission)
        default:
            return false
        }
    }
}
