//
//  ContentView.swift
//  LogintoAtlas
//
//  Created by John Doe on 01/11/2022.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                RealmRegister()
            } label: {
                Text("Register new user")
                    .font(.largeTitle)
            }
     
            
            Button {
                RealmAuth()
            } label: {
                Text("Log in with email")
                    .font(.largeTitle)
            }
            
            Button {
                let dog = Dog()
                dog.name = "Rex"
                dog.age = 1
                
                @AsyncOpen(appId: "testing-feyyt", partitionValue: "", timeout: 4000) var asyncOpen
                
                let realm = try! Realm()
                try? realm.write {
                  realm.add(dog)
                }
                // Use them like regular Swift objects
//                let dog = Dog()
//                dog.name = "Rex"
//                dog.age = 1
//                print("name of dog: (dog.name)")
//
//                @AsyncOpen(appId: "chat-wvust", partitionValue: "", timeout: 4000) var asyncOpen
//                
//                let realm = try! Realm()
//
//                // Get a dog to update
//                let dog = realm.objects(Dog.self).first!
//
//                // Open a thread-safe transaction
//                try! realm.write {
//                    // Update some properties on the instance.
//                    // These changes are saved to the realm
//                    dog.name = "Wolfie"
//                    dog.age += 1
//                }

                
                
//                // Get the default Realm
//                let realm = try! Realm()
//                // Persist your data easily with a write transaction
//                try! realm.write {
//                    realm.add(dog)
//                }

            } label: {
                Text("fetch to Atal")
                    .font(.largeTitle)
            }

            
            Button {
                RealmAuthAnonymous()
            } label: {
                Text("Log in anonimously")
                    .font(.largeTitle)
            }
            
            LogoutButton()
                

        }
    }
}

    
    private func RealmRegister(){
        let client = app?.emailPasswordAuth
        let email = "st@kl.lv"
        let password = "123456"
        client?.registerUser(email: email, password: password) { (error) in
            guard error == nil else {
                print("Failed to register: \(error!.localizedDescription)")
       //         error = "Failed to register: \(error!.localizedDescription)"
                return
            }
            print("Successfully registered user.")
        }

    }

private func RealmAuth(){
    app?.login(credentials: Credentials.emailPassword(email: "st@kl.lv", password: "123456")) { (result) in
        switch result {
        case .failure(let error):
            print("Login failed: \(error.localizedDescription)")
        case .success(let user):
            print("Successfully logged in as user \(user)")
        }
    }
}
    
private func RealmAuthAnonymous(){
    let anonymousCredentials = Credentials.anonymous
    app?.login(credentials: anonymousCredentials) { (result) in
        switch result {
        case .failure(let error):
            print("Login failed: \(error.localizedDescription)")
        case .success(let user):
            print("Successfully logged in as user \(user)")
        }
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
