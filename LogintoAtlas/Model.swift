//
//  Model.swift
//  LogintoAtlas
//
//  Created by John Doe on 01/11/2022.
//

import Foundation
import RealmSwift
//
//class TaskList: Object {
//    @Persisted var name = ""
//    @Persisted var data = Data()
//    @Persisted var tasks = List<Task>()
//}
//
//class Task: Object {
//    @Persisted var name = ""
//    @Persisted var note = ""
//    @Persisted var date = Date()
//    @Persisted var isComplete = false
//}

// Define your models like regular Swift classes
class Dog: Object, ObjectKeyIdentifiable {
   @Persisted(primaryKey: true) var _id: ObjectId
   @Persisted var name: String
   @Persisted var age: Int
}
//class Person: Object {
//    @Persisted(primaryKey: true) var _id: String
//    @Persisted var name: String
//    @Persisted var age: Int
//    // Create relationships by pointing an Object field to another Class
//    @Persisted var dogs: List<Dog>
//}


//
//// Use them like regular Swift objects
//let dog = Dog()
//dog.name = "Rex"
//dog.age = 1
//print("name of dog: (dog.name)")
//
//// Get the default Realm
//let realm = try! Realm()
//// Persist your data easily with a write transaction
//try! realm.write {
//    realm.add(dog)
//}
//


//class Dog: Object {
//    @Persisted var name = ""
//    @Persisted var age = 0
//    @Persisted var color = ""
//    @Persisted var currentCity = ""
////    @Persisted var citiesVisited: MutableSet<String>
////    @Persisted var companion: AnyRealmValue
//
//    // Map of city name -> favorite park in that city
////    @Persisted var favoriteParksByCity: Map<String, String>
//}

//class Person: Object {
//    @Persisted(primaryKey: true) var _id = 0
//    @Persisted var name = ""
//
//    // To-many relationship - a person can have many dogs
//    @Persisted var dogs: List<Dog>
//
//    // Embed a single object.
//    // Embedded object properties must be marked optional.
//    @Persisted var address: Address?
//}

//class Address: EmbeddedObject {
//    @Persisted var street: String?
//    @Persisted var city: String?
//    @Persisted var country: String?
//    @Persisted var postalCode: String?
//}
