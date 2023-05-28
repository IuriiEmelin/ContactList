//
//  DataStore.swift
//  ContactList
//
//  Created by Юрий Емелин on 26.05.2023.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    private init() { }
    
    let names: [String] =
    [
        "John",
        "Sara",
        "Richard",
        "Mira",
        "Alex",
        "Ofelia",
        "Nil",
        "Tina",
        "Garm",
        "Rose"
    ]
    
    let surnames: [String] =
    [
        "Cruz",
        "Garisson",
        "Armstrong",
        "Lars",
        "Vazovsky",
        "Bush",
        "Colmann",
        "Arno",
        "Potter",
        "Corver"
    ]
    
    let phoneNumbers: [String] =
    [
        "+1 111 232 9856",
        "+1 212 356 6794",
        "+1 433 658 7765",
        "+1 989 953 6664",
        "+1 132 845 0007",
        "+1 533 234 3434",
        "+1 999 742 3443",
        "+1 555 678 9888",
        "+1 321 234 5555",
        "+1 555 845 9991"
    ]
    
    let emails: [String] =
    [
        "qwerty@mail.ru",
        "hydra@gmail.com",
        "hyper@bk.ru",
        "contra@list.ru",
        "parol@yandex.ru",
        "corp@corp.biz",
        "wtc@memory.us",
        "romeforme@rorever.me",
        "joyforall@world.com",
        "pitbull@mail.ru"
    ]
}
