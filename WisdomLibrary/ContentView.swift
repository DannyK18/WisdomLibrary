//
//  ContentView.swift
//  WisdomLibrary
//
//  Created by admin on 06/07/2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var books: [Book]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(books) { book in
                    NavigationLink {
                        Text("Book id : \(book.id)")
                    } label: {
                        Text(book.title)
                    }
                }
                .onDelete(perform: deleteItems)
                 
            }
        } detail: {
                Text("Select an item")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            .onAppear {
            addItem()
        }
        }

    private func addItem() {
        Task {
            do {
                let bookManager = BookManager()
                let books = try await bookManager.getBooks()
                withAnimation {
                    for book in books {
                        modelContext.insert(book)
                    }
                }
            } catch {
                print(error)
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(books[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Book.self, inMemory: true)
}
