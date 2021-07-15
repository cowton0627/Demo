//
//  ViewController.swift
//  Demo
//
//  Created by 鄭淳澧 on 2021/7/8.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var poemLabel: UILabel!
    
    
    @IBOutlet weak var picImgView: UIImageView!
    

    func download(urlstring: String, handler: (Data?) -> ()) {
        let data = try? Data(contentsOf: URL(string: urlstring)!)
        handler(data)
    }
    
    func displayImage(data: Data?) {
        print("displayImage")
    }
    
    func saveImage(data: Data?) {
        print("saveImage")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        download(urlstring: "http://bit.ly/2hefaQO", handler: saveImage(data:))
        
        
        let pic1 = UIImage(named: "001.jpg")
        let pic1FlipOrintation = (pic1!.imageOrientation.rawValue + 4) % 8
        let pic1Filp =  UIImage(cgImage:pic1!.cgImage!,
                                scale:pic1!.scale,
                                orientation:UIImage.Orientation(rawValue: pic1FlipOrintation)!
                            )
        picImgView.image = pic1Filp
        
//        let string1 = "花間一壺酒，獨酌無相親。\n"
//        let string2 = "舉杯邀明月，對影成三人。\n"
//        let string3 = "月既不解飲，影徒隨我身。\n"
//        let string4 = "暫伴月將影，行樂須及春。\n"
//        let string5 = "我歌月徘徊，我舞影零亂。\n"
//        let string6 = "醒時同交歡，醉後各分散。\n"
//        let string7 = "永結無情遊，相期邈雲漢。\n🥺"
        
        poemLabel.font = UIFont.systemFont(ofSize: 20)
        poemLabel.text = "花間一壺酒，獨酌無相親。\n舉杯邀明月，對影成三人。\n月既不解飲，影徒隨我身。\n暫伴月將影，行樂須及春。\n我歌月徘徊，我舞影零亂。\n醒時同交歡，醉後各分散。\n永結無情遊，相期邈雲漢。\n🥺"
//        Georgia
//        let string = NSMutableAttributedString(string: poemLabel.text!)
//        print(poemLabel.text!.count)
//
//        string.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.red, range: NSMakeRange(0, 12))
//
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 30)!, range: NSMakeRange(6, 2))
//
//        string.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSMakeRange(13, 12))
//        string.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.orange, range: NSMakeRange(17, 1))
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 30)!, range: NSMakeRange(22, 1))
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 10)!, range: NSMakeRange(23, 1))
//
//        string.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.gray, range: NSMakeRange(26, 12))
//        string.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.orange, range: NSMakeRange(26, 1))
//
//        string.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.darkGray, range: NSMakeRange(39, 12))
//        string.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.orange, range: NSMakeRange(41, 1))
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 10)!, range: NSMakeRange(45, 2))
//
//        string.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.green, range: NSMakeRange(52, 12))
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 10)!, range: NSMakeRange(61, 2))
//
//        string.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.magenta, range: NSMakeRange(65, 6))
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 10)!, range: NSMakeRange(68, 2))
//        string.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.purple, range: NSMakeRange(71, 6))
//
//        string.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.gray, range: NSMakeRange(78, 6))
//        string.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: NSMakeRange(84, 6))
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 10)!, range: NSMakeRange(84, 1))
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 12)!, range: NSMakeRange(85, 1))
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 14)!, range: NSMakeRange(86, 1))
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 16)!, range: NSMakeRange(87, 1))
//        string.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "System Font Regular", size: 18)!, range: NSMakeRange(88, 1))
//
//
//        poemLabel.attributedText = string
        // Do any additional setup after loading the view.
    }


    
    
    struct ViewControllerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> ViewController {
             UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController") as! ViewController
        }
        
        func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        }
        
        typealias UIViewControllerType = ViewController
        
    }
    
    
    struct ViewControllerView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ViewControllerView()
                    .previewDevice("iPhone 12 mini")
            }
        }
    }
    
    
}

