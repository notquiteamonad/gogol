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
-- Module      : Gogol.IdentityToolkit.Relyingparty.DownloadAccount
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batch download user accounts.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.downloadAccount@.
module Gogol.IdentityToolkit.Relyingparty.DownloadAccount
    (
    -- * Resource
      IdentityToolkitRelyingpartyDownloadAccountResource

    -- ** Constructing a Request
    , IdentityToolkitRelyingpartyDownloadAccount (..)
    , newIdentityToolkitRelyingpartyDownloadAccount
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IdentityToolkit.Types

-- | A resource alias for @identitytoolkit.relyingparty.downloadAccount@ method which the
-- 'IdentityToolkitRelyingpartyDownloadAccount' request conforms to.
type IdentityToolkitRelyingpartyDownloadAccountResource
     =
     "identitytoolkit" Core.:>
       "v3" Core.:>
         "relyingparty" Core.:>
           "downloadAccount" Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON]
                 IdentitytoolkitRelyingpartyDownloadAccountRequest
                 Core.:>
                 Core.Post '[Core.JSON] DownloadAccountResponse

-- | Batch download user accounts.
--
-- /See:/ 'newIdentityToolkitRelyingpartyDownloadAccount' smart constructor.
newtype IdentityToolkitRelyingpartyDownloadAccount = IdentityToolkitRelyingpartyDownloadAccount
    {
      -- | Multipart request metadata.
      payload :: IdentitytoolkitRelyingpartyDownloadAccountRequest
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyDownloadAccount' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyDownloadAccount 
    ::  IdentitytoolkitRelyingpartyDownloadAccountRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> IdentityToolkitRelyingpartyDownloadAccount
newIdentityToolkitRelyingpartyDownloadAccount payload =
  IdentityToolkitRelyingpartyDownloadAccount {payload = payload}

instance Core.GoogleRequest
           IdentityToolkitRelyingpartyDownloadAccount
         where
        type Rs IdentityToolkitRelyingpartyDownloadAccount =
             DownloadAccountResponse
        type Scopes
               IdentityToolkitRelyingpartyDownloadAccount
             = '[CloudPlatform'FullControl, Firebase'FullControl]
        requestClient
          IdentityToolkitRelyingpartyDownloadAccount{..}
          = go (Core.Just Core.AltJSON) payload
              identityToolkitService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IdentityToolkitRelyingpartyDownloadAccountResource)
                      Core.mempty
