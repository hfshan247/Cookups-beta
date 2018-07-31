//
//  Backup.swift
//  Cookups
//
//  Created by HF Shan on 7/31/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import Foundation
import UIKit
class Backup{
    //==>Ingredients
    //Names List:
    let IngredientImageNames: [UIImage] = [
        UIImage(named:"AlmondMilk")!,
        UIImage(named:"BanavatiMakkhan")!,
        UIImage(named:"ChocolateChips")!,
        UIImage(named:"CoconutOil")!,
        UIImage(named:"GoldLeaves")!,
        UIImage(named:"HoisinSauce")!,
        UIImage(named:"Jelly")!,
        UIImage(named:"Jus")!,
        UIImage(named:"Mayonnaise")!,
        UIImage(named:"Meringue")!,
        UIImage(named:"Paan")!,
        UIImage(named:"Pasta")!,
        UIImage(named:"Petha")!,
        UIImage(named:"RedWineVinegar")!,
        UIImage(named:"RiceFlour")!,
        UIImage(named:"RiceVinegar")!,
        UIImage(named:"Roux")!,
        UIImage(named:"TomatoPuree")!,
        UIImage(named:"VegetableOil")!,
        UIImage(named:"WhiteWine")!,
        UIImage(named:"Yeast")!
    ]
    
    //Labels List:
    let IngredientTitles = [
        "Almond Milk (Badam Milk)",
        "Banavati Makkhan",
        "Chocolate Chips",
        "Coconut Oil",
        "Gold Leaves",
        "Hoisin Sauce",
        "Jelly",
        "Jus",
        "Mayonnaise",
        "Meringue",
        "Paan",
        "Pasta",
        "Petha",
        "RedWine Vinegar",
        "Rice Flour",
        "Rice Vinegar",
        "Roux",
        "Tomato Puree",
        "Vegetable Oil",
        "White Wine",
        "Yeast"
    ]
    //...............................................
    
    
    //==>Fish
    //Names List:
    let FishImageNames: [UIImage] = [
        UIImage(named:"JelliedEels")!,
        UIImage(named:"Monkfish")!,
        UIImage(named:"Pomfret")!,
        UIImage(named:"SwordFish")!
        ]
    //Labels List:
    let FishTitles = [
        "JelliedEels",
        "Monkfish",
        "Pomfret",
        "SwordFish"
        ]
    //...............................................
    //==>Drink
    //Names List:
    let DrinkImageNames: [UIImage] = [
        UIImage(named:"BlackCoffee")!,
        UIImage(named:"Cider")!,
        UIImage(named:"Cocktail")!,
        UIImage(named:"Crema")!,
        UIImage(named:"LemonCola")!,
        UIImage(named:"Lemonide")!,
        UIImage(named:"LemonTea")!,
        UIImage(named:"OolongTea")!,
        UIImage(named:"OrangeJuice")!,
        UIImage(named:"Whisky")!,
    ]
    //Labels List:
    let DrinkTitles = [
        "BlackCoffee",
        "Cider",
        "Cocktail",
        "Crema",
        "LemonCola",
        "Lemonide",
        "LemonTea",
        "OolongTea",
        "OrangeJuice",
        "Whisky"
    ]
    //...............................................
    
    //==>Filters
    //Names List:
    
    //Labels List:
    //...............................................
    
    //==>Chicken
    //Names List:
    let ChickenImageNames: [UIImage] = [
        UIImage(named:"ChickenMarsala")!,
        UIImage(named:"ChickenRiceApple")!,
        UIImage(named:"ChickenSandwichWithMeltedCheese")!,
        UIImage(named:"ChickenStirFried")!,
        UIImage(named:"ChickenStroganoff")!,
        UIImage(named:"CoconutRiceChicken")!,
        UIImage(named:"CurriedChicken")!,
        UIImage(named:"GarlicRoastChicken")!,
        UIImage(named:"GrilledChickenParmesan")!,
        UIImage(named:"IndividualChickenPotpies")!,
        UIImage(named:"TahiniRoastedChicken")!
    ]
    //Labels List:
    let ChickenTitles = [
        "ChickenMarsala",
        "ChickenRiceApple",
        "ChickenSandwichWithMeltedCheese",
        "ChickenStirFried",
        "ChickenStroganoff",
        "CoconutRiceChicken",
        "CurriedChicken",
        "GarlicRoastChicken",
        "GrilledChickenParmesan",
        "IndividualChickenPotpies",
        "TahiniRoastedChicken"
        ]
    //...............................................
    //==>Pizza
    //Names List:
    let PizzaImageNames: [UIImage] =  [
        UIImage(named:"GoldenChickenDelight")!,
        UIImage(named:"CheeseBarbequeChicken")!,
        UIImage(named:"CheesePepperoniPizza")!,
        UIImage(named:"ChickenMexicanRedWavePizza")!,
        UIImage(named:"DoubleCheesePizza")!,
        UIImage(named:"GourmetPizza")!,
        UIImage(named:"MargheritaPizza")!,
        UIImage(named:"MeatzaaPizza")!,
        UIImage(named:"MexicanGreenWavePizza")!,
        UIImage(named:"PeppyPaneer")!
    ]
    
    //Labels List:
    let PizzaTitles  = [
        "GoldenChickenDelight",
        "CheeseBarbequeChicken",
        "CheesePepperoniPizza",
        "ChickenMexicanRedWavePizza",
        "DoubleCheesePizza",
        "GourmetPizza",
        "MargheritaPizza",
        "MeatzaaPizza",
        "MexicanGreenWavePizza",
        "PeppyPaneer"
    ]
    //...............................................
    //==> Burgers:
    //Names List:
    let burgerNames: [UIImage] = [
        UIImage(named:"CheeseBurger")!,
        UIImage(named:"BaconCheese")!,
        UIImage(named:"CaramelizedOnion")!,
        UIImage(named:"JuicyLucy")!,
        UIImage(named:"EnglishCheddar")!,
        UIImage(named:"HolsinBurger")!,
        UIImage(named:"ChipotleCorn")!,
        UIImage(named:"ThaiPork")!,
        UIImage(named:"CreoleCrab")!,
        UIImage(named:"MiddleEastern")!,
        UIImage(named:"Saltimbocca")!,
        ]
    
    //Labels List:
    let burgerTitles = [
    "Cheese Burger Burger",
    "Bacon Cheese Burger",
    "Caramelized Onion Burger",
    "Juicy Lucy Burger",
    "English Cheddar Burger",
    "Holsin Burger Burger",
    "Chipotle Corn Burger",
    "Thai Pork Burger",
    "Creole Crab Burger",
    "Middle Eastern Burger",
    "Saltimbocca Burger",
    ]
   // ...............................................
    
    
    

}
