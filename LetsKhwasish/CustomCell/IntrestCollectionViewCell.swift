//
//  IntrestCollectionViewCell.swift
//  LetsKhwasish
//
//  Created by Nidhi.sharma3 on 07/06/20.
//  Copyright © 2020 Nidhi.sharma3. All rights reserved.
//

import UIKit

class IntrestCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewOuter: UIView!
    @IBOutlet weak var viewInner: UIView!
    @IBOutlet weak var imgInterest: UIImageView!
    @IBOutlet weak var lblCategoryTitle: UILabel!
    @IBOutlet weak var imgTick: UIImageView!
    @IBOutlet weak var btnTick: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
