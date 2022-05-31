//
//  SongDetailView.swift
//  FirstExample
//
//  Created by Samet Aktaş on 5/31/22.
//

import UIKit

final class SongDetailView: UIView, Layoutable {
	
	lazy var detailImageView: UIImageView = {
		
		let imageView = UIImageView()
		return imageView
	}()
	
	lazy var detailLabel: UILabel = {
		
		let titleLabel = UILabel()
		titleLabel.textColor = .white
		titleLabel.text = "ben yoruldum hayat"
		titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
		titleLabel.textAlignment = .center
		return titleLabel
		
	}()
	
	func setupViews() {
		backgroundColor = .black
		addSubview(detailLabel)
		addSubview(detailImageView)
	}
	
	func setupLayout() {
		
		detailImageView.snp.makeConstraints { make in
			make.left.right.equalToSuperview().inset(30)
			make.height.equalTo(detailImageView.snp.width)
			make.top.equalToSuperview().inset(120)
		}
		
		detailLabel.snp.makeConstraints { make in
			make.left.right.equalToSuperview().inset(30)
			make.top.equalTo(detailImageView.snp.bottom).offset(40)
		}
		
	}
	
	
	
}


