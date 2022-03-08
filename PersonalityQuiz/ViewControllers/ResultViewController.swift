//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by VG on 04.03.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var animalTypeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResultVC()
    }

    private func updateResultVC() {
        var frequentAnimals: [Animal: Int] = [:]
        let animals = answers.map{ $0.animal }
        
        for animal in animals {
            if let animalTypeCount = frequentAnimals[animal] {
                frequentAnimals.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                frequentAnimals[animal] = 1
            }
        }
        
        let sortedFrequentAnimals = frequentAnimals.sorted { $0.value > $1.value }
        guard let mostFrequentAnimals = sortedFrequentAnimals.first?.key else { return }
        
        updateUI(with: mostFrequentAnimals)
    }
    
    private func updateUI(with animal: Animal) {
        animalTypeLabel.text = "Вы - \(animal.rawValue)!"
        descriptionLabel.text = animal.definition
    }
}
