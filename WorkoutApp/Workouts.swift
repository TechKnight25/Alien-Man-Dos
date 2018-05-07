//
//  Workouts.swift
//  WorkoutApp
//
//  Created by ios5 on 5/3/18.
//  Copyright © 2018 PHS. All rights reserved.
//

import Foundation
import UIKit

class Workout
{
    var name: String
    var url: String
    var difficulty: String
    
    init(Name n: String, URL u: String, Difficulty d: String)
    {
        name = n
        url = u
        difficulty = d
    }
}
