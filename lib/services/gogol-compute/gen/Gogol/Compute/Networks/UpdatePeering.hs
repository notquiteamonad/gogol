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
-- Module      : Gogol.Compute.Networks.UpdatePeering
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified network peering with the data included in the request. You can only modify the NetworkPeering.export/custom/routes field and the NetworkPeering.import/custom/routes field.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.networks.updatePeering@.
module Gogol.Compute.Networks.UpdatePeering
    (
    -- * Resource
      ComputeNetworksUpdatePeeringResource

    -- ** Constructing a Request
    , ComputeNetworksUpdatePeering (..)
    , newComputeNetworksUpdatePeering
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.networks.updatePeering@ method which the
-- 'ComputeNetworksUpdatePeering' request conforms to.
type ComputeNetworksUpdatePeeringResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "networks" Core.:>
                 Core.Capture "network" Core.Text Core.:>
                   "updatePeering" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     NetworksUpdatePeeringRequest
                                     Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the specified network peering with the data included in the request. You can only modify the NetworkPeering.export/custom/routes field and the NetworkPeering.import/custom/routes field.
--
-- /See:/ 'newComputeNetworksUpdatePeering' smart constructor.
data ComputeNetworksUpdatePeering = ComputeNetworksUpdatePeering
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the network resource which the updated peering is belonging to.
    , network :: Core.Text
      -- | Multipart request metadata.
    , payload :: NetworksUpdatePeeringRequest
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

-- | Creates a value of 'ComputeNetworksUpdatePeering' with the minimum fields required to make a request.
newComputeNetworksUpdatePeering 
    ::  Core.Text
       -- ^  Name of the network resource which the updated peering is belonging to. See 'network'.
    -> NetworksUpdatePeeringRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeNetworksUpdatePeering
newComputeNetworksUpdatePeering network payload project =
  ComputeNetworksUpdatePeering
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , network = network
    , payload = payload
    , project = project
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeNetworksUpdatePeering
         where
        type Rs ComputeNetworksUpdatePeering = Operation
        type Scopes ComputeNetworksUpdatePeering =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeNetworksUpdatePeering{..}
          = go project network xgafv accessToken callback
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeNetworksUpdatePeeringResource)
                      Core.mempty
