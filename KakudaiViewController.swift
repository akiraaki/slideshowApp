//
//  KakudaiViewController.swift
//  SlideshowApp
//
//  Created by 松本　晃 on 2018/11/20.
//  Copyright © 2018年 Akira Matsumoto. All rights reserved.
//

import UIKit

class KakudaiViewController: UIViewController {

//    var count = 0
    var imageName:String = ""
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewWillAppear(_ animated: Bool) {
//         let imageNameArray = [
//            "gazou1", "gazou2", "gazou3", "gazou4"
//        ]
//        let name = imageNameArray[count]
        let image = UIImage(named: imageName)
        imageView.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // let imageNameArray = [
        //    "gazou1", "gazou2", "gazou3", "gazou4"
        //]
        //let name = imageNameArray[count]
        //let image = UIImage(named: name)
        //imageView.image = image

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gamenmodoru(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
