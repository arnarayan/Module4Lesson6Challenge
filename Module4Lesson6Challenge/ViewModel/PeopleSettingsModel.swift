//
//  PeopleSettingsModel.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-19.
//

import Foundation


class PeopleSettingsModel: ObservableObject {
    @Published var showYearsOfExperience:Bool
    @Published var showAddress:Bool
    @Published var showCompany:Bool
    
    init() {
        self.showAddress = true
        self.showCompany = true
        self.showYearsOfExperience = true
    }
}
