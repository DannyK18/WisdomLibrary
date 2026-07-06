# 📚 WisdomLibrary

A simple SwiftUI project demonstrating how to fetch data from a REST API, decode JSON, and persist it locally using **SwiftData**.

This project is intended for developers learning:

* 🌐 REST APIs
* 📦 `URLSession`
* 🔄 JSON decoding with `Codable`
* 💾 SwiftData
* 🎨 SwiftUI
* ⚡ Async/Await

---

## 🚀 Features

* Fetch books from a REST API
* Decode JSON into Swift objects
 * Save data locally using SwiftData
* Automatically update the UI with `@Query`

---

## 🌍 REST API

The app fetches data from the following endpoint:

```text
GET https://my-json-server.typicode.com/typicode/demo/posts
```

Example response:

```json
[
    {
        "id": 1,
        "title": "Post 1"
    },
    {
        "id": 2,
        "title": "Post 2"
    },
    {
        "id": 3,
        "title": "Post 3"
    }
]
```

---

## 📖 Data Flow

When the user taps the **+** button, the following process happens:

```text
User taps +

      │
      ▼

BookManager.getBooks()

      │
      ▼

GET Request

      │
      ▼

REST API

      │
      ▼

JSON Response

      │
      ▼

JSONDecoder

      │
      ▼

Book (@Model)

      │
      ▼

SwiftData

      │
      ▼

@Query updates the UI
```

---

## 🏗 Architecture

```text
SwiftUI View
      │
      ▼
BookManager
      │
      ▼
URLSession
      │
      ▼
REST API
      │
      ▼
JSON
      │
      ▼
Book (@Model)
      │
      ▼
SwiftData
      │
      ▼
@Query
      │
      ▼
SwiftUI List
```

---

## 📂 Project Structure

```text
WisdomLibrary
│
├── Book.swift          // SwiftData model
├── BookManager.swift   // Networking layer
├── ContentView.swift   // SwiftUI interface
└── WisdomLibraryApp.swift
```

---

## 🛠 Technologies

* Swift 6
* SwiftUI
* SwiftData
* URLSession
* Codable
* Async/Await
* REST API

---

## 📚 What You'll Learn

By studying this project, you'll understand how to:

* Send HTTP GET requests
* Consume REST APIs
* Decode JSON using `Codable`
* Store data with SwiftData
* Display persistent data using `@Query`
* Build a simple networking architecture for SwiftUI apps

