//
//  TableViewController.swift
//  sample_app
//
//  Created by Kosuke Matsusaki on 2020/11/02.
//  Copyright © 2020 Kosuke Matsusaki. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.dataSource = self
            tableView.delegate = self
            tableView.register(TableViewCell.self, forCellReuseIdentifier: NSStringFromClass(TableViewCell.self))
            tableView.tableFooterView = UIView(frame: .zero)
        }
    }
    let items = ["桃太郎", "浦島太郎", "金太郎"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "日本昔話一覧"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    private func showScrollView(title: String){
        let toVC = ScrollViewController(title: title)
        navigationController?.pushViewController(toVC, animated: true)
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(TableViewCell.self), for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.accessoryType = TableViewCell.AccessoryType.disclosureIndicator
        return cell
    }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
            case 0:
                showScrollView(title: "momotaro")
            case 1:
                showScrollView(title: "urasimataro")
            default:
                showScrollView(title: "kintaro")
        }
    }
}
