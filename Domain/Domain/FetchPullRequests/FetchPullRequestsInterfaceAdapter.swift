//
//  FetchPullRequestsInterfaceAdapter.swift
//  Domain
//
//  Created by Victor C Tavernari on 04/04/20.
//  Copyright (c) 2020 Taverna Apps. All rights reserved.
//
//  This file was generated by BLU Clean
//

import Foundation

public protocol FetchPullRequestsInterfaceAdapter {
    func doing()
    func done(data: [GitPullRequest])
    func failure(error: Error)
}
