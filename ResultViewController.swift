//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 三木一樹 on 2021/04/09.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let result = x
        showpicture.image = result
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var showpicture: UIImageView!
    var x: UIImage = UIImage()

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
