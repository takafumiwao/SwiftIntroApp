//
//  BaseViewController.swift
//  SwiftIntroApp
//
//  Created by 岩男高史 on 2019/12/14.
//  Copyright © 2019 岩男高史. All rights reserved.
//

import UIKit
import SegementSlide

class BaseViewController: SegementSlideViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        reloadData()
        scrollToSlide(at: 0, animated: true)
        // Do any additional setup after loading the view.
    }
    
    override var headerView: UIView?{
        
        let headerView = UIImageView()
        headerView.isUserInteractionEnabled = true
        headerView.contentMode = .scaleToFill
        headerView.image = UIImage(named: "header")
        headerView.translatesAutoresizingMaskIntoConstraints = false
        let headerHeight : CGFloat
        if #available(iOS 11.0, *){
            headerHeight = view.bounds.height/4 + view.safeAreaInsets.top
        }else{
            headerHeight = view.bounds.height/4 + topLayoutGuide.length
        }
        headerView.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true
        
        return headerView
    }
    
    override var titlesInSwitcher: [String] {
        return ["top","abemaNews","yahoo","it","buzz","cnn"]
    }
    
    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
        switch index {
        case 0:
            return Page1ViewController()
        case 1:
            return Page2ViewController()
        case 2:
            return Page3ViewController()
        case 3:
            return Page4ViewController()
        case 4:
            return Page5ViewController()
        case 5:
            return Page6ViewController()
        default:
            return Page1ViewController()
        }
    }

}
