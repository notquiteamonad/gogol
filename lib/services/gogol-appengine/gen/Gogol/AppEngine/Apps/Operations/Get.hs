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
-- Module      : Gogol.AppEngine.Apps.Operations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.operations.get@.
module Gogol.AppEngine.Apps.Operations.Get
    (
    -- * Resource
      AppEngineAppsOperationsGetResource

    -- ** Constructing a Request
    , AppEngineAppsOperationsGet (..)
    , newAppEngineAppsOperationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.operations.get@ method which the
-- 'AppEngineAppsOperationsGet' request conforms to.
type AppEngineAppsOperationsGetResource =
     "v1" Core.:>
       "apps" Core.:>
         Core.Capture "appsId" Core.Text Core.:>
           "operations" Core.:>
             Core.Capture "operationsId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.
--
-- /See:/ 'newAppEngineAppsOperationsGet' smart constructor.
data AppEngineAppsOperationsGet = AppEngineAppsOperationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. The name of the operation resource.
    , appsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @appsId@.
    , operationsId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsOperationsGet' with the minimum fields required to make a request.
newAppEngineAppsOperationsGet 
    ::  Core.Text
       -- ^  Part of @name@. The name of the operation resource. See 'appsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @appsId@. See 'operationsId'.
    -> AppEngineAppsOperationsGet
newAppEngineAppsOperationsGet appsId operationsId =
  AppEngineAppsOperationsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , callback = Core.Nothing
    , operationsId = operationsId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineAppsOperationsGet
         where
        type Rs AppEngineAppsOperationsGet = Operation
        type Scopes AppEngineAppsOperationsGet =
             '[Appengine'Admin, CloudPlatform'FullControl,
               CloudPlatform'ReadOnly]
        requestClient AppEngineAppsOperationsGet{..}
          = go appsId operationsId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AppEngineAppsOperationsGetResource)
                      Core.mempty

