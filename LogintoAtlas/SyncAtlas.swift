////
////  SyncAtlas.swift
////  LogintoAtlas
////
////  Created by John Doe on 02/11/2022.
////
//
//import SwiftUI
//import RealmSwift
//
///// This view opens a synced realm.
//struct OpenSyncedRealmView: View {
//    // Use AsyncOpen to download the latest changes from
//    // your App Services app before opening the realm.
//    // Leave the `partitionValue` an empty string to get this
//    // value from the environment object passed in above.
//    @AsyncOpen(appId: "testing-feyyt", partitionValue: "", timeout: 4000) var asyncOpen
//    
//    var body: some View {
//        
//        switch asyncOpen {
//        // Starting the Realm.asyncOpen process.
//        // Show a progress view.
//        case .connecting:
//            ProgressView()
//        // Waiting for a user to be logged in before executing
//        // Realm.asyncOpen.
//        case .waitingForUser:
//            ProgressView("Waiting for user to log in...")
//        // The realm has been opened and is ready for use.
//        // Show the content view.
//        case .open(let realm):
//            
//            let realm = try! Realm()
//            // Get a dog to update
////            let dog = realm.objects(Dog.self).first!
//            // Open a thread-safe transaction
//            try! realm.write {
//                // Update some properties on the instance.
//                // These changes are saved to the realm
//                dog.name = "Wolfie"
//                dog.age += 1
//            }
////            ItemsView(itemGroup: {
////                if realm.objects(Dog.self).count == 0 {
////            let realm = try! Realm()
////                    try! realm.write {
////                        realm.add(Dog())
////                    }
//// //               }
////            return realm.objects(Dog.self).first!
////            (), leadingBarButton: AnyView(LogoutButton())).environment(\.realm, realm)
//            // The realm is currently being downloaded from the server.
//            // Show a progress view.
//            case .progress(let progress):
//                ProgressView(progress)
//            // Opening the Realm failed.
//            // Show an error view.
//            case .error(let error):
//                ErrorView(error: error)
//        }
//    }
//}
//
//struct ErrorView: View {
//    var error: Error
//        
//    var body: some View {
//        VStack {
//            Text("Error opening the realm: \(error.localizedDescription)")
//        }
//    }
//}
//
//struct OpenSyncedRealmView_Previews: PreviewProvider {
//    static var previews: some View {
//        OpenSyncedRealmView()
//    }
//}
