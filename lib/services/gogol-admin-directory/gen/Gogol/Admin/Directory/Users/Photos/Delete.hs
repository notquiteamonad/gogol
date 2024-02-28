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
-- Module      : Gogol.Admin.Directory.Users.Photos.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the user\'s photo.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.photos.delete@.
module Gogol.Admin.Directory.Users.Photos.Delete
    (
    -- * Resource
      DirectoryUsersPhotosDeleteResource

    -- ** Constructing a Request
    , DirectoryUsersPhotosDelete (..)
    , newDirectoryUsersPhotosDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.users.photos.delete@ method which the
-- 'DirectoryUsersPhotosDelete' request conforms to.
type DirectoryUsersPhotosDeleteResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "users" Core.:>
             Core.Capture "userKey" Core.Text Core.:>
               "photos" Core.:>
                 "thumbnail" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Delete '[Core.JSON] ()

-- | Removes the user\'s photo.
--
-- /See:/ 'newDirectoryUsersPhotosDelete' smart constructor.
data DirectoryUsersPhotosDelete = DirectoryUsersPhotosDelete
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
      -- | Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID.
    , userKey :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersPhotosDelete' with the minimum fields required to make a request.
newDirectoryUsersPhotosDelete 
    ::  Core.Text
       -- ^  Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID. See 'userKey'.
    -> DirectoryUsersPhotosDelete
newDirectoryUsersPhotosDelete userKey =
  DirectoryUsersPhotosDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userKey = userKey
    }

instance Core.GoogleRequest
           DirectoryUsersPhotosDelete
         where
        type Rs DirectoryUsersPhotosDelete = ()
        type Scopes DirectoryUsersPhotosDelete =
             '[Admin'Directory'User]
        requestClient DirectoryUsersPhotosDelete{..}
          = go userKey xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryUsersPhotosDeleteResource)
                      Core.mempty
