{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Genomics.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Genomics.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The Google standard error code that best describes this failure.
data FailedEventCode
    = OK
      -- ^ @OK@
      -- Not an error; returned on success HTTP Mapping: 200 OK
    | Cancelled
      -- ^ @CANCELLED@
      -- The operation was cancelled, typically by the caller. HTTP Mapping: 499
      -- Client Closed Request
    | Unknown
      -- ^ @UNKNOWN@
      -- Unknown error. For example, this error may be returned when a \`Status\`
      -- value received from another address space belongs to an error space that
      -- is not known in this address space. Also errors raised by APIs that do
      -- not return enough error information may be converted to this error. HTTP
      -- Mapping: 500 Internal Server Error
    | InvalidArgument
      -- ^ @INVALID_ARGUMENT@
      -- The client specified an invalid argument. Note that this differs from
      -- \`FAILED_PRECONDITION\`. \`INVALID_ARGUMENT\` indicates arguments that
      -- are problematic regardless of the state of the system (e.g., a malformed
      -- file name). HTTP Mapping: 400 Bad Request
    | DeadlineExceeded
      -- ^ @DEADLINE_EXCEEDED@
      -- The deadline expired before the operation could complete. For operations
      -- that change the state of the system, this error may be returned even if
      -- the operation has completed successfully. For example, a successful
      -- response from a server could have been delayed long enough for the
      -- deadline to expire. HTTP Mapping: 504 Gateway Timeout
    | NotFound
      -- ^ @NOT_FOUND@
      -- Some requested entity (e.g., file or directory) was not found. Note to
      -- server developers: if a request is denied for an entire class of users,
      -- such as gradual feature rollout or undocumented whitelist, \`NOT_FOUND\`
      -- may be used. If a request is denied for some users within a class of
      -- users, such as user-based access control, \`PERMISSION_DENIED\` must be
      -- used. HTTP Mapping: 404 Not Found
    | AlreadyExists
      -- ^ @ALREADY_EXISTS@
      -- The entity that a client attempted to create (e.g., file or directory)
      -- already exists. HTTP Mapping: 409 Conflict
    | PermissionDenied
      -- ^ @PERMISSION_DENIED@
      -- The caller does not have permission to execute the specified operation.
      -- \`PERMISSION_DENIED\` must not be used for rejections caused by
      -- exhausting some resource (use \`RESOURCE_EXHAUSTED\` instead for those
      -- errors). \`PERMISSION_DENIED\` must not be used if the caller can not be
      -- identified (use \`UNAUTHENTICATED\` instead for those errors). This
      -- error code does not imply the request is valid or the requested entity
      -- exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
    | Unauthenticated
      -- ^ @UNAUTHENTICATED@
      -- The request does not have valid authentication credentials for the
      -- operation. HTTP Mapping: 401 Unauthorized
    | ResourceExhausted
      -- ^ @RESOURCE_EXHAUSTED@
      -- Some resource has been exhausted, perhaps a per-user quota, or perhaps
      -- the entire file system is out of space. HTTP Mapping: 429 Too Many
      -- Requests
    | FailedPrecondition
      -- ^ @FAILED_PRECONDITION@
      -- The operation was rejected because the system is not in a state required
      -- for the operation\'s execution. For example, the directory to be deleted
      -- is non-empty, an rmdir operation is applied to a non-directory, etc.
      -- Service implementors can use the following guidelines to decide between
      -- \`FAILED_PRECONDITION\`, \`ABORTED\`, and \`UNAVAILABLE\`: (a) Use
      -- \`UNAVAILABLE\` if the client can retry just the failing call. (b) Use
      -- \`ABORTED\` if the client should retry at a higher level (e.g., when a
      -- client-specified test-and-set fails, indicating the client should
      -- restart a read-modify-write sequence). (c) Use \`FAILED_PRECONDITION\`
      -- if the client should not retry until the system state has been
      -- explicitly fixed. E.g., if an \"rmdir\" fails because the directory is
      -- non-empty, \`FAILED_PRECONDITION\` should be returned since the client
      -- should not retry unless the files are deleted from the directory. HTTP
      -- Mapping: 400 Bad Request
    | Aborted
      -- ^ @ABORTED@
      -- The operation was aborted, typically due to a concurrency issue such as
      -- a sequencer check failure or transaction abort. See the guidelines above
      -- for deciding between \`FAILED_PRECONDITION\`, \`ABORTED\`, and
      -- \`UNAVAILABLE\`. HTTP Mapping: 409 Conflict
    | OutOfRange
      -- ^ @OUT_OF_RANGE@
      -- The operation was attempted past the valid range. E.g., seeking or
      -- reading past end-of-file. Unlike \`INVALID_ARGUMENT\`, this error
      -- indicates a problem that may be fixed if the system state changes. For
      -- example, a 32-bit file system will generate \`INVALID_ARGUMENT\` if
      -- asked to read at an offset that is not in the range [0,2^32-1], but it
      -- will generate \`OUT_OF_RANGE\` if asked to read from an offset past the
      -- current file size. There is a fair bit of overlap between
      -- \`FAILED_PRECONDITION\` and \`OUT_OF_RANGE\`. We recommend using
      -- \`OUT_OF_RANGE\` (the more specific error) when it applies so that
      -- callers who are iterating through a space can easily look for an
      -- \`OUT_OF_RANGE\` error to detect when they are done. HTTP Mapping: 400
      -- Bad Request
    | Unimplemented
      -- ^ @UNIMPLEMENTED@
      -- The operation is not implemented or is not supported\/enabled in this
      -- service. HTTP Mapping: 501 Not Implemented
    | Internal
      -- ^ @INTERNAL@
      -- Internal errors. This means that some invariants expected by the
      -- underlying system have been broken. This error code is reserved for
      -- serious errors. HTTP Mapping: 500 Internal Server Error
    | Unavailable
      -- ^ @UNAVAILABLE@
      -- The service is currently unavailable. This is most likely a transient
      -- condition, which can be corrected by retrying with a backoff. See the
      -- guidelines above for deciding between \`FAILED_PRECONDITION\`,
      -- \`ABORTED\`, and \`UNAVAILABLE\`. HTTP Mapping: 503 Service Unavailable
    | DataLoss
      -- ^ @DATA_LOSS@
      -- Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server
      -- Error
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FailedEventCode

instance FromHttpApiData FailedEventCode where
    parseQueryParam = \case
        "OK" -> Right OK
        "CANCELLED" -> Right Cancelled
        "UNKNOWN" -> Right Unknown
        "INVALID_ARGUMENT" -> Right InvalidArgument
        "DEADLINE_EXCEEDED" -> Right DeadlineExceeded
        "NOT_FOUND" -> Right NotFound
        "ALREADY_EXISTS" -> Right AlreadyExists
        "PERMISSION_DENIED" -> Right PermissionDenied
        "UNAUTHENTICATED" -> Right Unauthenticated
        "RESOURCE_EXHAUSTED" -> Right ResourceExhausted
        "FAILED_PRECONDITION" -> Right FailedPrecondition
        "ABORTED" -> Right Aborted
        "OUT_OF_RANGE" -> Right OutOfRange
        "UNIMPLEMENTED" -> Right Unimplemented
        "INTERNAL" -> Right Internal
        "UNAVAILABLE" -> Right Unavailable
        "DATA_LOSS" -> Right DataLoss
        x -> Left ("Unable to parse FailedEventCode from: " <> x)

instance ToHttpApiData FailedEventCode where
    toQueryParam = \case
        OK -> "OK"
        Cancelled -> "CANCELLED"
        Unknown -> "UNKNOWN"
        InvalidArgument -> "INVALID_ARGUMENT"
        DeadlineExceeded -> "DEADLINE_EXCEEDED"
        NotFound -> "NOT_FOUND"
        AlreadyExists -> "ALREADY_EXISTS"
        PermissionDenied -> "PERMISSION_DENIED"
        Unauthenticated -> "UNAUTHENTICATED"
        ResourceExhausted -> "RESOURCE_EXHAUSTED"
        FailedPrecondition -> "FAILED_PRECONDITION"
        Aborted -> "ABORTED"
        OutOfRange -> "OUT_OF_RANGE"
        Unimplemented -> "UNIMPLEMENTED"
        Internal -> "INTERNAL"
        Unavailable -> "UNAVAILABLE"
        DataLoss -> "DATA_LOSS"

instance FromJSON FailedEventCode where
    parseJSON = parseJSONText "FailedEventCode"

instance ToJSON FailedEventCode where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText
