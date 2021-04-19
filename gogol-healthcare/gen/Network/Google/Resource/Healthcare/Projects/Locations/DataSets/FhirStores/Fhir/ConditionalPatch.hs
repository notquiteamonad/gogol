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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ConditionalPatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- If a resource is found based on the search criteria specified in the
-- query parameters, updates part of that resource by applying the
-- operations specified in a [JSON Patch](http:\/\/jsonpatch.com\/)
-- document. Implements the FHIR standard [conditional patch
-- interaction](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#patch).
-- Search terms are provided as query parameters following the same pattern
-- as the search method. If the search criteria identify more than one
-- match, the request will return a \`412 Precondition Failed\` error. The
-- request body must contain a JSON Patch document, and the request headers
-- must contain \`Content-Type: application\/json-patch+json\`. On success,
-- the response body will contain a JSON-encoded representation of the
-- updated resource, including the server-assigned version ID. Errors
-- generated by the FHIR store will contain a JSON-encoded
-- \`OperationOutcome\` resource describing the reason for the error. If
-- the request cannot be mapped to a valid API method on a FHIR store, a
-- generic GCP error might be returned instead.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.conditionalPatch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ConditionalPatch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresFhirConditionalPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresFhirConditionalPatch
    , ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch

    -- * Request Lenses
    , pldsfsfcpParent
    , pldsfsfcpXgafv
    , pldsfsfcpUploadProtocol
    , pldsfsfcpAccessToken
    , pldsfsfcpUploadType
    , pldsfsfcpPayload
    , pldsfsfcpType
    , pldsfsfcpCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.conditionalPatch@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch' request conforms to.
type ProjectsLocationsDataSetsFhirStoresFhirConditionalPatchResource
     =
     "v1beta1" :>
       Capture "parent" Text :>
         "fhir" :>
           Capture "type" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] HTTPBody :> Patch '[JSON] HTTPBody

-- | If a resource is found based on the search criteria specified in the
-- query parameters, updates part of that resource by applying the
-- operations specified in a [JSON Patch](http:\/\/jsonpatch.com\/)
-- document. Implements the FHIR standard [conditional patch
-- interaction](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#patch).
-- Search terms are provided as query parameters following the same pattern
-- as the search method. If the search criteria identify more than one
-- match, the request will return a \`412 Precondition Failed\` error. The
-- request body must contain a JSON Patch document, and the request headers
-- must contain \`Content-Type: application\/json-patch+json\`. On success,
-- the response body will contain a JSON-encoded representation of the
-- updated resource, including the server-assigned version ID. Errors
-- generated by the FHIR store will contain a JSON-encoded
-- \`OperationOutcome\` resource describing the reason for the error. If
-- the request cannot be mapped to a valid API method on a FHIR store, a
-- generic GCP error might be returned instead.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresFhirConditionalPatch' smart constructor.
data ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch =
  ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch'
    { _pldsfsfcpParent :: !Text
    , _pldsfsfcpXgafv :: !(Maybe Xgafv)
    , _pldsfsfcpUploadProtocol :: !(Maybe Text)
    , _pldsfsfcpAccessToken :: !(Maybe Text)
    , _pldsfsfcpUploadType :: !(Maybe Text)
    , _pldsfsfcpPayload :: !HTTPBody
    , _pldsfsfcpType :: !Text
    , _pldsfsfcpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsfcpParent'
--
-- * 'pldsfsfcpXgafv'
--
-- * 'pldsfsfcpUploadProtocol'
--
-- * 'pldsfsfcpAccessToken'
--
-- * 'pldsfsfcpUploadType'
--
-- * 'pldsfsfcpPayload'
--
-- * 'pldsfsfcpType'
--
-- * 'pldsfsfcpCallback'
projectsLocationsDataSetsFhirStoresFhirConditionalPatch
    :: Text -- ^ 'pldsfsfcpParent'
    -> HTTPBody -- ^ 'pldsfsfcpPayload'
    -> Text -- ^ 'pldsfsfcpType'
    -> ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch
projectsLocationsDataSetsFhirStoresFhirConditionalPatch pPldsfsfcpParent_ pPldsfsfcpPayload_ pPldsfsfcpType_ =
  ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch'
    { _pldsfsfcpParent = pPldsfsfcpParent_
    , _pldsfsfcpXgafv = Nothing
    , _pldsfsfcpUploadProtocol = Nothing
    , _pldsfsfcpAccessToken = Nothing
    , _pldsfsfcpUploadType = Nothing
    , _pldsfsfcpPayload = pPldsfsfcpPayload_
    , _pldsfsfcpType = pPldsfsfcpType_
    , _pldsfsfcpCallback = Nothing
    }


-- | The name of the FHIR store this resource belongs to.
pldsfsfcpParent :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch Text
pldsfsfcpParent
  = lens _pldsfsfcpParent
      (\ s a -> s{_pldsfsfcpParent = a})

-- | V1 error format.
pldsfsfcpXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch (Maybe Xgafv)
pldsfsfcpXgafv
  = lens _pldsfsfcpXgafv
      (\ s a -> s{_pldsfsfcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsfcpUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch (Maybe Text)
pldsfsfcpUploadProtocol
  = lens _pldsfsfcpUploadProtocol
      (\ s a -> s{_pldsfsfcpUploadProtocol = a})

-- | OAuth access token.
pldsfsfcpAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch (Maybe Text)
pldsfsfcpAccessToken
  = lens _pldsfsfcpAccessToken
      (\ s a -> s{_pldsfsfcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsfcpUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch (Maybe Text)
pldsfsfcpUploadType
  = lens _pldsfsfcpUploadType
      (\ s a -> s{_pldsfsfcpUploadType = a})

-- | Multipart request metadata.
pldsfsfcpPayload :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch HTTPBody
pldsfsfcpPayload
  = lens _pldsfsfcpPayload
      (\ s a -> s{_pldsfsfcpPayload = a})

-- | The type of the resource to update.
pldsfsfcpType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch Text
pldsfsfcpType
  = lens _pldsfsfcpType
      (\ s a -> s{_pldsfsfcpType = a})

-- | JSONP
pldsfsfcpCallback :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch (Maybe Text)
pldsfsfcpCallback
  = lens _pldsfsfcpCallback
      (\ s a -> s{_pldsfsfcpCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresFhirConditionalPatch'{..}
          = go _pldsfsfcpParent _pldsfsfcpType _pldsfsfcpXgafv
              _pldsfsfcpUploadProtocol
              _pldsfsfcpAccessToken
              _pldsfsfcpUploadType
              _pldsfsfcpCallback
              (Just AltJSON)
              _pldsfsfcpPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresFhirConditionalPatchResource)
                      mempty
