//
//  SafariViewController.swift
//  WorkoutApp
//
//  Created by ios5 on 5/4/18.
//  Copyright © 2018 PHS. All rights reserved.
//

import UIKit
import WebKit

class SafariViewController: UIViewController
{
    @IBOutlet weak var webKit: WKWebView!
    
    var selectedWorkout = Workout(Name: "", URL: "", Difficulty: "") 
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let url = URL(string: selectedWorkout.url)
        let request = URLRequest(url: url!)
        webKit.load(request)
        
    }
}
