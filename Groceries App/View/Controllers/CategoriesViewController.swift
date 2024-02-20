//
//  CategoriesViewController.swift
//  Groceries App
//
//  Created by Fazli Altun on 20.02.2024.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    var router: Router
    var viewModel = CategoriesViewModel()
    
    struct CategoryCardModel {
        let categoryLabel: String
        let categoryImage: UIImage
        let categoryColor: UIColor
        let categoryBorderColor: UIColor
    }
    
    lazy var categoryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let categoryCollectionView = UICollectionView(frame: .zero,collectionViewLayout: layout )
        categoryCollectionView.showsVerticalScrollIndicator = false
        categoryCollectionView.register(CategoryViewCell.self, forCellWithReuseIdentifier: CategoryViewCell.identifier)
        categoryCollectionView.translatesAutoresizingMaskIntoConstraints = false
        return categoryCollectionView
    }()
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search Store"
        searchBar.searchBarStyle = .minimal
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    init(router: Router) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Find Products"
        navigationItem.setHidesBackButton(true, animated: false)
        categoryCollectionView.dataSource = self
        categoryCollectionView.delegate = self
        setupLayout()
    }
    
    private func setupLayout() {
        view.addSubview(searchBar)
        view.addSubview(categoryCollectionView)
        
        NSLayoutConstraint.activate([
            //Category Collection View
            categoryCollectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 16),
            categoryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            categoryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            categoryCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 8),
            //Search Bar
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}

extension CategoriesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.categoriesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: CategoryViewCell.identifier, for: indexPath) as? CategoryViewCell else { return UICollectionViewCell() }
        let item = viewModel.categoriesList[indexPath.row]
        cell.model = item
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 180)
    }
}
