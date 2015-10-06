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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Activate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Activates a subscription previously suspended by the reseller
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsActivate@.
module Network.Google.Resource.Reseller.Subscriptions.Activate
    (
    -- * REST Resource
      SubscriptionsActivateResource

    -- * Creating a Request
    , subscriptionsActivate'
    , SubscriptionsActivate'

    -- * Request Lenses
    , saQuotaUser
    , saPrettyPrint
    , saUserIP
    , saCustomerId
    , saKey
    , saOAuthToken
    , saSubscriptionId
    , saFields
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsActivate@ which the
-- 'SubscriptionsActivate'' request conforms to.
type SubscriptionsActivateResource =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "activate" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Subscription

-- | Activates a subscription previously suspended by the reseller
--
-- /See:/ 'subscriptionsActivate'' smart constructor.
data SubscriptionsActivate' = SubscriptionsActivate'
    { _saQuotaUser      :: !(Maybe Text)
    , _saPrettyPrint    :: !Bool
    , _saUserIP         :: !(Maybe Text)
    , _saCustomerId     :: !Text
    , _saKey            :: !(Maybe AuthKey)
    , _saOAuthToken     :: !(Maybe OAuthToken)
    , _saSubscriptionId :: !Text
    , _saFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsActivate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saQuotaUser'
--
-- * 'saPrettyPrint'
--
-- * 'saUserIP'
--
-- * 'saCustomerId'
--
-- * 'saKey'
--
-- * 'saOAuthToken'
--
-- * 'saSubscriptionId'
--
-- * 'saFields'
subscriptionsActivate'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsActivate'
subscriptionsActivate' pSaCustomerId_ pSaSubscriptionId_ =
    SubscriptionsActivate'
    { _saQuotaUser = Nothing
    , _saPrettyPrint = True
    , _saUserIP = Nothing
    , _saCustomerId = pSaCustomerId_
    , _saKey = Nothing
    , _saOAuthToken = Nothing
    , _saSubscriptionId = pSaSubscriptionId_
    , _saFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
saQuotaUser :: Lens' SubscriptionsActivate' (Maybe Text)
saQuotaUser
  = lens _saQuotaUser (\ s a -> s{_saQuotaUser = a})

-- | Returns response with indentations and line breaks.
saPrettyPrint :: Lens' SubscriptionsActivate' Bool
saPrettyPrint
  = lens _saPrettyPrint
      (\ s a -> s{_saPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
saUserIP :: Lens' SubscriptionsActivate' (Maybe Text)
saUserIP = lens _saUserIP (\ s a -> s{_saUserIP = a})

-- | Id of the Customer
saCustomerId :: Lens' SubscriptionsActivate' Text
saCustomerId
  = lens _saCustomerId (\ s a -> s{_saCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
saKey :: Lens' SubscriptionsActivate' (Maybe AuthKey)
saKey = lens _saKey (\ s a -> s{_saKey = a})

-- | OAuth 2.0 token for the current user.
saOAuthToken :: Lens' SubscriptionsActivate' (Maybe OAuthToken)
saOAuthToken
  = lens _saOAuthToken (\ s a -> s{_saOAuthToken = a})

-- | Id of the subscription, which is unique for a customer
saSubscriptionId :: Lens' SubscriptionsActivate' Text
saSubscriptionId
  = lens _saSubscriptionId
      (\ s a -> s{_saSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
saFields :: Lens' SubscriptionsActivate' (Maybe Text)
saFields = lens _saFields (\ s a -> s{_saFields = a})

instance GoogleAuth SubscriptionsActivate' where
        authKey = saKey . _Just
        authToken = saOAuthToken . _Just

instance GoogleRequest SubscriptionsActivate' where
        type Rs SubscriptionsActivate' = Subscription
        request = requestWith appsResellerRequest
        requestWith rq SubscriptionsActivate'{..}
          = go _saCustomerId _saSubscriptionId _saQuotaUser
              (Just _saPrettyPrint)
              _saUserIP
              _saFields
              _saKey
              _saOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy SubscriptionsActivateResource)
                      rq
