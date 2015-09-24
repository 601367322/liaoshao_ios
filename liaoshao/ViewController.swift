//
//  ViewController.swift
//  liaoshao
//
//  Created by quanliren on 15/9/24.
//  Copyright © 2015年 shen. All rights reserved.
//

import UIKit

enum SelectType{
    case Big,Small,Baozi
}

class ViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!

    @IBOutlet weak var image3: UIImageView!
    
    var selectType = SelectType.Big
    
    var timer : NSTimer?
    
    var imageNumbser = 0
    
    var finalNumber1:Int = 0
    var finalNumber2:Int = 0
    var finalNumber3:Int = 0
    
    func judgeResult(){
        switch(selectType){
        case .Big:
            if finalNumber1 + finalNumber3 + finalNumber2 > 11 {
                
            }
            break;
        case .Small:
            if finalNumber1 + finalNumber3 + finalNumber2 > 11 {
                
            }
        case .Baozi:
            if finalNumber1 == finalNumber3 == finalNumber2 {
                
            }
        default:
            break
            
        }}
    
    func changeImage(){
        
        imageNumbser++
        
        var i1 = random() % 6 + 1
        finalNumber1 = i1
        var name = "image\(i1).jpg"
        var image = UIImage(named: name)
        image1.image = image
        
        i1 = random() % 6 + 1
        finalNumber2=i1
        name = "image\(i1).jpg"
        image = UIImage(named: name)
        image2.image = image

        i1 = random() % 6 + 1
        finalNumber3=i1
        name = "image\(i1).jpg"
        image = UIImage(named: name)
        image3.image = image
        
        if(imageNumbser>20){
            timer?.invalidate()
            imageNumbser = 0
            judgeResult()
        }

    }
    

    @IBAction func buyBig(sender: AnyObject) {
        selectType = SelectType.Big
        timer?.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "changeImage", userInfo: "", repeats: true)
    }
    
    @IBAction func buySmall(sender: AnyObject) {
                selectType = SelectType.Small
    }
    @IBAction func buyBaozi(sender: AnyObject) {
                selectType = SelectType.Baozi
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

