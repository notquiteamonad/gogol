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
-- Module      : Gogol.Chat.Spaces.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists spaces the caller is a member of. Requires <https://developers.google.com/chat/api/guides/auth authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.spaces@ or @chat.spaces.readonly@ authorization scope. Lists spaces visible to the caller or authenticated user. Group chats and DMs aren\'t listed until the first message is sent.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.list@.
module Gogol.Chat.Spaces.List
    (
    -- * Resource
      ChatSpacesListResource

    -- ** Constructing a Request
    , ChatSpacesList (..)
    , newChatSpacesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.list@ method which the
-- 'ChatSpacesList' request conforms to.
type ChatSpacesListResource =
     "v1" Core.:>
       "spaces" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "filter" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListSpacesResponse

-- | Lists spaces the caller is a member of. Requires <https://developers.google.com/chat/api/guides/auth authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.spaces@ or @chat.spaces.readonly@ authorization scope. Lists spaces visible to the caller or authenticated user. Group chats and DMs aren\'t listed until the first message is sent.
--
-- /See:/ 'newChatSpacesList' smart constructor.
data ChatSpacesList = ChatSpacesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A query filter. Requires <https://developers.google.com/chat/api/guides/auth/users user authentication>. You can filter spaces by the space type (<https://developers.google.com/chat/api/reference/rest/v1/spaces#spacetype space_type>). To filter by space type, you must specify valid enum value, such as @SPACE@ or @GROUP_CHAT@ (the @space_type@ can\'t be @SPACE_TYPE_UNSPECIFIED@). To query for multiple space types, use the @OR@ operator. For example, the following queries are valid: @space_type = \"SPACE\" spaceType = \"GROUP_CHAT\" OR spaceType = \"DIRECT_MESSAGE\"@ Invalid queries are rejected by the server with an @INVALID_ARGUMENT@ error. With <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>, this field is ignored and the query always returns all spaces. But the Chat API still validates the query syntax with service accounts, so invalid queries are still rejected. <https://developers.google.com/workspace/preview Developer Preview>.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of spaces to return. The service might return fewer than this value. If unspecified, at most 100 spaces are returned. The maximum value is 1,000. If you use a value more than 1,000, it\'s automatically changed to 1,000. Negative values return an @INVALID_ARGUMENT@ error.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A page token, received from a previous list spaces call. Provide this parameter to retrieve the subsequent page. When paginating, the filter value should match the call that provided the page token. Passing a different value may lead to unexpected results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesList' with the minimum fields required to make a request.
newChatSpacesList 
    ::  ChatSpacesList
newChatSpacesList =
  ChatSpacesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesList where
        type Rs ChatSpacesList = ListSpacesResponse
        type Scopes ChatSpacesList =
             '[Chat'Bot, Chat'Spaces, Chat'Spaces'Readonly]
        requestClient ChatSpacesList{..}
          = go xgafv accessToken callback filter pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatSpacesListResource)
                      Core.mempty

