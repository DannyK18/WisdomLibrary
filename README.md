# WisdomLibrary

User taps +
        │
        ▼
BookManager.getBooks()
        │
        ▼
GET https://my-json-server.typicode.com/typicode/demo/posts
        │
        ▼
Server returns JSON
        │
        ▼
JSONDecoder
        │
        ▼
Book objects
        │
        ▼
modelContext.insert(book)
        │
        ▼
SwiftData saves them

A REST API is simply a web server that returns JSON.

 

https://my-json-server.typicode.com/typicode/demo/posts

[
    {
        "id":1,
        "title":"Post 1"
    },
    {
        "id":2,
        "title":"Post 2"
    },
    {
        "id":3,
        "title":"Post 3"
    }
]

Your app downloads this.


 
The architecture:  

↓

BookManager

↓

URLSession

↓

REST API

↓

JSON

↓

BookResponse (DTO)

↓

Book (@Model)

↓

SwiftData

↓

@Query

 
