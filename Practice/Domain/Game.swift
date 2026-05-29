//
//  Game.swift
//  Practice
//
//  Created by 더스틴 on 5/21/26.
//

import SwiftUI

@Observable
class Game {
    
    private(set) var player: Player
    private(set) var map: Map
    private(set) var state: GameState
    
    init(player: Player, map: Map) {
        self.player = player
        self.map = TutorialMap()
        self.state = TutorialState()
    }
    
    func changeState(_ state: GameState) {
        self.state = state
    }
    
    func move(to direction: Direction) {
        let position = player.getNextPosition(direction: direction)
        
        if map.isHitWall(at: position) {
            return
        }
        
        player.updatePosition(to: position)
        state.update(game: self, position: position)
    }
}
