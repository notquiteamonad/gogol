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
-- Module      : Gogol.Compute.NodeGroups.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a NodeGroup resource in the specified project using the data included in the request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.nodeGroups.insert@.
module Gogol.Compute.NodeGroups.Insert
    (
    -- * Resource
      ComputeNodeGroupsInsertResource

    -- ** Constructing a Request
    , ComputeNodeGroupsInsert (..)
    , newComputeNodeGroupsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.nodeGroups.insert@ method which the
-- 'ComputeNodeGroupsInsert' request conforms to.
type ComputeNodeGroupsInsertResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "nodeGroups" Core.:>
                   Core.QueryParam "initialNodeCount" Core.Int32 Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] NodeGroup Core.:>
                                     Core.Post '[Core.JSON] Operation

-- | Creates a NodeGroup resource in the specified project using the data included in the request.
--
-- /See:/ 'newComputeNodeGroupsInsert' smart constructor.
data ComputeNodeGroupsInsert = ComputeNodeGroupsInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Initial count of nodes in the node group.
    , initialNodeCount :: Core.Int32
      -- | Multipart request metadata.
    , payload :: NodeGroup
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The name of the zone for this request.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeNodeGroupsInsert' with the minimum fields required to make a request.
newComputeNodeGroupsInsert 
    ::  Core.Int32
       -- ^  Initial count of nodes in the node group. See 'initialNodeCount'.
    -> NodeGroup
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the zone for this request. See 'zone'.
    -> ComputeNodeGroupsInsert
newComputeNodeGroupsInsert initialNodeCount payload project zone =
  ComputeNodeGroupsInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , initialNodeCount = initialNodeCount
    , payload = payload
    , project = project
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest ComputeNodeGroupsInsert
         where
        type Rs ComputeNodeGroupsInsert = Operation
        type Scopes ComputeNodeGroupsInsert =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeNodeGroupsInsert{..}
          = go project zone (Core.Just initialNodeCount) xgafv
              accessToken
              callback
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeNodeGroupsInsertResource)
                      Core.mempty

