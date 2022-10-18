//
//  DataManager.swift
//  Contact
//
//  Created by Buba on 18.10.2022.
//

class DataManager{
    let names = [
        "Алексей",
        "Иван",
        "Павел",
        "Игорь",
        "Александр",
        "Илья",
        "Роман",
        "Андрей"
    ].shuffled()
    
    let lastNames = [
        "Иванов",
        "Петров",
        "Сидоров",
        "Ахмедов",
        "Филимонов",
        "Тихонов",
        "Гусев",
        "Дубов"
    ].shuffled()
    
    let phoneNumbers = [
        "89037821217",
        "89165438790",
        "89264573972",
        "89057651298",
        "89037896524",
        "89096549841",
        "89057809846",
        "89261987616"
    ].shuffled()
    
    let emails = [
        "ivanov@mail.com",
        "penrov@mail.com",
        "sidorov@mail.com",
        "ahmedov@mail.com",
        "filimonov@mail.com",
        "tihonov@mail.com",
        "gusev@mail.com",
        "dybov@mail.com"
    ].shuffled()
    
    var persons: [Person] {
        getPerson()
    }
    
    private func getPerson() -> [Person] {
        var persons: [Person] = []
        
        for index in 0..<names.count {
            persons.append(Person(
                name: names[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            ))
        }
        return persons
    }
}
