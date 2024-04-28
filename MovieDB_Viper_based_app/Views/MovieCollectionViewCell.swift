//
//  MovieCollectionViewCell.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation
import UIKit
import SDWebImage


class MovieCollectionViewCell:UICollectionViewCell {

  static let identifier = "MovieCollectionViewCell"

  let posterImage: UIImageView = {
      let imageView = UIImageView()
      imageView.contentMode = .scaleAspectFill
      return imageView
  }()

  override init(frame: CGRect) {
      super.init(frame: frame)
      contentView.addSubview(posterImage)
  }

  override func layoutSubviews() {
      super.layoutSubviews()
      posterImage.frame = contentView.bounds
  }

  required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

  func configurePoster(url: String) {
      guard let url = URL(string: "\(Constants.baseImageURL)\(url)") else { return }
      posterImage.sd_imageIndicator = SDWebImageActivityIndicator()
      posterImage.sd_setImage(with: url, placeholderImage: UIImage(named: "placeholder"))
  }


}
