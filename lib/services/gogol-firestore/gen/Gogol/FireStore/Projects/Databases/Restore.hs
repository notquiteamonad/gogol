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
-- Module      : Gogol.FireStore.Projects.Databases.Restore
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new database by restore from an existing backup. The new database must be in the same cloud region or multi-region location as the existing backup. This behaves similar to FirestoreAdmin.CreateDatabase except instead of creating a new empty database, a new database is created with the database type, index configuration, and documents from an existing backup. The long-running operation can be used to track the progress of the restore, with the Operation\'s metadata field type being the RestoreDatabaseMetadata. The response type is the Database if the restore was successful. The new database is not readable or writeable until the LRO has completed. Cancelling the returned operation will stop the restore and delete the in-progress database, if the restore is still active.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.restore@.
module Gogol.FireStore.Projects.Databases.Restore
    (
    -- * Resource
      FireStoreProjectsDatabasesRestoreResource

    -- ** Constructing a Request
    , FireStoreProjectsDatabasesRestore (..)
    , newFireStoreProjectsDatabasesRestore
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.restore@ method which the
-- 'FireStoreProjectsDatabasesRestore' request conforms to.
type FireStoreProjectsDatabasesRestoreResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "databases:restore" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GoogleFirestoreAdminV1RestoreDatabaseRequest
                         Core.:>
                         Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Create a new database by restore from an existing backup. The new database must be in the same cloud region or multi-region location as the existing backup. This behaves similar to FirestoreAdmin.CreateDatabase except instead of creating a new empty database, a new database is created with the database type, index configuration, and documents from an existing backup. The long-running operation can be used to track the progress of the restore, with the Operation\'s metadata field type being the RestoreDatabaseMetadata. The response type is the Database if the restore was successful. The new database is not readable or writeable until the LRO has completed. Cancelling the returned operation will stop the restore and delete the in-progress database, if the restore is still active.
--
-- /See:/ 'newFireStoreProjectsDatabasesRestore' smart constructor.
data FireStoreProjectsDatabasesRestore = FireStoreProjectsDatabasesRestore
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The project to restore the database in. Format is @projects\/{project_id}@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleFirestoreAdminV1RestoreDatabaseRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesRestore' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesRestore 
    ::  Core.Text
       -- ^  Required. The project to restore the database in. Format is @projects\/{project_id}@. See 'parent'.
    -> GoogleFirestoreAdminV1RestoreDatabaseRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> FireStoreProjectsDatabasesRestore
newFireStoreProjectsDatabasesRestore parent payload =
  FireStoreProjectsDatabasesRestore
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           FireStoreProjectsDatabasesRestore
         where
        type Rs FireStoreProjectsDatabasesRestore =
             GoogleLongrunningOperation
        type Scopes FireStoreProjectsDatabasesRestore =
             '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient FireStoreProjectsDatabasesRestore{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FireStoreProjectsDatabasesRestoreResource)
                      Core.mempty

