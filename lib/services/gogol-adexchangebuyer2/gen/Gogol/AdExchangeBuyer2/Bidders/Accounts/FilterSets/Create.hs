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
-- Module      : Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the specified filter set for the account with the given account ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.create@.
module Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Create
    (
    -- * Resource
      AdExchangeBuyer2BiddersAccountsFilterSetsCreateResource

    -- ** Constructing a Request
    , AdExchangeBuyer2BiddersAccountsFilterSetsCreate (..)
    , newAdExchangeBuyer2BiddersAccountsFilterSetsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer2.Types

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.create@ method which the
-- 'AdExchangeBuyer2BiddersAccountsFilterSetsCreate' request conforms to.
type AdExchangeBuyer2BiddersAccountsFilterSetsCreateResource
     =
     "v2beta1" Core.:>
       Core.Capture "ownerName" Core.Text Core.:>
         "filterSets" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "isTransient" Core.Bool Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] FilterSet Core.:>
                           Core.Post '[Core.JSON] FilterSet

-- | Creates the specified filter set for the account with the given account ID.
--
-- /See:/ 'newAdExchangeBuyer2BiddersAccountsFilterSetsCreate' smart constructor.
data AdExchangeBuyer2BiddersAccountsFilterSetsCreate = AdExchangeBuyer2BiddersAccountsFilterSetsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Whether the filter set is transient, or should be persisted indefinitely. By default, filter sets are not transient. If transient, it will be available for at least 1 hour after creation.
    , isTransient :: (Core.Maybe Core.Bool)
      -- | Name of the owner (bidder or account) of the filter set to be created. For example: - For a bidder-level filter set for bidder 123: @bidders\/123@ - For an account-level filter set for the buyer account representing bidder 123: @bidders\/123\/accounts\/123@ - For an account-level filter set for the child seat buyer account 456 whose bidder is 123: @bidders\/123\/accounts\/456@
    , ownerName :: Core.Text
      -- | Multipart request metadata.
    , payload :: FilterSet
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2BiddersAccountsFilterSetsCreate' with the minimum fields required to make a request.
newAdExchangeBuyer2BiddersAccountsFilterSetsCreate 
    ::  Core.Text
       -- ^  Name of the owner (bidder or account) of the filter set to be created. For example: - For a bidder-level filter set for bidder 123: @bidders\/123@ - For an account-level filter set for the buyer account representing bidder 123: @bidders\/123\/accounts\/123@ - For an account-level filter set for the child seat buyer account 456 whose bidder is 123: @bidders\/123\/accounts\/456@ See 'ownerName'.
    -> FilterSet
       -- ^  Multipart request metadata. See 'payload'.
    -> AdExchangeBuyer2BiddersAccountsFilterSetsCreate
newAdExchangeBuyer2BiddersAccountsFilterSetsCreate ownerName payload =
  AdExchangeBuyer2BiddersAccountsFilterSetsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , isTransient = Core.Nothing
    , ownerName = ownerName
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdExchangeBuyer2BiddersAccountsFilterSetsCreate
         where
        type Rs
               AdExchangeBuyer2BiddersAccountsFilterSetsCreate
             = FilterSet
        type Scopes
               AdExchangeBuyer2BiddersAccountsFilterSetsCreate
             = '[Adexchange'Buyer]
        requestClient
          AdExchangeBuyer2BiddersAccountsFilterSetsCreate{..}
          = go ownerName xgafv accessToken callback isTransient
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adExchangeBuyer2Service
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyer2BiddersAccountsFilterSetsCreateResource)
                      Core.mempty

