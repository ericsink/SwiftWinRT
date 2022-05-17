// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import CWinRT

// TODO this is a dreadfully bad solution to the problem
// of needing an initializer for an arbitrary type.

public func defaultValue<T>() -> T {
    let ptr = UnsafeMutablePointer<T>.allocate(capacity: 1)
    let retval = ptr.pointee
    ptr.deallocate()
    return retval;
}

