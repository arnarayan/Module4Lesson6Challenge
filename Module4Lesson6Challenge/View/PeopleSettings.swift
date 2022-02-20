//
//  PeopleSettings.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-19.
//

import SwiftUI

struct PeopleSettings: View {
    
    @EnvironmentObject var settingsModel: PeopleSettingsModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Toggle(isOn: $settingsModel.showYearsOfExperience, label: {
                    Text("Show Years of Expertise")
                })
                Toggle(isOn: $settingsModel.showAddress, label: {
                    Text("Show Address")
                })
                Toggle(isOn: $settingsModel.showCompany, label: {
                    Text("Show Company")
                })
                Spacer()
            }
            .padding(.horizontal)
            .navigationTitle("Display Preferences")
        }


    }
}

struct PeopleSettings_Previews: PreviewProvider {
    static var previews: some View {
        PeopleSettings()
    }
}
