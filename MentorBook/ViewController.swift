//
//  ViewController.swift
//  MentorBook
//
//  Created by Koutaro Matsushita on 2021/08/21.
//

import UIKit

class ViewController: UIViewController {

    var mentorArray: [Mentor] = []
    
    var index: Int = 0
    
    @IBOutlet var imageView:UIImageView!
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var courseLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", course: "iPhone", imageName: "nagata.jpg"))
        mentorArray.append(Mentor(name: "りょう", course: "Unity", imageName: "ryo.jpg"))
        mentorArray.append(Mentor(name: "たいてぃ", course: "WebS,WebD", imageName: "taithi.jpg"))
        
        setUI()
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    

    @IBAction func mae(){
        if index > 0 {
            index = index - 1
            setUI()
        }
    }
    
    @IBAction func ushiro(){
        if index < 2 {
            index = index + 1
            setUI()
        }
    }
    
}

