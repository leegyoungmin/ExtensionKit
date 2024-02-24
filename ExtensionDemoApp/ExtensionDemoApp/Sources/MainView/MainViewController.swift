//
//  MainViewController.swift
//  ExtensionDemoApp
//
//  Copyright (c) 2024 Minii All rights reserved.

import UIKit

import ExtensionKit

final class MainViewController: ViewController {
  private let tableView: UITableView = {
    let tableView = UITableView()
    return tableView
  }()
  
  override func configureHierarchy() {
    super.configureHierarchy()
    
    view.addSubview(tableView)
  }
  
  override func makeConstraints() {
    super.makeConstraints()
    
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
      tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
    ])
  }
}
