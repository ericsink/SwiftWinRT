// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

#ifndef CWinRT_CWinRT_h
#define CWinRT_CWinRT_h

#include <wtypesbase.h>
#include <minwindef.h>
#include <winnt.h>
#include <combaseapi.h>
#include <libloaderapi.h>

#include <roapi.h>
#include <winstring.h>

// TODO should get these by including MddBoostrap.h,
// but it's in a nuget package, so we're working around
// Swift's (obvious) lack of support for nuget.

STDAPI MddBootstrapInitialize(
    UINT32 majorMinorVersion,
    PCWSTR versionTag,
    UINT64 minVersion
    );

STDAPI MddBootstrapInitialize2(
    UINT32 majorMinorVersion,
    PCWSTR versionTag,
    UINT64 minVersion,
    UINT32 options
    );

// the following file contains stuff that is automatically generated from winmd
#include <Win2D.h>

#pragma comment(lib, "runtimeobject")

#endif
