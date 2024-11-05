//
//  User.swift
//  LoginApp_*
//
//  Created by Артем Иванов on 31.10.2024.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    static func getUser () -> User {
        User(
            login: "Admin",
            password: "Admin",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Артем",
            surname: "Иванов",
            photo: "",
            bio: "Я родился во Всеволожске в 1986 году и детство провел там же. На данный момент проживаю в Санкт-Петербурге. Долгое время работал в должности Инженера конструктора и Инженера проектировщика, разрабатывал промышленную автоматику для болшой энергетики и сопутствующих отраслей, это включало в себя разработку документации и программного обеспечения для PLС и SCADA. В последнее время задумался серьезно поменять профессию и решил пойти на курс разработки iOS-приложений, так как само программирование не является для меня чем то новым. Для того, чтобы спокойно пройти курс iOS-разработки я взял отпуск по уходу за ребенком, так как текущая работа не даст мне возможности пройти курс. Надеюсь этот курс позволит мне в достаточной мере изучить iOS-разработку и получить возможность работать в этой отрасли.",
            
            job: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let jobTitle: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "ООО ПФ АСК",
            jobTitle: .designEnginer,
            department: .designBureau
        )
    }
}

enum JobTitle: String {
    case designEnginer = "Инженер конструктор"
    case developer = "Разработчик САУ"
}

enum Department: String {
    case designBureau = "ОГК"
    case developmentBureau = "Бюро разработки"
}
