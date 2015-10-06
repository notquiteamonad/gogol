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
-- Module      : Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByDivision
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Looks up representative information for a single geographic division.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @CivicInfoRepresentativesRepresentativeInfoByDivision@.
module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByDivision
    (
    -- * REST Resource
      RepresentativesRepresentativeInfoByDivisionResource

    -- * Creating a Request
    , representativesRepresentativeInfoByDivision'
    , RepresentativesRepresentativeInfoByDivision'

    -- * Request Lenses
    , rribdQuotaUser
    , rribdRoles
    , rribdPrettyPrint
    , rribdUserIP
    , rribdKey
    , rribdRecursive
    , rribdOcdId
    , rribdLevels
    , rribdOAuthToken
    , rribdFields
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @CivicInfoRepresentativesRepresentativeInfoByDivision@ which the
-- 'RepresentativesRepresentativeInfoByDivision'' request conforms to.
type RepresentativesRepresentativeInfoByDivisionResource
     =
     "representatives" :>
       Capture "ocdId" Text :>
         QueryParams "roles"
           RepresentativesRepresentativeInfoByDivisionRoles
           :>
           QueryParam "recursive" Bool :>
             QueryParams "levels"
               RepresentativesRepresentativeInfoByDivisionLevels
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] RepresentativeInfoData

-- | Looks up representative information for a single geographic division.
--
-- /See:/ 'representativesRepresentativeInfoByDivision'' smart constructor.
data RepresentativesRepresentativeInfoByDivision' = RepresentativesRepresentativeInfoByDivision'
    { _rribdQuotaUser   :: !(Maybe Text)
    , _rribdRoles       :: !(Maybe [RepresentativesRepresentativeInfoByDivisionRoles])
    , _rribdPrettyPrint :: !Bool
    , _rribdUserIP      :: !(Maybe Text)
    , _rribdKey         :: !(Maybe AuthKey)
    , _rribdRecursive   :: !(Maybe Bool)
    , _rribdOcdId       :: !Text
    , _rribdLevels      :: !(Maybe [RepresentativesRepresentativeInfoByDivisionLevels])
    , _rribdOAuthToken  :: !(Maybe OAuthToken)
    , _rribdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativesRepresentativeInfoByDivision'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rribdQuotaUser'
--
-- * 'rribdRoles'
--
-- * 'rribdPrettyPrint'
--
-- * 'rribdUserIP'
--
-- * 'rribdKey'
--
-- * 'rribdRecursive'
--
-- * 'rribdOcdId'
--
-- * 'rribdLevels'
--
-- * 'rribdOAuthToken'
--
-- * 'rribdFields'
representativesRepresentativeInfoByDivision'
    :: Text -- ^ 'ocdId'
    -> RepresentativesRepresentativeInfoByDivision'
representativesRepresentativeInfoByDivision' pRribdOcdId_ =
    RepresentativesRepresentativeInfoByDivision'
    { _rribdQuotaUser = Nothing
    , _rribdRoles = Nothing
    , _rribdPrettyPrint = True
    , _rribdUserIP = Nothing
    , _rribdKey = Nothing
    , _rribdRecursive = Nothing
    , _rribdOcdId = pRribdOcdId_
    , _rribdLevels = Nothing
    , _rribdOAuthToken = Nothing
    , _rribdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rribdQuotaUser :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe Text)
rribdQuotaUser
  = lens _rribdQuotaUser
      (\ s a -> s{_rribdQuotaUser = a})

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
rribdRoles :: Lens' RepresentativesRepresentativeInfoByDivision' [RepresentativesRepresentativeInfoByDivisionRoles]
rribdRoles
  = lens _rribdRoles (\ s a -> s{_rribdRoles = a}) .
      _Default
      . _Coerce

-- | Returns response with indentations and line breaks.
rribdPrettyPrint :: Lens' RepresentativesRepresentativeInfoByDivision' Bool
rribdPrettyPrint
  = lens _rribdPrettyPrint
      (\ s a -> s{_rribdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rribdUserIP :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe Text)
rribdUserIP
  = lens _rribdUserIP (\ s a -> s{_rribdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rribdKey :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe AuthKey)
rribdKey = lens _rribdKey (\ s a -> s{_rribdKey = a})

-- | If true, information about all divisions contained in the division
-- requested will be included as well. For example, if querying
-- ocd-division\/country:us\/district:dc, this would also return all DC\'s
-- wards and ANCs.
rribdRecursive :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe Bool)
rribdRecursive
  = lens _rribdRecursive
      (\ s a -> s{_rribdRecursive = a})

-- | The Open Civic Data division identifier of the division to look up.
rribdOcdId :: Lens' RepresentativesRepresentativeInfoByDivision' Text
rribdOcdId
  = lens _rribdOcdId (\ s a -> s{_rribdOcdId = a})

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
rribdLevels :: Lens' RepresentativesRepresentativeInfoByDivision' [RepresentativesRepresentativeInfoByDivisionLevels]
rribdLevels
  = lens _rribdLevels (\ s a -> s{_rribdLevels = a}) .
      _Default
      . _Coerce

-- | OAuth 2.0 token for the current user.
rribdOAuthToken :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe OAuthToken)
rribdOAuthToken
  = lens _rribdOAuthToken
      (\ s a -> s{_rribdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rribdFields :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe Text)
rribdFields
  = lens _rribdFields (\ s a -> s{_rribdFields = a})

instance GoogleAuth
         RepresentativesRepresentativeInfoByDivision' where
        authKey = rribdKey . _Just
        authToken = rribdOAuthToken . _Just

instance GoogleRequest
         RepresentativesRepresentativeInfoByDivision' where
        type Rs RepresentativesRepresentativeInfoByDivision'
             = RepresentativeInfoData
        request = requestWith civicInfoRequest
        requestWith rq
          RepresentativesRepresentativeInfoByDivision'{..}
          = go _rribdOcdId (_rribdRoles ^. _Default)
              _rribdRecursive
              (_rribdLevels ^. _Default)
              _rribdQuotaUser
              (Just _rribdPrettyPrint)
              _rribdUserIP
              _rribdFields
              _rribdKey
              _rribdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy
                           RepresentativesRepresentativeInfoByDivisionResource)
                      rq
