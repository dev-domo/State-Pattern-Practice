//
//  MoveToAlarmView.swift
//  Practice
//
//  Created by 더스틴 on 5/29/26.
//

import SwiftUI

struct MoveToAlarmView: View {
    
    let game: Game
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Text(game.state.prompts![0])
                    .foregroundStyle(.white)
                    .padding()
                
                VStack {
                    HStack {
                        Spacer()
                        Button("위") {
                            game.move(to: .up)
                        }
                        Spacer()
                    }
                    HStack {
                        Button("좌") {
                            game.move(to: .left)
                        }
                        Spacer()
                        Button("우") {
                            game.move(to: .right)
                        }
                    }
                    HStack {
                        Spacer()
                        Button("아래") {
                            game.move(to: .down)
                        }
                        Spacer()
                    }
                }
                .padding(.horizontal, 100)
            }
        }
    }
}
