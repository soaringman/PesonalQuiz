//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 08.02.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var answersChoosen: [Answer] = []
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    
    
    // Передать сюда массив с ответами
    // Определить наиболее часто встречающийся тип животного
    // Отобразить результат в соответсвии с этим животным.
    // Избавиться от кнопки возврата назад на экране результатов

    override func viewDidLoad() {
        super.viewDidLoad()
        let currentValuesOfAnimals = valuesOfAnimals(answers: answersChoosen)
        let animalOfMaxValue = maxValueOfAnimal(animals: currentValuesOfAnimals)
        descriptionLabel.text = "Вы - \(animalOfMaxValue)"
        descriptionText.text = animalOfMaxValue.description
        
    }

}

private func valuesOfAnimals(answers:[Answer]) -> [String: Int]{
    
            var dog = 0
            var cat = 0
            var rabbit = 0
            var turtle = 0
            
            for animal in answers {
                if animal.type == .dog {
                    dog += 1
                    print(dog)
                } else if animal.type == .cat {
                    cat += 1
                    print(cat)
                } else if animal.type == .rabbit {
                    rabbit += 1
                    print(rabbit)
                } else if animal.type == .turtle {
                    turtle += 1
                    print(turtle)
                }
            }
    return ["Dog": dog, "Cat": cat, "Rabbit": rabbit, "Turtle": turtle]
        }

private func  maxValueOfAnimal(animals:[String:Int]) -> String {
    var chosenAnimal = animals.first!
    for animal in animals {
        if chosenAnimal.value < animal.value {
        chosenAnimal = animal
        }
    }
    return chosenAnimal.key
}

//private func privedenie(animal: String) -> Character {
//    if animal == AnimalType.cat.rawValue {
//    
//}






