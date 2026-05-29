//
//  Player.swift
//  Practice
//
//  Created by 더스틴 on 5/21/26.
//

class Player {
    
    private(set) var position: Position
    
    init(position: Position) {
        self.position = position
    }
    
    func getNextPosition(direction: Direction) -> Position {
        let newPosition = position.getNewPosition(direction: direction)
        return newPosition
    }
    
    func updatePosition(to position: Position) {
        self.position = position
    }
}
