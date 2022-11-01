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
class Dog: Object {
   @Persisted var name: String
   @Persisted var age: Int
}
class Person: Object {
    @Persisted(primaryKey: true) var _id: String
    @Persisted var name: String
    @Persisted var age: Int
    // Create relationships by pointing an Object field to another Class
    @Persisted var dogs: List<Dog>
}


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


