//
//  SecondTestViewController.swift
//  FirstExample26.05.2022
//
//  Created by Murat Aktaş on 5/26/22.
//

import UIKit
import SnapKit

class SecondTestViewController: UIViewController {
	
	lazy var imageView: UIImageView = {
		
		let imageView = UIImageView()
		imageView.backgroundColor = .blue
		return imageView
		
	}()
	
	lazy var titleLabel: UILabel = {
	
		let titleLabel = UILabel()
		titleLabel.text = "Lorem İpsum"
		titleLabel.textAlignment = .center
		titleLabel.font = .systemFont(ofSize: 20, weight: .bold)
		return titleLabel

	}()
	
	lazy var descriptionLabel: UILabel = {
	
		let descriptionLabel = UILabel()
		descriptionLabel.text = "Description Lorem İpsem Description Lorem İpsemDescription Lorem İpsemDescription Lorem İpsemDescription Lorem İpsem"
		descriptionLabel.textAlignment = .left
		descriptionLabel.font = .systemFont(ofSize: 15, weight: .regular)
		descriptionLabel.numberOfLines = 0
		return descriptionLabel
      
	}()
	
	
	lazy var greenView: UIView = {
		
		let greenView = UIView()
		greenView.backgroundColor = .green
		greenView.layer.cornerRadius = 45
		return greenView
		
	}()
	
	
	lazy var redButton: UIButton = {
		
		
		let redButton = UIButton()
		redButton.backgroundColor = .red
		redButton.setTitle("Button", for: .normal)
		return redButton
		
	}()
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		setupViews()
		setupLayouts()
		
		redButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
	}
	
	func setupViews() {
		
		view.addSubview(imageView)
		view.addSubview(titleLabel)
		view.addSubview(descriptionLabel)
		view.addSubview(greenView)
		view.addSubview(redButton)
	}
	
	func setupLayouts() {
		
		imageView.snp.makeConstraints { make in
			make.top.left.right.equalToSuperview().inset(50)
			make.height.equalTo(imageView.snp.width)
		}
		
		titleLabel.snp.makeConstraints { make in
			make.left.right.equalToSuperview().inset(100)
			make.top.equalTo(imageView.snp.bottom).offset(30)
			
		}
		
		descriptionLabel.snp.makeConstraints { make in
			make.left.right.equalToSuperview().inset(50)
			make.top.equalTo(titleLabel.snp.bottom).offset(25)
			
		}
		
		greenView.snp.makeConstraints { make in
			make.top.equalTo(descriptionLabel.snp.bottom).offset(30)
			make.width.equalTo(90)
			make.height.equalTo(90)
			make.centerX.equalToSuperview()
		}
		
		redButton.snp.makeConstraints { make in
			make.top.equalTo(greenView.snp.bottom).offset(30)
			make.width.equalTo(90)
			make.height.equalTo(45)
			make.centerX.equalToSuperview()
		}
		
		
	}
	
	@objc func didTapButton() {
		
		if redButton.isSelected == false {
			
			titleLabel.textColor = .red
			descriptionLabel.textColor = .red
			greenView.isHidden = true
			redButton.backgroundColor = .yellow
			redButton.setTitleColor(.black, for: .normal)
			redButton.isSelected = true
			imageView.image = UIImage(named: "testImage")
		} else {
			
			titleLabel.textColor = .black
			descriptionLabel.textColor = .black
			greenView.isHidden = false
			redButton.backgroundColor = .red
			redButton.setTitleColor(.white, for: .normal)
			redButton.isSelected = false
			imageView.image = nil 
		}
		
	}
		
}
