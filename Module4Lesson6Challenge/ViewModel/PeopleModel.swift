//
//  PeopleModel.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-19.
//

import Foundation


class PeopleModel: ObservableObject {
    
    @Published var people = [Person]()
    
    init() {
        self.people = DataService.getLocalData()
    }
    
}
