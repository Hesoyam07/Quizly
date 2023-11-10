//
//  QuizBrain.swift
//  quizly
//
//  Created by Дмитрий on 09.11.2023.
//

import Foundation

struct QuizBrain {
    let quizQuestions = [ Question(q: "Строительство Эйфелевой башни было завершено 31 марта 1887 года.?", a: "False"),
                          Question(q: "Молнию можно увидеть раньше, чем услышать?", a: "True"),
                          Question(q: "Мельбурн — столица Австралии", a: "False"),
                          Question(q: "Пенициллин был открыт во Вьетнаме для лечения малярии", a: "False"),
                          Question(q: "Гора Фудзи - самая высокая гора в Японии", a: "True"),
                          Question(q: "Брокколи содержит больше витамина С, чем лимоны.", a: "True"),
                          Question(q: "Череп – самая крепкая кость в человеческом теле.", a: "False"),
                          Question(q: "Лампочки были изобретением Томаса Эдисона.", a: "False"),
                          Question(q: "Google изначально назывался BackRub", a: "True"),
                          Question(q: "Черный ящик в самолете черный", a: "False"),
                          Question(q: "Помидоры - это фрукты", a: "True"),
                          Question(q: "Атмосфера Меркурия состоит из углекислого газа.", a: "False"),
                          Question(q: "Депрессия является основной причиной инвалидности во всем мире.", a: "True"),
                          Question(q: "Клеопатра была египетского происхождения", a: "False"),
                          Question(q: "Вы можете чихать во сне", a: "False"),
                          Question(q: "Невозможно чихнуть, когда вы открываете глаза", a: "True"),
                          Question(q: "Бананы - это ягоды", a: "True"),
                          Question(q: "Если сложить вместе два числа на противоположных сторонах игральной кости, ответ всегда будет 7", a: "True"),
                          Question(q: "Морские гребешки не видят", a: "False"),
                          Question(q: "Улитка может спать до 1 месяца", a: "False"),
                          Question(q: "Ваш нос производит почти один литр слизи в день", a: "True"),
                          Question(q: "Сопли полезны для вашего организма", a: "True"),
                          Question(q: "Coca-Cola существует во всех странах мира", a: "False"),
                          Question(q: "Шелк паука когда-то использовался для изготовления гитарных струн.", a: "False"),
                          Question(q: "Кокос — это орех", a: "True"),
                          Question(q: "Курица может жить без головы еще долго после того, как ее отрубят", a: "True"),
                          Question(q: "ДНК людей на 95 процентов совпадает с бананами", a: "False"),
                          Question(q: "Жирафы говорят му", a: "True"),
                          Question(q: "В Аризоне, США, за спиливание кактуса могут осудить", a: "True"),
                          Question(q: "В Тушине, Польша, Винни-Пух запрещен на детских площадках", a: "True"),
                          Question(q: "Кофе готовят из ягод", a: "True")]
    var questionNumber = 0
    var score = 0
    mutating func checkAnswer (_ userAnswer: String) -> Bool {
        
        if userAnswer == quizQuestions[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText () -> String {
        return quizQuestions[questionNumber].text
    }
    
    func getProgress () -> Float {
        return Float(questionNumber)/Float(quizQuestions.count)
    }
    
    mutating func nextQuestion () {
        if questionNumber + 1 < quizQuestions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore () -> Int {
        
        return score
    }
}
