//
//  PageViewController.swift
//  NFC Digital Keypad
//
//  Created by Ari Wasch on 12/24/19.
//  Copyright © 2019 Ari Wasch. All rights reserved.
//

import Foundation
import UIKit
class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {


var pageControl = UIPageControl()

// MARK: UIPageViewControllerDataSource

lazy var orderedViewControllers: [UIViewController] = {
    return [self.newVc(viewController: "view_one"),
            self.newVc(viewController: "view_two")]}()

override func viewDidLoad() {
    var pageControl = UIPageControl()
    super.viewDidLoad()
    self.delegate = self
    //configurePageControl()
    self.dataSource = self

    
    // This sets up the first view that will show up on our page control
    if let firstViewController = orderedViewControllers.first {
        setViewControllers([firstViewController],
                           direction: .forward,
                           animated: true,
                           completion: nil)
    }
    
    //configurePageControl()
    
    // Do any additional setup after loading the view.
}

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
      return UIInterfaceOrientationMask.portrait
      }
    override var shouldAutorotate: Bool {
            return false
    }
func configurePageControl() {
    // The total number of pages that are available is based on how many available colors we have.
    pageControl = UIPageControl(frame: CGRect(x: 0,y: UIScreen.main.bounds.maxY - 50,width: UIScreen.main.bounds.width,height: 50))
    self.pageControl.numberOfPages = orderedViewControllers.count
    self.pageControl.currentPage = 0
    self.pageControl.tintColor = UIColor.black
    self.pageControl.pageIndicatorTintColor = UIColor.white
    self.pageControl.currentPageIndicatorTintColor = UIColor.black
    self.view.addSubview(pageControl)
}

func newVc(viewController: String) -> UIViewController {
    return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: viewController)
}


// MARK: Delegate methords
func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
    let pageContentViewController = pageViewController.viewControllers![0]
    self.pageControl.currentPage = orderedViewControllers.index(of: pageContentViewController)!
}

// MARK: Data source functions.
func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
        return nil
    }
    
    let previousIndex = viewControllerIndex - 1
    
    // User is on the first view controller and swiped left to loop to
    // the last view controller.
    guard previousIndex >= 0 else {
        return orderedViewControllers.last
        // Uncommment the line below, remove the line above if you don't want the page control to loop.
        // return nil
    }
    
    guard orderedViewControllers.count > previousIndex else {
        return nil
    }
    
    return orderedViewControllers[previousIndex]
}

func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
        return nil
    }
    
    let nextIndex = viewControllerIndex + 1
    let orderedViewControllersCount = orderedViewControllers.count
    
    // User is on the last view controller and swiped right to loop to
    // the first view controller.
    guard orderedViewControllersCount != nextIndex else {
        return orderedViewControllers.first
        // Uncommment the line below, remove the line above if you don't want the page control to loop.
        // return nil
    }
    
    guard orderedViewControllersCount > nextIndex else {
        return nil
    }
    
    return orderedViewControllers[nextIndex]
}
}
