//
//  PracticeApp.swift
//  Practice
//
//  Created by 더스틴 on 5/13/26.
//

import SwiftUI

@main
struct PracticeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(game: Game(player: Player(position: Position(x: 2, y: 4)), map: TutorialMap()))
        }
    }
}
