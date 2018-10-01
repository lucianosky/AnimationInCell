//
//  AnimatedTableViewCell.swift
//  AnimationInCell
//
//  Created by Luciano Sclovsky on 25/09/2018.
//  Copyright © 2018 Luciano Sclovsky. All rights reserved.
//

import UIKit

class AnimatedTableViewCell: UITableViewCell {

    @IBOutlet weak var daliImage: UIImageView!
    @IBOutlet weak var laCasaImage: UIImageView!
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightView: UIView!
    
    var originalPosition = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonClick(_ sender: Any) {
        if originalPosition {
            let animator = UIViewPropertyAnimator(duration: 0.5, curve: .linear) {
                self.daliImage.transform = CGAffineTransform(translationX: -260, y: 0)
                self.laCasaImage.transform = CGAffineTransform(translationX: -20, y: 0)
                self.leftLabel.transform = CGAffineTransform(translationX: -170, y: 0)
                self.rightView.transform = CGAffineTransform(translationX: -320, y: 0)
            }
            animator.startAnimation()
        } else {
            let animator = UIViewPropertyAnimator(duration: 0.5, curve: .linear) {
                self.daliImage.transform = .identity
                self.laCasaImage.transform = .identity
                self.leftLabel.transform = .identity
                self.rightView.transform = .identity
            }
            animator.startAnimation()
        }
        originalPosition = !originalPosition
    }
    
}
