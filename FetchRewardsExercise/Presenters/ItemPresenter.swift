//
//  DataPresenter.swift
//  FetchRewardsExercise
//
//  Created by Scott on 11/13/20.
//

import Foundation

final class ItemPresenter: ObservableObject {
    @Published var items = [Item]()

    func fetchItems() {
        if let data = (try? String(contentsOf: URL(string:"https://fetch-hiring.s3.amazonaws.com/hiring.json")!)) {
            let jsonData = JSON(parseJSON: data)
            let jsonArray = jsonData.arrayValue
            
            let itemModels = jsonArray.compactMap {
                Item(id: $0["id"].intValue,
                    listId: $0["listId"].intValue,
                    name: $0["name"].stringValue)
            }
            
            let sortedItems = itemModels.sorted()
            self.items = sortedItems
            
        } else {
            assert(!items.isEmpty, "items array is empty")
        }
    }
}

