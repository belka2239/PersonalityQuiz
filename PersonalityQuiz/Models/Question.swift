//
//  Question.swift
//  PersonalityQuiz
//
//  Created by VG on 03.03.2022.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .сat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .сat),
                    Answer(title: "Обниматься", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle)
                ]
            ),
            Question(
                title: "Любите ли вы поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавижу", animal: .сat),
                    Answer(title: "Нервничаю", animal: .rabbit),
                    Answer(title: "Не замечаю ", animal: .turtle),
                    Answer(title: "Обажаю", animal: .dog)
                ]
            )
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case сat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравиться быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .сat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравиться все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
