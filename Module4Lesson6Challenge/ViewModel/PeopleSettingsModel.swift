//
//  PeopleSettingsModel.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-19.
//

import Foundation


class PeopleSettingsModel: ObservableObject {
    var showYearsOfExperience:Bool
    var showAddress:Bool
    var showCompany:Bool
    
    init() {
        self.showAddress = false
        self.showCompany = true
        self.showYearsOfExperience = true
    }
}
