//
//  OnboardngModel.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 08.07.2023.
//

import Foundation

struct OnboardingModel: Hashable {
    var image: String
    var pageImage: String
    var title: String
    var description: String
}

extension OnboardingModel {
    static let modelsArray = [
        OnboardingModel(image: "onboardingFirst", pageImage: "page1", title: "Keytar sweenet", description: "Portland ugh fashion axe Helvetica. Echo Park Austin gastropub roof party."),
        OnboardingModel(image: "onboardingSecond", pageImage: "page2", title: "Synth polaroid", description: "In the tumultuous business of cutting-in and attending to a whale, there."),
        OnboardingModel(image: "onboardingThird", pageImage: "page3", title: "Retro occupy", description: "Being the savage's bowsman, that is, the person who pulled the bow-oar in.")
    ]
}
