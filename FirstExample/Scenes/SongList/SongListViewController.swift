//
//  SongListViewController.swift
//  FirstExample
//
//  Created by Murat Aktaş on 5/29/22.
//

import UIKit

final class SongListViewController: UIViewController, Layouting {
	
	var songNames: [String] = ["Song1", "Song2", "Song3", "Song4", "Song5"]
 
	var songImageNames: [String] = ["Image1", "Image2", "Image3", "Image4", "Image5"]
	
	typealias ViewType = SongListView
	override func loadView() {
		view = ViewType.create()

		layoutableView.tableView.dataSource = self
		layoutableView.tableView.delegate = self
		
	}
}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension SongListViewController: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return songNames.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = SongListTableViewCell(style: .default, reuseIdentifier: "SongListTableViewCell")
		cell.titleLabel.text = songNames[indexPath.row]
		cell.logoImageView.image = UIImage(named: songImageNames[indexPath.row])
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
		let name = songNames[indexPath.row]
		let imageName = songImageNames[indexPath.row]
		
		self.navigationController?.pushViewController(SongDetailViewController(songName: name, songImageName: imageName), animated: true)
	}
	
}
