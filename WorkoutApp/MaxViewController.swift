//
//  MaxViewController.swift
//  WorkoutApp
//
//  Created by ios5 on 5/2/18.
//  Copyright © 2018 PHS. All rights reserved.
//

import UIKit
import WebKit
class MaxViewController: UIViewController {

    @IBOutlet weak var myWebView2: WKWebView!
    @IBOutlet weak var myWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://www.youtube.com/watch?v=RNGueeFF0HU")
        let request = URLRequest(url: url!)
        
        let url2 = URL(string: "https://www.youtube.com/watch?v=fCebJodm0lY")
        let request2 = URLRequest(url: url2!)
        myWebView.load(request)
        myWebView2.load(request2)
        
    }
    


}
