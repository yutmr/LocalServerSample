//
//  ViewController.swift
//  LocalServerSample
//
//  Created by YuTamura on 2015/12/06.
//  Copyright © 2015年 Yu Tamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let host: String = NSBundle.mainBundle().objectForInfoDictionaryKey("ServiceHost") as! String
        webView.loadRequest(NSURLRequest(URL: NSURL(string: "http://" + host)!))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

