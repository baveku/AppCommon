//
//  CollectionController.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit
import IGListKit

class CollectionController<ViewModelType: IListViewModel>: ViewModelController<ViewModelType, CollectionView> {

    // MARK: - Properties

    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()

    var collectionView: CollectionView {
        return rootView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        adapter.collectionView = rootView
    }

    override func bindToViewModel() {
        super.bindToViewModel()
        adapter.dataSource = viewModel
        viewModel.bindToAdapter(adapter).disposed(by: disposeBag)
    }
}
