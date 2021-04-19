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
-- Module      : Network.Google.Resource.Compute.NodeTemplates.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of node templates.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTemplates.aggregatedList@.
module Network.Google.Resource.Compute.NodeTemplates.AggregatedList
    (
    -- * REST Resource
      NodeTemplatesAggregatedListResource

    -- * Creating a Request
    , nodeTemplatesAggregatedList
    , NodeTemplatesAggregatedList

    -- * Request Lenses
    , nOrderBy
    , nProject
    , nFilter
    , nPageToken
    , nMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeTemplates.aggregatedList@ method which the
-- 'NodeTemplatesAggregatedList' request conforms to.
type NodeTemplatesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "nodeTemplates" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] NodeTemplateAggregatedList

-- | Retrieves an aggregated list of node templates.
--
-- /See:/ 'nodeTemplatesAggregatedList' smart constructor.
data NodeTemplatesAggregatedList =
  NodeTemplatesAggregatedList'
    { _nOrderBy :: !(Maybe Text)
    , _nProject :: !Text
    , _nFilter :: !(Maybe Text)
    , _nPageToken :: !(Maybe Text)
    , _nMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeTemplatesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nOrderBy'
--
-- * 'nProject'
--
-- * 'nFilter'
--
-- * 'nPageToken'
--
-- * 'nMaxResults'
nodeTemplatesAggregatedList
    :: Text -- ^ 'nProject'
    -> NodeTemplatesAggregatedList
nodeTemplatesAggregatedList pNProject_ =
  NodeTemplatesAggregatedList'
    { _nOrderBy = Nothing
    , _nProject = pNProject_
    , _nFilter = Nothing
    , _nPageToken = Nothing
    , _nMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
nOrderBy :: Lens' NodeTemplatesAggregatedList (Maybe Text)
nOrderBy = lens _nOrderBy (\ s a -> s{_nOrderBy = a})

-- | Project ID for this request.
nProject :: Lens' NodeTemplatesAggregatedList Text
nProject = lens _nProject (\ s a -> s{_nProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either =, !=, >,
-- or \<. For example, if you are filtering Compute Engine instances, you
-- can exclude instances named example-instance by specifying name !=
-- example-instance. You can also filter nested fields. For example, you
-- could specify scheduling.automaticRestart = false to include instances
-- only if they are not scheduled for automatic restarts. You can use
-- filtering on nested fields to filter based on resource labels. To filter
-- on multiple expressions, provide each separate expression within
-- parentheses. For example, (scheduling.automaticRestart = true)
-- (cpuPlatform = \"Intel Skylake\"). By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
-- For example, (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true).
nFilter :: Lens' NodeTemplatesAggregatedList (Maybe Text)
nFilter = lens _nFilter (\ s a -> s{_nFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
nPageToken :: Lens' NodeTemplatesAggregatedList (Maybe Text)
nPageToken
  = lens _nPageToken (\ s a -> s{_nPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
nMaxResults :: Lens' NodeTemplatesAggregatedList Word32
nMaxResults
  = lens _nMaxResults (\ s a -> s{_nMaxResults = a}) .
      _Coerce

instance GoogleRequest NodeTemplatesAggregatedList
         where
        type Rs NodeTemplatesAggregatedList =
             NodeTemplateAggregatedList
        type Scopes NodeTemplatesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeTemplatesAggregatedList'{..}
          = go _nProject _nOrderBy _nFilter _nPageToken
              (Just _nMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeTemplatesAggregatedListResource)
                      mempty
