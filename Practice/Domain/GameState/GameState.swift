//
//  GameState.swift
//  Practice
//
//  Created by 더스틴 on 5/27/26.
//

protocol GameState {
    var prompts: [String]? { get }
    var viewType: GameViewType { get }
    
    func onEnter(game: Game)
    func update(game: Game, position: Position)
    func pause(game: Game)
}

extension GameState {
    var prompts: [String]? {
        return nil
    }
    
    func onEnter(game: Game) {}
    
    func update(game: Game, position: Position) {}
}
