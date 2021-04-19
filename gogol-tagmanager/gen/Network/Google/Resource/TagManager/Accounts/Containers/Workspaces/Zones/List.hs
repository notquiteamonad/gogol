{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Zones of a GTM container workspace.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesZonesListResource

    -- * Creating a Request
    , accountsContainersWorkspacesZonesList
    , AccountsContainersWorkspacesZonesList

    -- * Request Lenses
    , acwzlParent
    , acwzlPageToken
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.list@ method which the
-- 'AccountsContainersWorkspacesZonesList' request conforms to.
type AccountsContainersWorkspacesZonesListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "zones" :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListZonesResponse

-- | Lists all GTM Zones of a GTM container workspace.
--
-- /See:/ 'accountsContainersWorkspacesZonesList' smart constructor.
data AccountsContainersWorkspacesZonesList =
  AccountsContainersWorkspacesZonesList'
    { _acwzlParent :: !Text
    , _acwzlPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesZonesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwzlParent'
--
-- * 'acwzlPageToken'
accountsContainersWorkspacesZonesList
    :: Text -- ^ 'acwzlParent'
    -> AccountsContainersWorkspacesZonesList
accountsContainersWorkspacesZonesList pAcwzlParent_ =
  AccountsContainersWorkspacesZonesList'
    {_acwzlParent = pAcwzlParent_, _acwzlPageToken = Nothing}


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwzlParent :: Lens' AccountsContainersWorkspacesZonesList Text
acwzlParent
  = lens _acwzlParent (\ s a -> s{_acwzlParent = a})

-- | Continuation token for fetching the next page of results.
acwzlPageToken :: Lens' AccountsContainersWorkspacesZonesList (Maybe Text)
acwzlPageToken
  = lens _acwzlPageToken
      (\ s a -> s{_acwzlPageToken = a})

instance GoogleRequest
           AccountsContainersWorkspacesZonesList
         where
        type Rs AccountsContainersWorkspacesZonesList =
             ListZonesResponse
        type Scopes AccountsContainersWorkspacesZonesList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesZonesList'{..}
          = go _acwzlParent _acwzlPageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesZonesListResource)
                      mempty
