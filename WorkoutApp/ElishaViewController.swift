//
//  ElishaViewController.swift
//  WorkoutApp
//
//  Created by ios5 on 5/2/18.
//  Copyright © 2018 PHS. All rights reserved.
//

import UIKit
import SafariServices

class ElishaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    
    var workOuts = [Workout]()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let jumpingJacks = workOuts(Name: "Jumping Jack", URL: "https://www.youtube.com/watch?v=dmYwZH_BNd0", Difficulty: "Easy")
        workOuts.append(jumpingJacks)
        let mountainClimber = workOuts(Name: "Mountain Climber", URL: "https://www.youtube.com/watch?v=1J4hRICVjRo", Difficulty: "Medium")
        workOuts.append(mountainClimber)
        let burpee = workOuts(Name: "Burpee", URL: "https://www.youtube.com/watch?v=sLTo-V6RgiE", Difficulty: "Hard")
        workOuts.append(burpee)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workOuts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = workOuts[indexPath.row].name
        cell?.detailTextLabel?.text = workOuts[indexPath.row].difficulty
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SafariViewController
        let indexPath = tableView.indexPathForSelectedRow
        vc.selectedWorkout = workOuts[(indexPath?.row)!]
    }
    
}
