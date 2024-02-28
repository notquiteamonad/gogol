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
-- Module      : Gogol.SafeBrowsing.ThreatLists.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Safe Browsing threat lists available for download.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.threatLists.list@.
module Gogol.SafeBrowsing.ThreatLists.List
    (
    -- * Resource
      SafeBrowsingThreatListsListResource

    -- ** Constructing a Request
    , SafeBrowsingThreatListsList (..)
    , newSafeBrowsingThreatListsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.threatLists.list@ method which the
-- 'SafeBrowsingThreatListsList' request conforms to.
type SafeBrowsingThreatListsListResource =
     "v4" Core.:>
       "threatLists" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       GoogleSecuritySafebrowsingV4ListThreatListsResponse

-- | Lists the Safe Browsing threat lists available for download.
--
-- /See:/ 'newSafeBrowsingThreatListsList' smart constructor.
data SafeBrowsingThreatListsList = SafeBrowsingThreatListsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeBrowsingThreatListsList' with the minimum fields required to make a request.
newSafeBrowsingThreatListsList 
    ::  SafeBrowsingThreatListsList
newSafeBrowsingThreatListsList =
  SafeBrowsingThreatListsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SafeBrowsingThreatListsList
         where
        type Rs SafeBrowsingThreatListsList =
             GoogleSecuritySafebrowsingV4ListThreatListsResponse
        type Scopes SafeBrowsingThreatListsList = '[]
        requestClient SafeBrowsingThreatListsList{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              safeBrowsingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SafeBrowsingThreatListsListResource)
                      Core.mempty
