//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Jared Allen on 11/24/15.
//  Copyright © 2015 Jared Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://google.com")!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
        
        /* let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
            // Will happen when task completes aka 'Closure'
            if let urlContent = data {
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                    
                    
                })
                
            } else {
                // Show error message
                
            }
        }
        
        task.resume() */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

