{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudFunctions.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CloudFunctions.Types
    (
    -- * Configuration
      cloudFunctionsService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** BuildConfig
    , BuildConfig (..)
    , newBuildConfig

    -- ** BuildConfig_DockerRegistry
    , BuildConfig_DockerRegistry (..)

    -- ** BuildConfig_EnvironmentVariables
    , BuildConfig_EnvironmentVariables (..)
    , newBuildConfig_EnvironmentVariables

    -- ** EventFilter
    , EventFilter (..)
    , newEventFilter

    -- ** EventTrigger
    , EventTrigger (..)
    , newEventTrigger

    -- ** EventTrigger_RetryPolicy
    , EventTrigger_RetryPolicy (..)

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** Function
    , Function (..)
    , newFunction

    -- ** Function_Environment
    , Function_Environment (..)

    -- ** Function_Labels
    , Function_Labels (..)
    , newFunction_Labels

    -- ** Function_State
    , Function_State (..)

    -- ** GenerateDownloadUrlRequest
    , GenerateDownloadUrlRequest (..)
    , newGenerateDownloadUrlRequest

    -- ** GenerateDownloadUrlResponse
    , GenerateDownloadUrlResponse (..)
    , newGenerateDownloadUrlResponse

    -- ** GenerateUploadUrlRequest
    , GenerateUploadUrlRequest (..)
    , newGenerateUploadUrlRequest

    -- ** GenerateUploadUrlResponse
    , GenerateUploadUrlResponse (..)
    , newGenerateUploadUrlResponse

    -- ** GoogleCloudFunctionsV2LocationMetadata
    , GoogleCloudFunctionsV2LocationMetadata (..)
    , newGoogleCloudFunctionsV2LocationMetadata

    -- ** GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem
    , GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem (..)

    -- ** GoogleCloudFunctionsV2OperationMetadata
    , GoogleCloudFunctionsV2OperationMetadata (..)
    , newGoogleCloudFunctionsV2OperationMetadata

    -- ** GoogleCloudFunctionsV2OperationMetadata_RequestResource
    , GoogleCloudFunctionsV2OperationMetadata_RequestResource (..)
    , newGoogleCloudFunctionsV2OperationMetadata_RequestResource

    -- ** GoogleCloudFunctionsV2Stage
    , GoogleCloudFunctionsV2Stage (..)
    , newGoogleCloudFunctionsV2Stage

    -- ** GoogleCloudFunctionsV2Stage_Name
    , GoogleCloudFunctionsV2Stage_Name (..)

    -- ** GoogleCloudFunctionsV2Stage_State
    , GoogleCloudFunctionsV2Stage_State (..)

    -- ** GoogleCloudFunctionsV2StateMessage
    , GoogleCloudFunctionsV2StateMessage (..)
    , newGoogleCloudFunctionsV2StateMessage

    -- ** GoogleCloudFunctionsV2StateMessage_Severity
    , GoogleCloudFunctionsV2StateMessage_Severity (..)

    -- ** GoogleCloudFunctionsV2alphaLocationMetadata
    , GoogleCloudFunctionsV2alphaLocationMetadata (..)
    , newGoogleCloudFunctionsV2alphaLocationMetadata

    -- ** GoogleCloudFunctionsV2alphaLocationMetadata_EnvironmentsItem
    , GoogleCloudFunctionsV2alphaLocationMetadata_EnvironmentsItem (..)

    -- ** GoogleCloudFunctionsV2alphaOperationMetadata
    , GoogleCloudFunctionsV2alphaOperationMetadata (..)
    , newGoogleCloudFunctionsV2alphaOperationMetadata

    -- ** GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource
    , GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource (..)
    , newGoogleCloudFunctionsV2alphaOperationMetadata_RequestResource

    -- ** GoogleCloudFunctionsV2alphaStage
    , GoogleCloudFunctionsV2alphaStage (..)
    , newGoogleCloudFunctionsV2alphaStage

    -- ** GoogleCloudFunctionsV2alphaStage_Name
    , GoogleCloudFunctionsV2alphaStage_Name (..)

    -- ** GoogleCloudFunctionsV2alphaStage_State
    , GoogleCloudFunctionsV2alphaStage_State (..)

    -- ** GoogleCloudFunctionsV2alphaStateMessage
    , GoogleCloudFunctionsV2alphaStateMessage (..)
    , newGoogleCloudFunctionsV2alphaStateMessage

    -- ** GoogleCloudFunctionsV2alphaStateMessage_Severity
    , GoogleCloudFunctionsV2alphaStateMessage_Severity (..)

    -- ** GoogleCloudFunctionsV2betaLocationMetadata
    , GoogleCloudFunctionsV2betaLocationMetadata (..)
    , newGoogleCloudFunctionsV2betaLocationMetadata

    -- ** GoogleCloudFunctionsV2betaLocationMetadata_EnvironmentsItem
    , GoogleCloudFunctionsV2betaLocationMetadata_EnvironmentsItem (..)

    -- ** GoogleCloudFunctionsV2betaOperationMetadata
    , GoogleCloudFunctionsV2betaOperationMetadata (..)
    , newGoogleCloudFunctionsV2betaOperationMetadata

    -- ** GoogleCloudFunctionsV2betaOperationMetadata_RequestResource
    , GoogleCloudFunctionsV2betaOperationMetadata_RequestResource (..)
    , newGoogleCloudFunctionsV2betaOperationMetadata_RequestResource

    -- ** GoogleCloudFunctionsV2betaStage
    , GoogleCloudFunctionsV2betaStage (..)
    , newGoogleCloudFunctionsV2betaStage

    -- ** GoogleCloudFunctionsV2betaStage_Name
    , GoogleCloudFunctionsV2betaStage_Name (..)

    -- ** GoogleCloudFunctionsV2betaStage_State
    , GoogleCloudFunctionsV2betaStage_State (..)

    -- ** GoogleCloudFunctionsV2betaStateMessage
    , GoogleCloudFunctionsV2betaStateMessage (..)
    , newGoogleCloudFunctionsV2betaStateMessage

    -- ** GoogleCloudFunctionsV2betaStateMessage_Severity
    , GoogleCloudFunctionsV2betaStateMessage_Severity (..)

    -- ** ListFunctionsResponse
    , ListFunctionsResponse (..)
    , newListFunctionsResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListRuntimesResponse
    , ListRuntimesResponse (..)
    , newListRuntimesResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OperationMetadataV1
    , OperationMetadataV1 (..)
    , newOperationMetadataV1

    -- ** OperationMetadataV1_Request
    , OperationMetadataV1_Request (..)
    , newOperationMetadataV1_Request

    -- ** OperationMetadataV1_Type
    , OperationMetadataV1_Type (..)

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** RepoSource
    , RepoSource (..)
    , newRepoSource

    -- ** Runtime
    , Runtime (..)
    , newRuntime

    -- ** Runtime_Environment
    , Runtime_Environment (..)

    -- ** Runtime_Stage
    , Runtime_Stage (..)

    -- ** SecretEnvVar
    , SecretEnvVar (..)
    , newSecretEnvVar

    -- ** SecretVersion
    , SecretVersion (..)
    , newSecretVersion

    -- ** SecretVolume
    , SecretVolume (..)
    , newSecretVolume

    -- ** ServiceConfig
    , ServiceConfig (..)
    , newServiceConfig

    -- ** ServiceConfig_EnvironmentVariables
    , ServiceConfig_EnvironmentVariables (..)
    , newServiceConfig_EnvironmentVariables

    -- ** ServiceConfig_IngressSettings
    , ServiceConfig_IngressSettings (..)

    -- ** ServiceConfig_SecurityLevel
    , ServiceConfig_SecurityLevel (..)

    -- ** ServiceConfig_VpcConnectorEgressSettings
    , ServiceConfig_VpcConnectorEgressSettings (..)

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** Source
    , Source (..)
    , newSource

    -- ** SourceProvenance
    , SourceProvenance (..)
    , newSourceProvenance

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StorageSource
    , StorageSource (..)
    , newStorageSource

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudFunctions.Internal.Product
import Gogol.CloudFunctions.Internal.Sum

-- | Default request referring to version @v2@ of the Cloud Functions API. This contains the host and root path used as a starting point for constructing service requests.
cloudFunctionsService :: Core.ServiceConfig
cloudFunctionsService
  = Core.defaultService
      (Core.ServiceId "cloudfunctions:v2")
      "cloudfunctions.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
