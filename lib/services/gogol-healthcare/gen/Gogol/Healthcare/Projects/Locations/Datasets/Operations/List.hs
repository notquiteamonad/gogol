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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Operations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the server doesn\'t support this method, it returns @UNIMPLEMENTED@.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.operations.list@.
module Gogol.Healthcare.Projects.Locations.Datasets.Operations.List
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsOperationsListResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsOperationsList (..)
    , newHealthcareProjectsLocationsDatasetsOperationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.operations.list@ method which the
-- 'HealthcareProjectsLocationsDatasetsOperationsList' request conforms to.
type HealthcareProjectsLocationsDatasetsOperationsListResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "operations" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the server doesn\'t support this method, it returns @UNIMPLEMENTED@.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsOperationsList' smart constructor.
data HealthcareProjectsLocationsDatasetsOperationsList = HealthcareProjectsLocationsDatasetsOperationsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The standard list filter.
    , filter :: (Core.Maybe Core.Text)
      -- | The name of the operation\'s parent resource.
    , name :: Core.Text
      -- | The standard list page size.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The standard list page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsOperationsList' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsOperationsList 
    ::  Core.Text
       -- ^  The name of the operation\'s parent resource. See 'name'.
    -> HealthcareProjectsLocationsDatasetsOperationsList
newHealthcareProjectsLocationsDatasetsOperationsList name =
  HealthcareProjectsLocationsDatasetsOperationsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , name = name
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsOperationsList
         where
        type Rs
               HealthcareProjectsLocationsDatasetsOperationsList
             = ListOperationsResponse
        type Scopes
               HealthcareProjectsLocationsDatasetsOperationsList
             = '[CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsOperationsList{..}
          = go name xgafv accessToken callback filter pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsOperationsListResource)
                      Core.mempty

