//
//  ListViewModel.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import Foundation
import IGListKit
import RxSwift

typealias ListViewModel<Element: ListDiffable> = BaseListViewModel<Element> & IListViewModel

class BaseListViewModel<Element: ListDiffable>: ViewModel {
    let elements = BehaviorSubject<[Element]>(value: [])
    var performUpdatesAnimated: Bool = true

    func bindToAdapter(_ adapter: ListAdapter) -> Disposable {
        return elements.subscribe(onNext: { [weak self] _ in
            guard let self = self else { return }
            adapter.performUpdates(animated: self.performUpdatesAnimated, completion: nil)
        })
    }

    @objc(objectsForListAdapter:) func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return elements.value ?? []
    }

    @objc(emptyViewForListAdapter:) func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
