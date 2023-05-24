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
-- Module      : Gogol.ShoppingContent.Content.Shippingsettings.Custombatch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves and updates the shipping settings of multiple accounts in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.shippingsettings.custombatch@.
module Gogol.ShoppingContent.Content.Shippingsettings.Custombatch
    (
    -- * Resource
      ContentShippingsettingsCustombatchResource

    -- ** Constructing a Request
    , ContentShippingsettingsCustombatch (..)
    , newContentShippingsettingsCustombatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.custombatch@ method which the
-- 'ContentShippingsettingsCustombatch' request conforms to.
type ContentShippingsettingsCustombatchResource =
     "content" Core.:>
       "v2.1" Core.:>
         "shippingsettings" Core.:>
           "batch" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON]
                           ShippingsettingsCustomBatchRequest
                           Core.:>
                           Core.Post '[Core.JSON]
                             ShippingsettingsCustomBatchResponse

-- | Retrieves and updates the shipping settings of multiple accounts in a single request.
--
-- /See:/ 'newContentShippingsettingsCustombatch' smart constructor.
data ContentShippingsettingsCustombatch = ContentShippingsettingsCustombatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: ShippingsettingsCustomBatchRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentShippingsettingsCustombatch' with the minimum fields required to make a request.
newContentShippingsettingsCustombatch 
    ::  ShippingsettingsCustomBatchRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentShippingsettingsCustombatch
newContentShippingsettingsCustombatch payload =
  ContentShippingsettingsCustombatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentShippingsettingsCustombatch
         where
        type Rs ContentShippingsettingsCustombatch =
             ShippingsettingsCustomBatchResponse
        type Scopes ContentShippingsettingsCustombatch =
             '[Content'FullControl]
        requestClient ContentShippingsettingsCustombatch{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentShippingsettingsCustombatchResource)
                      Core.mempty

