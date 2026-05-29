//
//  Mission.swift
//  Practice
//
//  Created by 더스틴 on 5/21/26.
//

protocol Mission {
    func isEqual(to other: Mission) -> Bool
}

extension Mission where Self: Equatable {
    
    func isEqual(to other: Mission) -> Bool {
        guard let other = other as? Self else {
            return false
        }
        return self == other
    }
}
