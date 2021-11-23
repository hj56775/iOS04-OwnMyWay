//
//  CompleteCreationViewController.swift
//  OwnMyWay
//
//  Created by 이청수 on 2021/11/09.
//

import UIKit

class CompleteCreationViewController: UIViewController, Instantiable {

    @IBOutlet private weak var nextButtonHeightConstraint: NSLayoutConstraint!

    private var viewModel: CompleteCreationViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel?.bind { [weak self] error in
            ErrorManager.showAlert(with: error, to: self)
        }
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.configureButtonConstraint()
    }

    func bind(viewModel: CompleteCreationViewModel) {
        self.viewModel = viewModel
    }

    private func configureButtonConstraint() {
        let bottomPadding = self.view.safeAreaInsets.bottom
        self.nextButtonHeightConstraint.constant = 60 + bottomPadding
    }

    @IBAction func didTouchCompleteButton(_ sender: UIButton) {
        self.viewModel?.didTouchCompleteButton()
    }

}
