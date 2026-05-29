//
//  TutorialView.swift
//  Practice
//
//  Created by 더스틴 on 5/29/26.
//

import SwiftUI

struct TutorialView: View {
    
    let game: Game
    
    var body: some View {
        VStack {
            Text("튜토리얼에 오신 것을 환영합니다")
                .font(.title)
            
            Text("위쪽 버튼을 4번 누르세요")
                .font(.body)
                .padding(.vertical)
            
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
        }
        .padding(.horizontal, 100)
    }
}
