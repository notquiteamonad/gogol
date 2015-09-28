{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.DiskTypes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of disk type resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.diskTypes.list@.
module Network.Google.API.Compute.DiskTypes.List
    (
    -- * REST Resource
      DiskTypesListAPI

    -- * Creating a Request
    , diskTypesList'
    , DiskTypesList'

    -- * Request Lenses
    , dtlQuotaUser
    , dtlPrettyPrint
    , dtlProject
    , dtlUserIp
    , dtlZone
    , dtlKey
    , dtlFilter
    , dtlPageToken
    , dtlOauthToken
    , dtlMaxResults
    , dtlFields
    , dtlAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.diskTypes.list which the
-- 'DiskTypesList'' request conforms to.
type DiskTypesListAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "diskTypes" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] DiskTypeList

-- | Retrieves the list of disk type resources available to the specified
-- project.
--
-- /See:/ 'diskTypesList'' smart constructor.
data DiskTypesList' = DiskTypesList'
    { _dtlQuotaUser   :: !(Maybe Text)
    , _dtlPrettyPrint :: !Bool
    , _dtlProject     :: !Text
    , _dtlUserIp      :: !(Maybe Text)
    , _dtlZone        :: !Text
    , _dtlKey         :: !(Maybe Text)
    , _dtlFilter      :: !(Maybe Text)
    , _dtlPageToken   :: !(Maybe Text)
    , _dtlOauthToken  :: !(Maybe Text)
    , _dtlMaxResults  :: !Word32
    , _dtlFields      :: !(Maybe Text)
    , _dtlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtlQuotaUser'
--
-- * 'dtlPrettyPrint'
--
-- * 'dtlProject'
--
-- * 'dtlUserIp'
--
-- * 'dtlZone'
--
-- * 'dtlKey'
--
-- * 'dtlFilter'
--
-- * 'dtlPageToken'
--
-- * 'dtlOauthToken'
--
-- * 'dtlMaxResults'
--
-- * 'dtlFields'
--
-- * 'dtlAlt'
diskTypesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> DiskTypesList'
diskTypesList' pDtlProject_ pDtlZone_ =
    DiskTypesList'
    { _dtlQuotaUser = Nothing
    , _dtlPrettyPrint = True
    , _dtlProject = pDtlProject_
    , _dtlUserIp = Nothing
    , _dtlZone = pDtlZone_
    , _dtlKey = Nothing
    , _dtlFilter = Nothing
    , _dtlPageToken = Nothing
    , _dtlOauthToken = Nothing
    , _dtlMaxResults = 500
    , _dtlFields = Nothing
    , _dtlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dtlQuotaUser :: Lens' DiskTypesList' (Maybe Text)
dtlQuotaUser
  = lens _dtlQuotaUser (\ s a -> s{_dtlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dtlPrettyPrint :: Lens' DiskTypesList' Bool
dtlPrettyPrint
  = lens _dtlPrettyPrint
      (\ s a -> s{_dtlPrettyPrint = a})

-- | Project ID for this request.
dtlProject :: Lens' DiskTypesList' Text
dtlProject
  = lens _dtlProject (\ s a -> s{_dtlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dtlUserIp :: Lens' DiskTypesList' (Maybe Text)
dtlUserIp
  = lens _dtlUserIp (\ s a -> s{_dtlUserIp = a})

-- | The name of the zone for this request.
dtlZone :: Lens' DiskTypesList' Text
dtlZone = lens _dtlZone (\ s a -> s{_dtlZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dtlKey :: Lens' DiskTypesList' (Maybe Text)
dtlKey = lens _dtlKey (\ s a -> s{_dtlKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
dtlFilter :: Lens' DiskTypesList' (Maybe Text)
dtlFilter
  = lens _dtlFilter (\ s a -> s{_dtlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
dtlPageToken :: Lens' DiskTypesList' (Maybe Text)
dtlPageToken
  = lens _dtlPageToken (\ s a -> s{_dtlPageToken = a})

-- | OAuth 2.0 token for the current user.
dtlOauthToken :: Lens' DiskTypesList' (Maybe Text)
dtlOauthToken
  = lens _dtlOauthToken
      (\ s a -> s{_dtlOauthToken = a})

-- | Maximum count of results to be returned.
dtlMaxResults :: Lens' DiskTypesList' Word32
dtlMaxResults
  = lens _dtlMaxResults
      (\ s a -> s{_dtlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dtlFields :: Lens' DiskTypesList' (Maybe Text)
dtlFields
  = lens _dtlFields (\ s a -> s{_dtlFields = a})

-- | Data format for the response.
dtlAlt :: Lens' DiskTypesList' Alt
dtlAlt = lens _dtlAlt (\ s a -> s{_dtlAlt = a})

instance GoogleRequest DiskTypesList' where
        type Rs DiskTypesList' = DiskTypeList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DiskTypesList'{..}
          = go _dtlQuotaUser (Just _dtlPrettyPrint) _dtlProject
              _dtlUserIp
              _dtlZone
              _dtlKey
              _dtlFilter
              _dtlPageToken
              _dtlOauthToken
              (Just _dtlMaxResults)
              _dtlFields
              (Just _dtlAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DiskTypesListAPI) r
                      u