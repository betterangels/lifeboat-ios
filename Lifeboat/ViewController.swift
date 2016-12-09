//
//  ViewController.swift
//  Lifeboat
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Make a "Web View" (a view container with WebKit backing).
        let buoyWebView = UIWebView(frame: self.view.frame)
        
        // Add said view to this ViewController's `view` member.
        self.view.addSubview(buoyWebView)
        
        // read contents of file buoy.url.txt
        let urlpath = NSBundle.mainBundle().pathForResource("buoy.url", ofType: "txt")
        let urlstring = try? String(contentsOfFile: urlpath!, encoding: NSUTF8StringEncoding)
    
        // Load a specific URL in the request.
        let buoyURL = NSURL(string: urlstring!)!
        let request = NSURLRequest(URL: buoyURL)
        buoyWebView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

