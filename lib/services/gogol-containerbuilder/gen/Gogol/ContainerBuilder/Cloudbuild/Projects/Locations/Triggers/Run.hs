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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Run
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a @BuildTrigger@ at a particular source revision. To run a regional or global trigger, use the POST request that includes the location endpoint in the path (ex. v1\/projects\/{projectId}\/locations\/{region}\/triggers\/{triggerId}:run). The POST request that does not include the location endpoint in the path can only be used when running global triggers.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.run@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Run
    (
    -- * Resource
      CloudbuildProjectsLocationsTriggersRunResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsTriggersRun (..)
    , newCloudbuildProjectsLocationsTriggersRun
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.triggers.run@ method which the
-- 'CloudbuildProjectsLocationsTriggersRun' request conforms to.
type CloudbuildProjectsLocationsTriggersRunResource =
     "v1" Core.:>
       Core.CaptureMode "name" "run" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RunBuildTriggerRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Runs a @BuildTrigger@ at a particular source revision. To run a regional or global trigger, use the POST request that includes the location endpoint in the path (ex. v1\/projects\/{projectId}\/locations\/{region}\/triggers\/{triggerId}:run). The POST request that does not include the location endpoint in the path can only be used when running global triggers.
--
-- /See:/ 'newCloudbuildProjectsLocationsTriggersRun' smart constructor.
data CloudbuildProjectsLocationsTriggersRun = CloudbuildProjectsLocationsTriggersRun
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the @Trigger@ to run. Format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: RunBuildTriggerRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsTriggersRun' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsTriggersRun 
    ::  Core.Text
       -- ^  The name of the @Trigger@ to run. Format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@ See 'name'.
    -> RunBuildTriggerRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbuildProjectsLocationsTriggersRun
newCloudbuildProjectsLocationsTriggersRun name payload =
  CloudbuildProjectsLocationsTriggersRun
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsTriggersRun
         where
        type Rs CloudbuildProjectsLocationsTriggersRun =
             Operation
        type Scopes CloudbuildProjectsLocationsTriggersRun =
             '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsTriggersRun{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsTriggersRunResource)
                      Core.mempty
