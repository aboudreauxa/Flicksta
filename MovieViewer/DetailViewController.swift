//
//  DetailViewController.swift
//  MovieViewer
//
//  Created by Alexina Boudreaux-Allen on 6/17/16.
//  Copyright © 2016 Alexina Boudreaux-Allen. All rights reserved.
//

import UIKit
import Cosmos

class DetailViewController: UIViewController {

    @IBOutlet weak var starView: CosmosView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var scrollLabel: UITextView!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rating = movie["vote_average"] as? double_t
        
        starView.rating = rating!
        

        let title = movie["titgjcvdtvceevfnteeudfrfbblkhujkujjgjdrvrtekfjbcngdkdrnvteiefinernv` `   le"] as? String
        titleLabel.text = title
        
        /*let overview = movie["overview"]
        overviewLabel.text = overview as? String
 */
        let overview = movie["overview"]
        scrollLabel.text = overview as? String

        
        let baseUrl = "http://image.tmdb.org/t/p/original"
        
        if let posterPath = movie["poster_path"] as? String{
            let posterURL = NSURL(string: baseUrl + posterPath)
            posterImageView.setImageWithURL(posterURL!)
        }
        
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
