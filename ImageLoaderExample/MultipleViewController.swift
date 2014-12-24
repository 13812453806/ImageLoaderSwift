//
//  MultipleViewController.swift
//  ImageLoaderSample
//
//  Created by Hirohisa Kawasaki on 2014/10/24.
//  Copyright (c) 2014年 Hirohisa Kawasaki. All rights reserved.
//

import UIKit
import ImageLoader

class MultipleViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        let URL: NSURL = NSURL.imageURL(indexPath.row)
        let placeholder: UIImage = UIImage(named: "black.jpg")!
        cell.imageView?.load(URL, placeholder: placeholder, completionHandler: { _ in
            println("completion")
        })

        return cell

    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

}
