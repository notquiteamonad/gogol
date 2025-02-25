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
-- Module      : Gogol.Composer.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Composer.Types
    (
    -- * Configuration
      composerService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AllowedIpRange
    , AllowedIpRange (..)
    , newAllowedIpRange

    -- ** CheckUpgradeResponse
    , CheckUpgradeResponse (..)
    , newCheckUpgradeResponse

    -- ** CheckUpgradeResponse_ContainsPypiModulesConflict
    , CheckUpgradeResponse_ContainsPypiModulesConflict (..)

    -- ** CheckUpgradeResponse_PypiDependencies
    , CheckUpgradeResponse_PypiDependencies (..)
    , newCheckUpgradeResponse_PypiDependencies

    -- ** CidrBlock
    , CidrBlock (..)
    , newCidrBlock

    -- ** DatabaseConfig
    , DatabaseConfig (..)
    , newDatabaseConfig

    -- ** DatabaseFailoverRequest
    , DatabaseFailoverRequest (..)
    , newDatabaseFailoverRequest

    -- ** DatabaseFailoverResponse
    , DatabaseFailoverResponse (..)
    , newDatabaseFailoverResponse

    -- ** Date
    , Date (..)
    , newDate

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EncryptionConfig
    , EncryptionConfig (..)
    , newEncryptionConfig

    -- ** Environment
    , Environment (..)
    , newEnvironment

    -- ** Environment_Labels
    , Environment_Labels (..)
    , newEnvironment_Labels

    -- ** Environment_State
    , Environment_State (..)

    -- ** EnvironmentConfig
    , EnvironmentConfig (..)
    , newEnvironmentConfig

    -- ** EnvironmentConfig_EnvironmentSize
    , EnvironmentConfig_EnvironmentSize (..)

    -- ** EnvironmentConfig_ResilienceMode
    , EnvironmentConfig_ResilienceMode (..)

    -- ** ExecuteAirflowCommandRequest
    , ExecuteAirflowCommandRequest (..)
    , newExecuteAirflowCommandRequest

    -- ** ExecuteAirflowCommandResponse
    , ExecuteAirflowCommandResponse (..)
    , newExecuteAirflowCommandResponse

    -- ** ExitInfo
    , ExitInfo (..)
    , newExitInfo

    -- ** FetchDatabasePropertiesResponse
    , FetchDatabasePropertiesResponse (..)
    , newFetchDatabasePropertiesResponse

    -- ** IPAllocationPolicy
    , IPAllocationPolicy (..)
    , newIPAllocationPolicy

    -- ** ImageVersion
    , ImageVersion (..)
    , newImageVersion

    -- ** Line
    , Line (..)
    , newLine

    -- ** ListEnvironmentsResponse
    , ListEnvironmentsResponse (..)
    , newListEnvironmentsResponse

    -- ** ListImageVersionsResponse
    , ListImageVersionsResponse (..)
    , newListImageVersionsResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** LoadSnapshotRequest
    , LoadSnapshotRequest (..)
    , newLoadSnapshotRequest

    -- ** LoadSnapshotResponse
    , LoadSnapshotResponse (..)
    , newLoadSnapshotResponse

    -- ** MaintenanceWindow
    , MaintenanceWindow (..)
    , newMaintenanceWindow

    -- ** MasterAuthorizedNetworksConfig
    , MasterAuthorizedNetworksConfig (..)
    , newMasterAuthorizedNetworksConfig

    -- ** NetworkingConfig
    , NetworkingConfig (..)
    , newNetworkingConfig

    -- ** NetworkingConfig_ConnectionType
    , NetworkingConfig_ConnectionType (..)

    -- ** NodeConfig
    , NodeConfig (..)
    , newNodeConfig

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OperationMetadata
    , OperationMetadata (..)
    , newOperationMetadata

    -- ** OperationMetadata_OperationType
    , OperationMetadata_OperationType (..)

    -- ** OperationMetadata_State
    , OperationMetadata_State (..)

    -- ** PollAirflowCommandRequest
    , PollAirflowCommandRequest (..)
    , newPollAirflowCommandRequest

    -- ** PollAirflowCommandResponse
    , PollAirflowCommandResponse (..)
    , newPollAirflowCommandResponse

    -- ** PrivateClusterConfig
    , PrivateClusterConfig (..)
    , newPrivateClusterConfig

    -- ** PrivateEnvironmentConfig
    , PrivateEnvironmentConfig (..)
    , newPrivateEnvironmentConfig

    -- ** RecoveryConfig
    , RecoveryConfig (..)
    , newRecoveryConfig

    -- ** SaveSnapshotRequest
    , SaveSnapshotRequest (..)
    , newSaveSnapshotRequest

    -- ** SaveSnapshotResponse
    , SaveSnapshotResponse (..)
    , newSaveSnapshotResponse

    -- ** ScheduledSnapshotsConfig
    , ScheduledSnapshotsConfig (..)
    , newScheduledSnapshotsConfig

    -- ** SchedulerResource
    , SchedulerResource (..)
    , newSchedulerResource

    -- ** SoftwareConfig
    , SoftwareConfig (..)
    , newSoftwareConfig

    -- ** SoftwareConfig_AirflowConfigOverrides
    , SoftwareConfig_AirflowConfigOverrides (..)
    , newSoftwareConfig_AirflowConfigOverrides

    -- ** SoftwareConfig_EnvVariables
    , SoftwareConfig_EnvVariables (..)
    , newSoftwareConfig_EnvVariables

    -- ** SoftwareConfig_PypiPackages
    , SoftwareConfig_PypiPackages (..)
    , newSoftwareConfig_PypiPackages

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StopAirflowCommandRequest
    , StopAirflowCommandRequest (..)
    , newStopAirflowCommandRequest

    -- ** StopAirflowCommandResponse
    , StopAirflowCommandResponse (..)
    , newStopAirflowCommandResponse

    -- ** WebServerConfig
    , WebServerConfig (..)
    , newWebServerConfig

    -- ** WebServerNetworkAccessControl
    , WebServerNetworkAccessControl (..)
    , newWebServerNetworkAccessControl

    -- ** WebServerResource
    , WebServerResource (..)
    , newWebServerResource

    -- ** WorkerResource
    , WorkerResource (..)
    , newWorkerResource

    -- ** WorkloadsConfig
    , WorkloadsConfig (..)
    , newWorkloadsConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Composer.Internal.Product
import Gogol.Composer.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Composer API. This contains the host and root path used as a starting point for constructing service requests.
composerService :: Core.ServiceConfig
composerService
  = Core.defaultService (Core.ServiceId "composer:v1")
      "composer.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
