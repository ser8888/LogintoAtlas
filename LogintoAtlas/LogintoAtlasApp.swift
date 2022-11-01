//
//  LogintoAtlasApp.swift
//  LogintoAtlas
//
//  Created by John Doe on 01/11/2022.
//

import SwiftUI
import RealmSwift

//let app = App(id: "alexdb-alukx")
let app: RealmSwift.App? = RealmSwift.App(id: "alexdb-alukx")


@main
struct LogintoAtlasApp: SwiftUI.App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
