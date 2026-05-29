//
//  ContentView.swift
//  Practice
//
//  Created by 더스틴 on 5/13/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var game: Game
    
    var body: some View {
        switch game.state.viewType {
        case .tutorial:
            TutorialView(game: game)
        case .moveToAlarm:
            MoveToAlarmView(game: game)
        }
    }
}

#Preview {
    ContentView(
        game: Game(
            player: Player(position: Position(x: 2, y: 4)),
            map: TutorialMap()
        )
    )
}
