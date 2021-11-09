//
//  AddLandmarkViewModel.swift
//  OwnMyWay
//
//  Created by 김우재 on 2021/11/08.
//

import Foundation

protocol AddLandmarkViewModelType {
    var travel: Travel { get }
    func nextButtonTouched()
    func backButtonTouched()
    func travelDidUpdate(travel: Travel)
}

protocol AddLandmarkCoordinatingDelegate: AnyObject {
    func pushToCompleteCreation(travel: Travel)
    func popToCreateTravel(travel: Travel)
}

class AddLandmarkViewModel: AddLandmarkViewModelType {
    var travel: Travel
    private weak var coordinator: AddLandmarkCoordinatingDelegate?

    init(travel: Travel, coordinator: AddLandmarkCoordinatingDelegate) {
        self.travel = travel
        self.coordinator = coordinator
    }

    func nextButtonTouched() {
        self.coordinator?.pushToCompleteCreation(travel: travel)
    }

    func backButtonTouched() {
        self.coordinator?.popToCreateTravel(travel: travel)
    }

    func travelDidUpdate(travel: Travel) {
        self.travel = travel
    }
}
