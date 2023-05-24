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
-- Module      : Gogol.ShoppingContent.Content.Accounttax.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the tax settings of the account. Any fields that are not provided are deleted from the resource.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounttax.update@.
module Gogol.ShoppingContent.Content.Accounttax.Update
    (
    -- * Resource
      ContentAccounttaxUpdateResource

    -- ** Constructing a Request
    , ContentAccounttaxUpdate (..)
    , newContentAccounttaxUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounttax.update@ method which the
-- 'ContentAccounttaxUpdate' request conforms to.
type ContentAccounttaxUpdateResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "accounttax" Core.:>
             Core.Capture "accountId" Core.Word64 Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] AccountTax Core.:>
                             Core.Put '[Core.JSON] AccountTax

-- | Updates the tax settings of the account. Any fields that are not provided are deleted from the resource.
--
-- /See:/ 'newContentAccounttaxUpdate' smart constructor.
data ContentAccounttaxUpdate = ContentAccounttaxUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The ID of the account for which to get\/update account tax settings.
    , accountId :: Core.Word64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account.
    , merchantId :: Core.Word64
      -- | Multipart request metadata.
    , payload :: AccountTax
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccounttaxUpdate' with the minimum fields required to make a request.
newContentAccounttaxUpdate 
    ::  Core.Word64
       -- ^  The ID of the account for which to get\/update account tax settings. See 'accountId'.
    -> Core.Word64
       -- ^  The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account. See 'merchantId'.
    -> AccountTax
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentAccounttaxUpdate
newContentAccounttaxUpdate accountId merchantId payload =
  ContentAccounttaxUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , merchantId = merchantId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentAccounttaxUpdate
         where
        type Rs ContentAccounttaxUpdate = AccountTax
        type Scopes ContentAccounttaxUpdate =
             '[Content'FullControl]
        requestClient ContentAccounttaxUpdate{..}
          = go merchantId accountId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentAccounttaxUpdateResource)
                      Core.mempty

