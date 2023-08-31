//
//  OnboardngModel.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 08.07.2023.
//

import Foundation

struct OnboardingItemModel: Hashable {
    let image: String
    let pageImage: String
    let title: String
    let description: String
}

extension OnboardingItemModel {
    static let modelsArray = [
        OnboardingItemModel(image: "onboardingFirst", pageImage: "page1", title: "Keytar sweenet", description: "Portland ugh fashion axe Helvetica. Echo Park Austin gastropub roof party."),
        OnboardingItemModel(image: "onboardingSecond", pageImage: "page2", title: "Synth polaroid", description: "In the tumultuous business of cutting-in and attending to a whale, there."),
        OnboardingItemModel(image: "onboardingThird", pageImage: "page3", title: "Retro occupy", description: "Being the savage's bowsman, that is, the person who pulled the bow-oar in.")
    ]
}
