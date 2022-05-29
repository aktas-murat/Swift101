//
//  ViewController.swift
//  FirstExample26.05.2022
//
//  Created by Murat Aktaş on 5/26/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
	
	var testText2 = "testText2"
	
	var testtext: String = ""
	
	let testText3 = "TestLet"
	
	let testFourNumber = 4
	
	var testThreeNumber = 3
	
	var testTwoNumber: Int = 2
	
	var testNumber: Int?
	
	lazy var blueView: UIView = {
		let view = UIView()
		view.backgroundColor = .blue
	
		return view
	}()
	
	lazy var redView: UIView = {
		let view = UIView()
		view.backgroundColor = .red
		view.layer.cornerRadius = 10
		return view
	}()
	
	lazy var purpleView: UIView = {
		let view = UIView()
		view.backgroundColor = .purple
		return view
	}()
	
	lazy var whiteCircleView: UIView = {
		let view = UIView()
		view.backgroundColor = .white
		view.layer.cornerRadius = 15
	
		return view
	}()

	lazy var greenView: UIView = {
		let view = UIView()
		view.backgroundColor = .green
	
		return view
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		testThreeNumber = 6
		testTwoNumber = 7
		
		print(testFourNumber, testThreeNumber, testTwoNumber, testNumber ?? 3)
		
		setupViews()
		setupLayouts()
	}
	
	func setupViews() {
		
		view.addSubview(blueView)
		view.addSubview(redView)
		view.addSubview(purpleView)
		redView.addSubview(whiteCircleView)
		view.addSubview(greenView)
		
	}
	
	func setupLayouts() {
		
		blueView.snp.makeConstraints { make in
			make.height.equalTo(100)
			make.width.equalTo(100)
			make.centerX.equalToSuperview()
			make.top.equalToSuperview().inset(200)
		}
		
		redView.snp.makeConstraints { make in
			make.top.equalTo(blueView.snp.bottom).offset(50)
			make.left.right.equalToSuperview().inset(50)
			make.height.equalTo(100)
			
		}
		
		purpleView.snp.makeConstraints { make in
			make.top.equalTo(redView.snp.bottom).offset(10)
			make.height.equalTo(100)
			make.width.equalTo(100)
			make.centerX.equalTo(redView.snp.centerX)
			
		}
		
		whiteCircleView.snp.makeConstraints { make in
			
			make.height.equalTo(30)
			make.width.equalTo(30)
			make.center.equalToSuperview()
			
		}
		
		greenView.snp.makeConstraints { make in

			make.height.equalTo(50)
			make.width.equalTo(50)
			make.bottom.equalTo(self.additionalSafeAreaInsets.bottom).offset(-20)
			make.centerX.equalToSuperview()
		}
		
	}

}
