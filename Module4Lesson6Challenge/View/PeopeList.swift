//
//  PeopeList.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-19.
//

import SwiftUI

struct PeopeList: View {
    @EnvironmentObject var model: PeopleModel
    @EnvironmentObject var settingsModel: PeopleSettingsModel
    
    var body: some View {
        List(model.people) {person in
            HStack {
                Image(person.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(3)
                    .padding(.bottom, 2.0)
                    .clipped()
                    .frame(width: 50, height: 50, alignment: .center)
                VStack(alignment: .leading) {
                    Text(person.name).foregroundColor(.teal).font(.title)
                    if (settingsModel.showAddress == true) {
                        Text(person.address).font(.caption)
                    }
                    Text(person.title).font(.caption)
                    if (settingsModel.showCompany == true) {
                        Text("---Company---").font(.headline)
                        HStack(alignment: .bottom, spacing: 2.0){
                            Text(person.company.name).font(.caption)
                            Image(person.company.image)
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(3)
                                .padding(.bottom, 2.0)
                                .clipped()
                                .frame(width: 20, height: 20, alignment: .center)
                        }
                        Text(person.company.address).font(.caption)
                    }

                    if (settingsModel.showYearsOfExperience==true) {
                        Text("Years of Experience: " + String(person.yearsOfExpertise ?? 0)).font(.footnote)
                    }
                    
                    Text("---Skills---").font(.headline)
                    HStack {
                        ForEach(person.areasOfExpertise, id: \.self){ ts in
                            Text(ts).font(.system(size: 10.0))
                        }
                    }

                    

                }

            }
            
        }
    }
}

struct PeopeList_Previews: PreviewProvider {
    static var previews: some View {
        PeopeList()
    }
}
