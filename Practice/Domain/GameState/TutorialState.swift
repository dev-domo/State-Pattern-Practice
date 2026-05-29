//
//  TutorialState.swift
//  Practice
//
//  Created by 더스틴 on 5/29/26.
//

struct TutorialState: GameState {
    
    var viewType: GameViewType {
        return .tutorial
    }
    
    func onEnter(game: Game) {
        
    }
    
    func update(game: Game, position: Position) {
        if game.map.isReachedMission(at: position) {
            game.changeState(MoveToAlarmState())
        }
    }
    
    func pause(game: Game) {}
}
