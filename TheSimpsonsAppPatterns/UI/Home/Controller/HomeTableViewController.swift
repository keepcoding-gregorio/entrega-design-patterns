//
//  HomeTableViewController.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import UIKit

class HomeTableViewController: UITableViewController, HomeViewProtocol {
    
    var viewModel: HomeViewModelProtocol?
    
    // MARK: - Table View Controller implementation -
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        registerCells()
        viewModel?.onViewsLoaded()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.totalCount ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeCellTableViewCell else {
            return UITableViewCell()
        }
        
        if let character = viewModel?.getCharacter(at: indexPath.row) {
            cell.updateViews(character: character)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.onItemSelected(at: indexPath.row)
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: "HomeCellTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
    
    // MARK: - HomeView protocol  implementation -
    func updateViews() {
        tableView.reloadData()
    }
    
    func navigateToDetail(with character: CharacterModel?) {
        let detailViewController = DetailViewController()
        detailViewController.viewModel = DetailViewModel(viewDelegate: detailViewController, character: character)
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    
}
