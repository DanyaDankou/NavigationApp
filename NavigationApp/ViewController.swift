//
//  ViewController.swift
//  NavigationApp
//
//  Created by comp on 13.11.22.
//

import UIKit

class ViewController: UIViewController {
    let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)

    @IBAction func toGreenScene(_ sender: UIButton) {
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "greenViewController")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }

    @IBAction func toYellowScene(_ sender: UIButton) {
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "yellowViewController")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }

    @IBAction func toRootScene(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }

    @IBAction func toPreviousScene(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
