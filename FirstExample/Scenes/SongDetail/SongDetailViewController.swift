//
//  SongDetailViewController.swift
//  FirstExample
//
//  Created by Murat Aktaş on 6/2/22.
//

import UIKit

final class SongDetailViewController: UIViewController, Layouting {
	
	typealias ViewType = SongDetailView
	
	override func loadView() {
		view = ViewType.create()
	}
	
	var songImageName: String?
	var songName: String?
	
	convenience init(songName: String, songImageName: String) {
		self.init()
		self.songName = songName
		self.songImageName = songImageName
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		layoutableView.detailLabel.text = songName
		layoutableView.detailImageView.image = UIImage(named: songImageName ?? "")
	}
}
