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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.Groups.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.testIamPermissions@.
module Gogol.CloudIOT.Projects.Locations.Registries.Groups.TestIamPermissions
    (
    -- * Resource
      CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissionsResource

    -- ** Constructing a Request
    , CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions (..)
    , newCloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIOT.Types

-- | A resource alias for @cloudiot.projects.locations.registries.groups.testIamPermissions@ method which the
-- 'CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions' request conforms to.
type CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissionsResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "testIamPermissions"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
                       Core.:>
                       Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions' smart constructor.
data CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions = CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TestIamPermissionsRequest
      -- | REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions 
    ::  TestIamPermissionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
    -> CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions
newCloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions payload resource =
  CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions
         where
        type Rs
               CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions
             = TestIamPermissionsResponse
        type Scopes
               CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions
             = '[CloudPlatform'FullControl, Cloudiot'FullControl]
        requestClient
          CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudIOTService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissionsResource)
                      Core.mempty
