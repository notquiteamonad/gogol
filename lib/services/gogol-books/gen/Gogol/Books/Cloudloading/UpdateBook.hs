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
-- Module      : Gogol.Books.Cloudloading.UpdateBook
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user-upload volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.cloudloading.updateBook@.
module Gogol.Books.Cloudloading.UpdateBook
    (
    -- * Resource
      BooksCloudloadingUpdateBookResource

    -- ** Constructing a Request
    , BooksCloudloadingUpdateBook (..)
    , newBooksCloudloadingUpdateBook
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.cloudloading.updateBook@ method which the
-- 'BooksCloudloadingUpdateBook' request conforms to.
type BooksCloudloadingUpdateBookResource =
     "books" Core.:>
       "v1" Core.:>
         "cloudloading" Core.:>
           "updateBook" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] BooksCloudloadingResource
                           Core.:>
                           Core.Post '[Core.JSON] BooksCloudloadingResource

-- | Updates a user-upload volume.
--
-- /See:/ 'newBooksCloudloadingUpdateBook' smart constructor.
data BooksCloudloadingUpdateBook = BooksCloudloadingUpdateBook
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: BooksCloudloadingResource
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksCloudloadingUpdateBook' with the minimum fields required to make a request.
newBooksCloudloadingUpdateBook 
    ::  BooksCloudloadingResource
       -- ^  Multipart request metadata. See 'payload'.
    -> BooksCloudloadingUpdateBook
newBooksCloudloadingUpdateBook payload =
  BooksCloudloadingUpdateBook
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BooksCloudloadingUpdateBook
         where
        type Rs BooksCloudloadingUpdateBook =
             BooksCloudloadingResource
        type Scopes BooksCloudloadingUpdateBook =
             '[Books'FullControl]
        requestClient BooksCloudloadingUpdateBook{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BooksCloudloadingUpdateBookResource)
                      Core.mempty
