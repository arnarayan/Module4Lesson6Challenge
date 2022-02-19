//
//  Company.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-18.
//

import Foundation


struct Company: Identifiable, Decodable {
    var id: Int?
    var name: String
    var address: String
    var image: String
}
