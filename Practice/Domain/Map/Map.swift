//
//  Map.swift
//  Practice
//
//  Created by 더스틴 on 5/21/26.
//

protocol Map {
    func isHitWall(at position: Position) -> Bool
    func isReachedMission(at position: Position) -> Bool
}
