//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 三木一樹 on 2021/04/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    let dispImageNo = ["image1","image2","image3"]

    var imageArror = 0
    var timer : Timer!
    var timer_sec: Float = 0
    
    @IBAction func nextstep(_ sender: Any) {
        if timer == nil{
        imageArror += 1
        display()
        imageView.image = UIImage(named: dispImageNo[imageArror])
        
        }
    }
    @IBAction func goback(_ sender: Any) {
        if timer == nil{
        imageArror -= 1
        display()
        imageView.image = UIImage(named: dispImageNo[imageArror])
        }
    }
    
    @objc func Ontimer(_ timer: Timer) {
        timer_sec += 2.0
        imageView.image = UIImage(named: dispImageNo[imageArror])
        imageArror += 1
        display()
       }
    
    @IBAction func startend(_ sender: Any) {
        if (timer == nil) {
        
        timer = Timer.scheduledTimer(timeInterval: 2.0,target: self, selector: #selector(ViewController.Ontimer(_:)),userInfo: nil, repeats: true)
        } else {
            timer.invalidate()
            timer = nil
        }
    }
  
    func display(){
        if imageArror > 2{
        imageArror = 0
        }
        if imageArror < 0{
        imageArror = 2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named:dispImageNo[imageArror])
    }
    
    @IBAction func tapView(_ sender: Any) {
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
      }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.x = imageView.image!
    }
       
}
