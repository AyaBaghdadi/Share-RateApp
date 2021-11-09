//
//  ViewController.swift
//
//  Created by Technicalisto.
//

import UIKit

class ViewController: UIViewController {

    var appId = "uber-request-a-ride/id368677368?"
    
    var appLang = "l=ar"
    
    var itunesBaseUrl = "itms-apps://itunes.apple.com/app/"
    
    var appsBaseUrl = "https://apps.apple.com/us/app/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

// ---------------------------------------------------------------------------------------------------

    @IBAction func rateAppTapped(_ sender: Any) {
        
        guard let url = URL(string: self.itunesBaseUrl + self.appId + self.appLang ) else {
            return
        }
        if #available(iOS 10, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)

        } else {
            UIApplication.shared.openURL(url)
        }
        
    }
    
// ---------------------------------------------------------------------------------------------------
    
    @IBAction func ShareAppTapped(_ sender: UIButton) {
        
        let myurlstring = self.appsBaseUrl + self.appId + self.appLang
         
        let objectsToShare = [myurlstring]
         
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
          
        activityVC.popoverPresentationController?.sourceView = self.view
          
        activityVC.popoverPresentationController?.sourceRect = sender.frame
          
        self.present(activityVC, animated: true, completion: nil)
    }
    
}



