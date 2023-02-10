//
//  CupEntity.swift
//  Tap Makes Cup
//
//  Created by Brendan Innis on 2023-01-19.
//

import Foundation
import Combine
import RealityKit

final class CupEntity: Entity {
    var model: Entity?
    
    static var loadAsync: AnyPublisher<CupEntity, Error> {
        return Entity.loadAsync(named: "cup_saucer_set")
            .map { loadedCup -> CupEntity in
                let cup = CupEntity()
                loadedCup.name = "Cup"
                cup.model = loadedCup
                return cup
            }
            .eraseToAnyPublisher()
    }
}
