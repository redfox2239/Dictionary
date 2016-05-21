//
//  DetailViewController.swift
//  my辞書
//
//  Created by HARADA REO on 2015/09/02.
//  Copyright (c) 2015年 reo harada. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailWebView: UIWebView!
    var query: String!
    var type: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        var urlString = "https://ja.wikipedia.org/wiki/\(self.query)"
        
        if(self.type == "google_img"){
            urlString = "https://www.google.co.jp/search?q=\(self.query)&es_sm=91&prmd=iv&source=lnms&tbm=isch&sa=X&ved=0CAcQ_AUoAWoVChMI2ZKO5rTXxwIVjJCUCh1F3Q4r&biw=414&bih=736&dpr=3"
        }
        
        let url = NSURL(string: urlString.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!)
        let request = NSURLRequest(URL: url!)
        self.detailWebView.loadRequest(request)
        
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
