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
-- Module      : Gogol.Datastore.Projects.RunQuery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries for entities.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.runQuery@.
module Gogol.Datastore.Projects.RunQuery
    (
    -- * Resource
      DatastoreProjectsRunQueryResource

    -- ** Constructing a Request
    , DatastoreProjectsRunQuery (..)
    , newDatastoreProjectsRunQuery
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Datastore.Types

-- | A resource alias for @datastore.projects.runQuery@ method which the
-- 'DatastoreProjectsRunQuery' request conforms to.
type DatastoreProjectsRunQueryResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.CaptureMode "projectId" "runQuery" Core.Text
           Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] RunQueryRequest Core.:>
                         Core.Post '[Core.JSON] RunQueryResponse

-- | Queries for entities.
--
-- /See:/ 'newDatastoreProjectsRunQuery' smart constructor.
data DatastoreProjectsRunQuery = DatastoreProjectsRunQuery
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RunQueryRequest
      -- | Required. The ID of the project against which to make the request.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsRunQuery' with the minimum fields required to make a request.
newDatastoreProjectsRunQuery 
    ::  RunQueryRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The ID of the project against which to make the request. See 'projectId'.
    -> DatastoreProjectsRunQuery
newDatastoreProjectsRunQuery payload projectId =
  DatastoreProjectsRunQuery
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DatastoreProjectsRunQuery
         where
        type Rs DatastoreProjectsRunQuery = RunQueryResponse
        type Scopes DatastoreProjectsRunQuery =
             '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient DatastoreProjectsRunQuery{..}
          = go projectId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              datastoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DatastoreProjectsRunQueryResource)
                      Core.mempty
