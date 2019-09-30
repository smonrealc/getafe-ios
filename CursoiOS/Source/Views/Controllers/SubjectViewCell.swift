//
//  SubjectViewCell.swift
//  CursoiOS
//
//  Created by David Jardon on 26/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit


class SubjectViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mViewFooter: UIView!
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var mLabelName: UILabel!
    
    
    override func prepareForReuse() {
        mImage.image = nil
        mLabelName.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mView.layer.cornerRadius = 8.0
        mView.configureShadows()
        
        mViewFooter.layer.cornerRadius = 8.0
        mViewFooter.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    
    func configureCell(subject: Subject) {
        mImage.image = UIImage(named: subject.logo ?? "")
        mLabelName.text = subject.name
    }
}
