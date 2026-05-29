//
//  Position.swift
//  Practice
//
//  Created by 더스틴 on 5/21/26.
//

struct Position: Equatable {
    
    private var x: Int
    private var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    mutating func getNewPosition(direction: Direction) -> Self {
        let newX = x + direction.value.x
        let newY = y + direction.value.y

        return .init(x: newX, y: newY)
    }
    
    func getX() -> Int { x }
    
    func getY() -> Int { y }
}
