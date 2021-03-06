//
//  FetchPullRequestsUseCase.swift
//  Domain
//
//  Created by Victor C Tavernari on 04/04/20.
//  Copyright (c) 2020 Taverna Apps. All rights reserved.
//
//  This file was generated by Mobiplus Clean
//

import Foundation

public class FetchPullRequestsUseCase: FetchPullRequestsUseCaseInterface {
    public var delegateInterfaceAdapter: FetchPullRequestsInterfaceAdapter?

    private let repository: GitPullRequestRepositoryInterface

    public init(repository: GitPullRequestRepositoryInterface) {
        self.repository = repository
    }

    public func execute(repo: GitRepository) {
        delegateInterfaceAdapter?.doing()
        repository.list(repo: repo) { result in
            do {
                let pullRequests = try result.handle()
                self.delegateInterfaceAdapter?.done(data: pullRequests)
            } catch { self.delegateInterfaceAdapter?.failure(error: error) }
        }
    }
}
