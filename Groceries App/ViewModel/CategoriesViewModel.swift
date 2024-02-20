//
//  CategoriesViewModel.swift
//  Groceries App
//
//  Created by Fazli Altun on 21.02.2024.
//

import UIKit

struct CategoriesViewModel {
    let categoriesList: [CategoriesViewController.CategoryCardModel] =
    [
        .init(categoryLabel: "Frash Fruits & Vegetable", categoryImage: Images.Category.fruitsVegs, categoryColor: UIColor.Cards.fruitVeg, categoryBorderColor: UIColor.Cards.fruitVeg),
        .init(categoryLabel: "Beverages", categoryImage: Images.Category.beverages, categoryColor: UIColor.Cards.beverage, categoryBorderColor: UIColor.Cards.beverage),
        .init(categoryLabel: "Bakery and Snacks", categoryImage: Images.Category.bakery, categoryColor: UIColor.Cards.bakery, categoryBorderColor: UIColor.Cards.bakery),
        .init(categoryLabel: "Cooking Oil & Ghee", categoryImage: Images.Category.oils, categoryColor: UIColor.Cards.oils, categoryBorderColor: UIColor.Cards.oils),
        .init(categoryLabel: "Dairy & Eggs", categoryImage: Images.Category.dairyEggs, categoryColor: UIColor.Cards.dairyEggs, categoryBorderColor: UIColor.Cards.dairyEggs),
        .init(categoryLabel: "Meat & Fish", categoryImage: Images.Category.meatFish, categoryColor: UIColor.Cards.meatFish, categoryBorderColor: UIColor.Cards.meatFish),
        .init(categoryLabel: "Cooking Oil & Ghee", categoryImage: Images.Category.oils, categoryColor: UIColor.Cards.oils, categoryBorderColor: UIColor.Cards.oils),
        .init(categoryLabel: "Dairy & Eggs", categoryImage: Images.Category.dairyEggs, categoryColor: UIColor.Cards.dairyEggs, categoryBorderColor: UIColor.Cards.dairyEggs),
        .init(categoryLabel: "Meat & Fish", categoryImage: Images.Category.meatFish, categoryColor: UIColor.Cards.meatFish, categoryBorderColor: UIColor.Cards.meatFish),
        .init(categoryLabel: "Beverages", categoryImage: Images.Category.beverages, categoryColor: UIColor.Cards.beverage, categoryBorderColor: UIColor.Cards.beverage)
    ]
}
