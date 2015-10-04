{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Logging.Projects.Logs.Sinks.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a log sink. All log entries for a specified log are written to
-- the destination.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogsSinksCreate@.
module Network.Google.Resource.Logging.Projects.Logs.Sinks.Create
    (
    -- * REST Resource
      ProjectsLogsSinksCreateResource

    -- * Creating a Request
    , projectsLogsSinksCreate'
    , ProjectsLogsSinksCreate'

    -- * Request Lenses
    , plscXgafv
    , plscQuotaUser
    , plscPrettyPrint
    , plscUploadProtocol
    , plscLogsId
    , plscPp
    , plscAccessToken
    , plscUploadType
    , plscPayload
    , plscBearerToken
    , plscKey
    , plscOAuthToken
    , plscProjectsId
    , plscFields
    , plscCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsSinksCreate@ which the
-- 'ProjectsLogsSinksCreate'' request conforms to.
type ProjectsLogsSinksCreateResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logs" :>
             Capture "logsId" Text :>
               "sinks" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           ReqBody '[OctetStream] LogSink :>
                                             Post '[JSON] LogSink

-- | Creates a log sink. All log entries for a specified log are written to
-- the destination.
--
-- /See:/ 'projectsLogsSinksCreate'' smart constructor.
data ProjectsLogsSinksCreate' = ProjectsLogsSinksCreate'
    { _plscXgafv          :: !(Maybe Text)
    , _plscQuotaUser      :: !(Maybe Text)
    , _plscPrettyPrint    :: !Bool
    , _plscUploadProtocol :: !(Maybe Text)
    , _plscLogsId         :: !Text
    , _plscPp             :: !Bool
    , _plscAccessToken    :: !(Maybe Text)
    , _plscUploadType     :: !(Maybe Text)
    , _plscPayload        :: !LogSink
    , _plscBearerToken    :: !(Maybe Text)
    , _plscKey            :: !(Maybe Key)
    , _plscOAuthToken     :: !(Maybe OAuthToken)
    , _plscProjectsId     :: !Text
    , _plscFields         :: !(Maybe Text)
    , _plscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsSinksCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plscXgafv'
--
-- * 'plscQuotaUser'
--
-- * 'plscPrettyPrint'
--
-- * 'plscUploadProtocol'
--
-- * 'plscLogsId'
--
-- * 'plscPp'
--
-- * 'plscAccessToken'
--
-- * 'plscUploadType'
--
-- * 'plscPayload'
--
-- * 'plscBearerToken'
--
-- * 'plscKey'
--
-- * 'plscOAuthToken'
--
-- * 'plscProjectsId'
--
-- * 'plscFields'
--
-- * 'plscCallback'
projectsLogsSinksCreate'
    :: Text -- ^ 'logsId'
    -> LogSink -- ^ 'payload'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogsSinksCreate'
projectsLogsSinksCreate' pPlscLogsId_ pPlscPayload_ pPlscProjectsId_ =
    ProjectsLogsSinksCreate'
    { _plscXgafv = Nothing
    , _plscQuotaUser = Nothing
    , _plscPrettyPrint = True
    , _plscUploadProtocol = Nothing
    , _plscLogsId = pPlscLogsId_
    , _plscPp = True
    , _plscAccessToken = Nothing
    , _plscUploadType = Nothing
    , _plscPayload = pPlscPayload_
    , _plscBearerToken = Nothing
    , _plscKey = Nothing
    , _plscOAuthToken = Nothing
    , _plscProjectsId = pPlscProjectsId_
    , _plscFields = Nothing
    , _plscCallback = Nothing
    }

-- | V1 error format.
plscXgafv :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscXgafv
  = lens _plscXgafv (\ s a -> s{_plscXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plscQuotaUser :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscQuotaUser
  = lens _plscQuotaUser
      (\ s a -> s{_plscQuotaUser = a})

-- | Returns response with indentations and line breaks.
plscPrettyPrint :: Lens' ProjectsLogsSinksCreate' Bool
plscPrettyPrint
  = lens _plscPrettyPrint
      (\ s a -> s{_plscPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plscUploadProtocol :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscUploadProtocol
  = lens _plscUploadProtocol
      (\ s a -> s{_plscUploadProtocol = a})

-- | Part of \`logName\`. See documentation of \`projectsId\`.
plscLogsId :: Lens' ProjectsLogsSinksCreate' Text
plscLogsId
  = lens _plscLogsId (\ s a -> s{_plscLogsId = a})

-- | Pretty-print response.
plscPp :: Lens' ProjectsLogsSinksCreate' Bool
plscPp = lens _plscPp (\ s a -> s{_plscPp = a})

-- | OAuth access token.
plscAccessToken :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscAccessToken
  = lens _plscAccessToken
      (\ s a -> s{_plscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plscUploadType :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscUploadType
  = lens _plscUploadType
      (\ s a -> s{_plscUploadType = a})

-- | Multipart request metadata.
plscPayload :: Lens' ProjectsLogsSinksCreate' LogSink
plscPayload
  = lens _plscPayload (\ s a -> s{_plscPayload = a})

-- | OAuth bearer token.
plscBearerToken :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscBearerToken
  = lens _plscBearerToken
      (\ s a -> s{_plscBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plscKey :: Lens' ProjectsLogsSinksCreate' (Maybe Key)
plscKey = lens _plscKey (\ s a -> s{_plscKey = a})

-- | OAuth 2.0 token for the current user.
plscOAuthToken :: Lens' ProjectsLogsSinksCreate' (Maybe OAuthToken)
plscOAuthToken
  = lens _plscOAuthToken
      (\ s a -> s{_plscOAuthToken = a})

-- | Part of \`logName\`. The resource name of the log to which to the sink
-- is bound.
plscProjectsId :: Lens' ProjectsLogsSinksCreate' Text
plscProjectsId
  = lens _plscProjectsId
      (\ s a -> s{_plscProjectsId = a})

-- | Selector specifying which fields to include in a partial response.
plscFields :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscFields
  = lens _plscFields (\ s a -> s{_plscFields = a})

-- | JSONP
plscCallback :: Lens' ProjectsLogsSinksCreate' (Maybe Text)
plscCallback
  = lens _plscCallback (\ s a -> s{_plscCallback = a})

instance GoogleAuth ProjectsLogsSinksCreate' where
        authKey = plscKey . _Just
        authToken = plscOAuthToken . _Just

instance GoogleRequest ProjectsLogsSinksCreate' where
        type Rs ProjectsLogsSinksCreate' = LogSink
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogsSinksCreate'{..}
          = go _plscProjectsId _plscLogsId _plscXgafv
              _plscUploadProtocol
              (Just _plscPp)
              _plscAccessToken
              _plscUploadType
              _plscBearerToken
              _plscCallback
              _plscQuotaUser
              (Just _plscPrettyPrint)
              _plscFields
              _plscKey
              _plscOAuthToken
              (Just AltJSON)
              _plscPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogsSinksCreateResource)
                      r
                      u