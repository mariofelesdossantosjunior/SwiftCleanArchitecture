//
//  PullRequestDetailsViewModelInterface.swift
//  Presentation
//
//  Created by Victor C Tavernari on 05/04/20.
//  Copyright (c) 2020 Taverna Apps. All rights reserved.
//
//  This file was generated by Mobiplus Clean
//

import Domain

protocol PullRequestDetailsViewModelInterface {
    var route: Observable<PullRequestDetailsViewModelRoute> { get }
    var isLoading: Observable<Bool> { get }
    var failMessage: Observable<String?> { get }
    var pullRequest: Observable<GitPullRequest?> { get }

    func load(pullRequestid: Int, fromRepo repo: GitRepository)
}
