//
//  ContentView.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-18.
//

import SwiftUI

struct PeopleMain: View {
    var body: some View {
        TabView{
            PeopeList().tabItem{
                VStack {
                    Image(systemName: "tortoise")
                    Text("People")
                }
            }
            PeopleSettings().tabItem{
                VStack{
                    Image(systemName: "heart")
                    Text("Settings")
                }
            }
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleMain()
    }
}
