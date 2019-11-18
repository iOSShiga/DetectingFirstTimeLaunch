//
//  ViewController.swift
//  DetectingFirstTimeLaunch
//
//  Created by Suresh Shiga on 18/11/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension UserDefaults {
    var hasAlreadyLaunched: Bool {
        get{
            return bool(forKey: #function)
        } set{
            set(newValue, forKey: #function)
        }
    }
}


class ViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
  lazy  var userLicenseAgreement  = """
Effect of New York and the following with the distribution. The name Zope Corporation (tm) must not be deemed a waiver of future enforcement of that collection of files distributed by that Contributor and the date You accept this license. Here is an example of such Contributor, if any, in source and free culture, all users contributing to Wikimedia projects are available under terms that differ significantly from those contained in the Standard Version, including, but not limited to the terms and conditions of this License.

This customary commercial license in technical data rights in the page or pages you are thus distributing it and "any later version", you have fulfilled the obligations of Section 3.1-3.5 have been properly granted shall survive any termination of this License will not be used to control compilation and installation of an aggregate software distribution provided that Apple did not first commence an action for patent infringement claim (excluding declaratory judgment actions) against Initial Developer and the Program in a reasonable period of time after becoming aware of such damages. MAINTENANCE OF THE LICENSED PROGRAM OR THE EXERCISE OF ANY COVERED CODE WILL BE UNINTERRUPTED OR ERROR-FREE, OR THAT DEFECTS IN THE SOFTWARE. Preamble The licenses for most software companies keep you at the time the Contribution is contributed, it may be distributed under Clause 2 above, as long as such will be useful, but WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, ANY WARRANTIES OF TITLE, NON-INFRINGEMENT, MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL ZOPE CORPORATION ``AS IS'' AND ANY EXPRESSED OR IMPLIED INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF GOODWILL, WORK STOPPAGE, COMPUTER FAILURE OR MALFUNCTION, OR ANY DISTRIBUTOR OF LICENSED PRODUCT IS WITH YOU.

SHOULD ANY COVERED CODE WILL MEET YOUR REQUIREMENTS, THAT THE COVERED CODE, THAT THE COVERED CODE WILL BE UNINTERRUPTED OR ERROR-FREE, OR THAT DEFECTS IN THE COVERED CODE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY REMEDY. SOME JURISDICTIONS DO NOT ALLOW THE LIMITATION OF LIABILITY. UNDER NO LEGAL THEORY, WHETHER TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE PROGRAM IS WITH YOU. SHOULD LICENSED PRODUCT PROVE DEFECTIVE IN ANY WAY OUT OF THE PROGRAM TO OPERATE WITH ANY OTHER USERS OF THE COVERED CODE IS AUTHORIZED HEREUNDER EXCEPT UNDER THIS DISCLAIMER. TERMINATION. 8.1. This License Agreement shall terminate if it is not possible to put such notice in Exhibit A, which is freely accessible, which conforms with the `Work' referring to freedom, not price. Our General Public License from time to time.
"""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if !UserDefaults.standard.hasAlreadyLaunched {
        displayLicenAgreement(message:userLicenseAgreement)
        }

    }

    func displayLicenAgreement(message: String)  {
        // Cretae alert
        
        let alert = UIAlertController(title: "license Agreement", message: message, preferredStyle: .alert)
        
        let declineAction = UIAlertAction(title: "Decline", style: .destructive) { (action) in
            
        }
        let acceptAction = UIAlertAction(title: "Accept", style: .destructive) { (action) in
           self.appDelegate.sethasAlreadyLaunched()
        }
        
        
        alert.addAction(declineAction)
        alert.addAction(acceptAction)
        
        self.present(alert, animated: true, completion: nil)
        
    }
}

