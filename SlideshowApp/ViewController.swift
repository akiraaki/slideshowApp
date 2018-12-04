//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 松本　晃 on 2018/11/20.
//  Copyright © 2018年 Akira Matsumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func unwind(_ segue: UIStoryboardSegue){
    }
    var count = 0
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImage(named: "gazou1")
        // imageView.image = image
        imageButton.setImage(image, for: .normal)
    }
    @objc func updateTimer(_ timer: Timer) {
        print("タイマー呼び出しが行われました")
        count += 1
        displayImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func displayImage() {
        let imageNameArray = [
                "gazou1", "gazou2", "gazou3", "gazou4"
        ]
        if count < 0 {
            count = 3
        }
        if count > 3 {
            count = 0
        }
        let name = imageNameArray[count]
        let image = UIImage(named: name)
        // imageView.image = image
        imageButton.setImage(image, for: .normal)
    }
    
    @IBOutlet weak var modoruButton: UIButton!
    @IBAction func modoru(_ sender: Any) {
        count -= 1
        displayImage()
    }
    @IBOutlet weak var saiseiteishiMoji: UIButton!
    @IBAction func saiseiteishi(_ sender: Any) {
        print("再生ボタンが押されました")
        if self.timer != nil {
            self.timer?.invalidate()
            self.timer = nil
            saiseiteishiMoji.setTitle("再生", for: .normal)
            susumuButton.isEnabled = true
            modoruButton.isEnabled = true
        } else {
            timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            saiseiteishiMoji.setTitle("停止", for: .normal)
            susumuButton.isEnabled = false
            modoruButton.isEnabled = false
        }
    }

    @IBOutlet weak var susumuButton: UIButton!
    @IBAction func susumu(_ sender: Any) {
            count += 1
            displayImage()
    }
    // countを次のページに渡す、次ページ、viewcontrollerのarrayの配列
    // segueで渡す際にkakudaiViewcontroller.count
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let kakudaiViewController:KakudaiViewController = segue.destination as! KakudaiViewController
        kakudaiViewController.count = count
    }
}
