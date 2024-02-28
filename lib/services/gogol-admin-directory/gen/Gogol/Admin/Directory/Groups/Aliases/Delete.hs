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
-- Module      : Gogol.Admin.Directory.Groups.Aliases.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an alias.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.aliases.delete@.
module Gogol.Admin.Directory.Groups.Aliases.Delete
    (
    -- * Resource
      DirectoryGroupsAliasesDeleteResource

    -- ** Constructing a Request
    , DirectoryGroupsAliasesDelete (..)
    , newDirectoryGroupsAliasesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.groups.aliases.delete@ method which the
-- 'DirectoryGroupsAliasesDelete' request conforms to.
type DirectoryGroupsAliasesDeleteResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "groups" Core.:>
             Core.Capture "groupKey" Core.Text Core.:>
               "aliases" Core.:>
                 Core.Capture "alias" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Delete '[Core.JSON] ()

-- | Removes an alias.
--
-- /See:/ 'newDirectoryGroupsAliasesDelete' smart constructor.
data DirectoryGroupsAliasesDelete = DirectoryGroupsAliasesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The alias to be removed
    , alias :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID.
    , groupKey :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryGroupsAliasesDelete' with the minimum fields required to make a request.
newDirectoryGroupsAliasesDelete 
    ::  Core.Text
       -- ^  The alias to be removed See 'alias'.
    -> Core.Text
       -- ^  Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID. See 'groupKey'.
    -> DirectoryGroupsAliasesDelete
newDirectoryGroupsAliasesDelete alias groupKey =
  DirectoryGroupsAliasesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , alias = alias
    , callback = Core.Nothing
    , groupKey = groupKey
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DirectoryGroupsAliasesDelete
         where
        type Rs DirectoryGroupsAliasesDelete = ()
        type Scopes DirectoryGroupsAliasesDelete =
             '[Admin'Directory'Group]
        requestClient DirectoryGroupsAliasesDelete{..}
          = go groupKey alias xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryGroupsAliasesDeleteResource)
                      Core.mempty
