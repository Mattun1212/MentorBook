//
//  Mentor.swift
//  MentorBook
//
//  Created by Koutaro Matsushita on 2021/08/21.
//

import UIKit

class Mentor{
    var name: String!
    var course: String!
    var imageName: String!
    
    init (name: String, course: String, imageName: String){
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
