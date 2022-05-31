//
//  SongListView.swift
//  FirstExample
//
//  Created by Murat Aktaş on 5/29/22.
//

import UIKit

final class SongListView: UIView, Layoutable {
	
	lazy var tableView: UITableView = {
		
		let tableView = UITableView()
		tableView.backgroundColor = .black
		return tableView
	}()
	
	func setupViews() {
		backgroundColor = .black
		addSubview(tableView)
	}
	
	func setupLayout() {
		
		tableView.snp.makeConstraints { make in
			make.edges.equalToSuperview()
		}
		
	}
	
}
