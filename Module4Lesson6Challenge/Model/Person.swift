//
//  Person.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-18.
//

import Foundation


struct Person: Identifiable, Decodable {
    var id: Int?
    var name: String
    var address: String
    var company: Company
    var yearsOfExpertise: Int?
    var areasOfExpertise: [String]
    var title: String
    var image: String
}
