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
-- Module      : Gogol.Admin.Directory.Users.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user. This method supports patch semantics, meaning that you only need to include the fields you wish to update. Fields that are not present in the request will be preserved, and fields set to @null@ will be cleared. For repeating fields that contain arrays, individual items in the array can\'t be patched piecemeal; they must be supplied in the request body with the desired values for all items. See the <https://developers.google.com/admin-sdk/directory/v1/guides/manage-users#update_user user accounts guide> for more information.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.update@.
module Gogol.Admin.Directory.Users.Update
    (
    -- * Resource
      DirectoryUsersUpdateResource

    -- ** Constructing a Request
    , DirectoryUsersUpdate (..)
    , newDirectoryUsersUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.users.update@ method which the
-- 'DirectoryUsersUpdate' request conforms to.
type DirectoryUsersUpdateResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "users" Core.:>
             Core.Capture "userKey" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] User Core.:>
                             Core.Put '[Core.JSON] User

-- | Updates a user. This method supports patch semantics, meaning that you only need to include the fields you wish to update. Fields that are not present in the request will be preserved, and fields set to @null@ will be cleared. For repeating fields that contain arrays, individual items in the array can\'t be patched piecemeal; they must be supplied in the request body with the desired values for all items. See the <https://developers.google.com/admin-sdk/directory/v1/guides/manage-users#update_user user accounts guide> for more information.
--
-- /See:/ 'newDirectoryUsersUpdate' smart constructor.
data DirectoryUsersUpdate = DirectoryUsersUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: User
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID.
    , userKey :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersUpdate' with the minimum fields required to make a request.
newDirectoryUsersUpdate 
    ::  User
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID. See 'userKey'.
    -> DirectoryUsersUpdate
newDirectoryUsersUpdate payload userKey =
  DirectoryUsersUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userKey = userKey
    }

instance Core.GoogleRequest DirectoryUsersUpdate
         where
        type Rs DirectoryUsersUpdate = User
        type Scopes DirectoryUsersUpdate =
             '[Admin'Directory'User]
        requestClient DirectoryUsersUpdate{..}
          = go userKey xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryUsersUpdateResource)
                      Core.mempty
