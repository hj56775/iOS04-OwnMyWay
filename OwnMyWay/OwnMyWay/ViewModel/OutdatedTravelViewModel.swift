//
//  OutdatedTravelViewModel.swift
//  OwnMyWay
//
//  Created by 강현준 on 2021/11/10.
//

import Foundation

protocol OutdatedTravelViewModel {
    var travel: Travel { get }
    var travelPublisher: Published<Travel>.Publisher { get }

    func didUpdateTravel(to travel: Travel)
    func didDeleteTravel() -> Result<Void, Error>
    func didTouchAddRecordButton()
    func didTouchRecordCell(at record: Record)
    func didTouchBackButton()
    func didTouchEditButton()
    func didUpdateRecord(record: Record)
}
