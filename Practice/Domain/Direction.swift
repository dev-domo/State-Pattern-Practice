//
//  Direction.swift
//  Practice
//
//  Created by 더스틴 on 5/21/26.
//

enum Direction {
        
    case up
    case down
    case left
    case right
    
    var value: (x: Int, y: Int) {
        switch self {
        case .up:
            return (0, -1)
        case .down:
            return (0, 1)
        case .left:
            return (-1, 0)
        case .right:
            return (1, 0)
        }
    }
}
