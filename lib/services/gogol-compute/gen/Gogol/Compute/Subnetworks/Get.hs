{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.Subnetworks.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified subnetwork. Gets a list of available subnetworks list() request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.subnetworks.get@.
module Gogol.Compute.Subnetworks.Get
    (
    -- * Resource
      ComputeSubnetworksGetResource

    -- ** Constructing a Request
    , newComputeSubnetworksGet
    , ComputeSubnetworksGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.subnetworks.get@ method which the
-- 'ComputeSubnetworksGet' request conforms to.
type ComputeSubnetworksGetResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "subnetworks" Core.:>
                   Core.Capture "subnetwork" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] Subnetwork

-- | Returns the specified subnetwork. Gets a list of available subnetworks list() request.
--
-- /See:/ 'newComputeSubnetworksGet' smart constructor.
data ComputeSubnetworksGet = ComputeSubnetworksGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the region scoping this request.
    , region :: Core.Text
      -- | Name of the Subnetwork resource to return.
    , subnetwork :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeSubnetworksGet' with the minimum fields required to make a request.
newComputeSubnetworksGet 
    ::  Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the region scoping this request. See 'region'.
    -> Core.Text
       -- ^  Name of the Subnetwork resource to return. See 'subnetwork'.
    -> ComputeSubnetworksGet
newComputeSubnetworksGet project region subnetwork =
  ComputeSubnetworksGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , project = project
    , region = region
    , subnetwork = subnetwork
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeSubnetworksGet
         where
        type Rs ComputeSubnetworksGet = Subnetwork
        type Scopes ComputeSubnetworksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ComputeSubnetworksGet{..}
          = go project region subnetwork xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeSubnetworksGetResource)
                      Core.mempty

