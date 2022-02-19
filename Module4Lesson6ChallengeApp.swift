//
//  Module4Lesson6ChallengeApp.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-18.
//

import SwiftUI

@main
struct Module4Lesson6ChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            PeopleMain().environmentObject(PeopleModel()).environmentObject(PeopleSettingsModel())
        }
    }
}
