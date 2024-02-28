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
-- Module      : Gogol.Compute.GlobalNetworkEndpointGroups.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified network endpoint group.Note that the NEG cannot be deleted if there are backend services referencing it.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.globalNetworkEndpointGroups.delete@.
module Gogol.Compute.GlobalNetworkEndpointGroups.Delete
    (
    -- * Resource
      ComputeGlobalNetworkEndpointGroupsDeleteResource

    -- ** Constructing a Request
    , ComputeGlobalNetworkEndpointGroupsDelete (..)
    , newComputeGlobalNetworkEndpointGroupsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.globalNetworkEndpointGroups.delete@ method which the
-- 'ComputeGlobalNetworkEndpointGroupsDelete' request conforms to.
type ComputeGlobalNetworkEndpointGroupsDeleteResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "networkEndpointGroups" Core.:>
                 Core.Capture "networkEndpointGroup" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "requestId" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Delete '[Core.JSON] Operation

-- | Deletes the specified network endpoint group.Note that the NEG cannot be deleted if there are backend services referencing it.
--
-- /See:/ 'newComputeGlobalNetworkEndpointGroupsDelete' smart constructor.
data ComputeGlobalNetworkEndpointGroupsDelete = ComputeGlobalNetworkEndpointGroupsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the network endpoint group to delete. It should comply with RFC1035.
    , networkEndpointGroup :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeGlobalNetworkEndpointGroupsDelete' with the minimum fields required to make a request.
newComputeGlobalNetworkEndpointGroupsDelete 
    ::  Core.Text
       -- ^  The name of the network endpoint group to delete. It should comply with RFC1035. See 'networkEndpointGroup'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeGlobalNetworkEndpointGroupsDelete
newComputeGlobalNetworkEndpointGroupsDelete networkEndpointGroup project =
  ComputeGlobalNetworkEndpointGroupsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , networkEndpointGroup = networkEndpointGroup
    , project = project
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeGlobalNetworkEndpointGroupsDelete
         where
        type Rs ComputeGlobalNetworkEndpointGroupsDelete =
             Operation
        type Scopes ComputeGlobalNetworkEndpointGroupsDelete
             = '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          ComputeGlobalNetworkEndpointGroupsDelete{..}
          = go project networkEndpointGroup xgafv accessToken
              callback
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeGlobalNetworkEndpointGroupsDeleteResource)
                      Core.mempty
