//
//  Utilities.swift
//  Programmatic Weather App
//
//  Created by GO on 2/23/23.
//

import UIKit


func viewLabel(label: String, size: CGFloat) -> UILabel {
    let uiLabel: UILabel = {
        let viewLabel = UILabel()
        viewLabel.translatesAutoresizingMaskIntoConstraints = false
        viewLabel.text = label
        viewLabel.textColor = .white
        viewLabel.textAlignment = .center
        viewLabel.font = UIFont.systemFont(ofSize: size)
        return viewLabel
    }()
    return uiLabel
}

func viewImage(imageName: String) -> UIImageView {
    let imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: imageName)
        
        return image
    }()
    return imageView
}


