//
//  Item.swift
//  FetchRewardsExercise
//
//  Created by Scott on 11/13/20.
//

import Foundation

struct Item: Identifiable, Comparable {
    var uuid = UUID()
    let id: Int
    let listId: Int
    let name: String
    
    static func < (lhs: Item, rhs: Item) -> Bool {
        lhs.listId < rhs.listId
    }
}

