//
//  PeopeList.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-19.
//

import SwiftUI

struct PeopeList: View {
    @EnvironmentObject var model: PeopleModel
    
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
                    Text(person.name).font(.headline)
                    Text(person.address).font(.caption)
                    Text(person.company.name).font(.caption)
                    Text("Years of Experience: " + String(person.yearsOfExpertise ?? 0)).font(.footnote)

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
