//
//  DataService.swift
//  Module4Lesson6Challenge
//
//  Created by Anand Narayan on 2022-02-18.
//
//
import Foundation


class DataService {
    
    static func getLocalData() -> [Person] {
        // Get path to the json file within the app bundle
        
        if let path = Bundle.main.path(forResource: "people", ofType: "json") {
            let fileUrl = URL(fileURLWithPath: path)
            
            do{
                let data = try Data(contentsOf: fileUrl)
                let decoder = JSONDecoder()
                let response = try decoder.decode([Person].self, from: data)

                
                return response
                
            }
            catch{
                print("could not serialize")
                print(error)
            }
            
        }

        return [Person]()
    }
}
