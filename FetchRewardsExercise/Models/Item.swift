//
//  Item.swift
//  FetchRewardsExercise
//
//  Created by Scott on 11/13/20.
//

import Foundation

struct Item: Identifiable {
    var uuid = UUID()
    let id: Int
    let listId: Int
    let name: String
}

extension Item: Comparable {
    static func < (lhs: Item, rhs: Item) -> Bool {
        lhs.listId < rhs.listId
    }
}


