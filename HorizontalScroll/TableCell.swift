//
//  TableCell.swift
//  HorizontalScroll
//
//  Created by Laxman on 15/07/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
          }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell = self.collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as? CustomCollectionViewCell
        
        if (cell == nil) {
            let nib = NSBundle.mainBundle().loadNibNamed("CustomCollectionCell", owner: CustomCollectionViewCell.self, options: nil) as NSArray
            cell = nib.objectAtIndex(0) as? CustomCollectionViewCell
        }
        
        // Configure the cell
        return cell!
    }
    
}

class CustomCollectionViewCell: UICollectionViewCell {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    
    
}