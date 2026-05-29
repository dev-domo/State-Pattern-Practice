//
//  MoveToAlarmState.swift
//  Practice
//
//  Created by 더스틴 on 5/29/26.
//

struct MoveToAlarmState: GameState {
    
    var viewType: GameViewType {
        return .moveToAlarm
    }
    
    var prompts: [String]? {
        return ["나를 따라오는 발소리가 들린다.",
                "어라 집에 불이 안 켜지네",
                "아 시끄러워...\n일단 알람부터 찾아서 꺼야겠다."]
    }
    
    func update(game: Game, position: Position) {
        
    }
    
    func pause(game: Game) {}
}
