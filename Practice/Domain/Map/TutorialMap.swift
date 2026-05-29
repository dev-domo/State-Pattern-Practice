//
//  TutorialMap.swift
//  Practice
//
//  Created by 더스틴 on 5/29/26.
//

struct TutorialMap: Map {
    
    private(set) var maze: [[Tile]] = [
        [.wall, .wall, .startZone, .wall, .wall],
        [.wall, .wall, .path, .wall, .wall],
        [.wall, .wall, .path, .wall, .wall],
        [.wall, .wall, .path, .wall, .wall],
        [.wall, .wall, .path, .wall, .wall]
    ]
    
    func isHitWall(at position: Position) -> Bool {
        let x = position.getX()
        let y = position.getY()
        
        if isOutOfBounds(x: x, y: y) {
            return true
        }
        
        return maze[y][x] == .wall
    }
    
    func isReachedMission(at position: Position) -> Bool {
        let x = position.getX()
        let y = position.getY()
        
        if isOutOfBounds(x: x, y: y) {
            return true
        }
        
        if case .startZone = maze[y][x] {
            return true
        }
        return false
    }
    
    private func isOutOfBounds(x: Int, y: Int) -> Bool {
        return x < 0 || y < 0 || x >= maze.count || y >= maze.count
    }
}
