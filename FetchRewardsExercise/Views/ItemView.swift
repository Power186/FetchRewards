//
//  ContentView.swift
//  FetchRewardsExercise
//
//  Created by Scott on 11/13/20.
//

import SwiftUI

struct ItemView: View {
    @ObservedObject var itemPresenter = ItemPresenter()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(itemPresenter.items.sorted()) { item in
                    switch item.listId {
                    case 1:
                        Section(header: Text("Group 1")) {
                            Text("id: \(item.id)")
                            Text("listId: \(item.listId)")
                            if item.name != "" {
                                Text("name: \(item.name)")
                            }
                        }
                    case 2:
                        Section(header: Text("Group 2")) {
                            Text("id: \(item.id)")
                            Text("listId: \(item.listId)")
                            if item.name != "" {
                                Text("name: \(item.name)")
                            }
                        }
                    case 3:
                        Section(header: Text("Group 3")) {
                            Text("id: \(item.id)")
                            Text("listId: \(item.listId)")
                            if item.name != "" {
                                Text("name: \(item.name)")
                            }
                        }
                    case 4:
                        Section(header: Text("Group 4")) {
                            Text("id: \(item.id)")
                            Text("listId: \(item.listId)")
                            if item.name != "" {
                                Text("name: \(item.name)")
                            }
                        }
                    default:
                        Text("no listId group")
                    }
                }
            }
            .navigationBarTitle("Items")
            .onAppear(perform: {
                DispatchQueue.main.async {
                    itemPresenter.fetchItems()
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
