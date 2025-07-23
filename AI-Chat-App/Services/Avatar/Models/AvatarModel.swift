//
//  AvatarModel.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/24/25.
//

import Foundation

struct AvatarModel {
    let avatarId: String
    let name: String?
    let characterOption: CharacterOption?
    let characterAction: CharacterAction?
    let characterLocation: CharacterLocation?
    let profileImageName: String?
    let authorId: String?
    let dateCreated: Date?

    init(
        avatarId: String,
        name: String? = nil,
        characterOption: CharacterOption? = nil,
        characterAction: CharacterAction? = nil,
        characterLocation: CharacterLocation? = nil,
        profileImageName: String? = nil,
        authorId: String? = nil,
        dateCreated: Date? = nil
    ) {
        self.avatarId = avatarId
        self.name = name
        self.characterOption = characterOption
        self.characterAction = characterAction
        self.characterLocation = characterLocation
        self.profileImageName = profileImageName
        self.authorId = authorId
        self.dateCreated = dateCreated
    }

    var characterDescription: String? {
        AvatarDescriptionBuilder(avatar: self).characterDescription
    }

    static var mock: AvatarModel {
        mocks[0]
    }

    static var mocks: [AvatarModel] {
        return [
            .init(avatarId: UUID().uuidString,
                  name: "Alpha",
                  characterOption: .alien,
                  characterAction: .smiling,
                  characterLocation: .park,
                  profileImageName: Constants.randomImage,
                  authorId: UUID().uuidString,
                  dateCreated: .now),
            .init(avatarId: UUID().uuidString,
                  name: "Beta",
                  characterOption: .dog,
                  characterAction: .eating,
                  characterLocation: .forest,
                  profileImageName: Constants.randomImage,
                  authorId: UUID().uuidString,
                  dateCreated: .now),
            .init(avatarId: UUID().uuidString,
                  name: "Gamma",
                  characterOption: .cat,
                  characterAction: .drinking,
                  characterLocation: .museum,
                  profileImageName: Constants.randomImage,
                  authorId: UUID().uuidString,
                  dateCreated: .now),
            .init(avatarId: UUID().uuidString,
                  name: "Delta",
                  characterOption: .woman,
                  characterAction: .shopping,
                  characterLocation: .mall,
                  profileImageName: Constants.randomImage,
                  authorId: UUID().uuidString,
                  dateCreated: .now)
        ]
    }
}

struct AvatarDescriptionBuilder {
    let characterOption: CharacterOption
    let characterAction: CharacterAction
    let characterLocation: CharacterLocation

    init(characterOption: CharacterOption, characterAction: CharacterAction, characterLocation: CharacterLocation) {
        self.characterOption = characterOption
        self.characterAction = characterAction
        self.characterLocation = characterLocation
    }

    init(avatar: AvatarModel) {
        self.characterOption = avatar.characterOption ?? .default
        self.characterAction = avatar.characterAction ?? .default
        self.characterLocation = avatar.characterLocation ?? .default
    }

    var characterDescription: String {
        return "A \(characterOption.rawValue) that is \(characterAction.rawValue) in the \(characterLocation.rawValue)"
    }
}

enum CharacterOption: String {
    case man
    case woman
    case alien
    case dog
    case cat

    static var `default`: Self {
        .man
    }
}

enum CharacterAction: String {
    case smiling
    case sitting
    case eating
    case drinking
    case walking
    case shopping
    case studing
    case working
    case relaxing
    case fighting
    case cyring

    static var `default`: Self {
        .sitting
    }
}

enum CharacterLocation: String {
    case park
    case mall
    case museum
    case city
    case desert
    case forest
    case space

    static var `default`: Self {
        .space
    }
}
