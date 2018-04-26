
module AWS.ECR.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype Arn = Arn String
derive instance newtypeArn :: Newtype Arn _
derive instance repGenericArn :: Generic Arn _
instance showArn :: Show Arn where show = genericShow
instance decodeArn :: Decode Arn where decode = genericDecode options
instance encodeArn :: Encode Arn where encode = genericEncode options



-- | <p>An object representing authorization data for an Amazon ECR registry.</p>
newtype AuthorizationData = AuthorizationData 
  { "authorizationToken" :: Maybe (Base64)
  , "expiresAt" :: Maybe (ExpirationTimestamp)
  , "proxyEndpoint" :: Maybe (ProxyEndpoint)
  }
derive instance newtypeAuthorizationData :: Newtype AuthorizationData _
derive instance repGenericAuthorizationData :: Generic AuthorizationData _
instance showAuthorizationData :: Show AuthorizationData where show = genericShow
instance decodeAuthorizationData :: Decode AuthorizationData where decode = genericDecode options
instance encodeAuthorizationData :: Encode AuthorizationData where encode = genericEncode options

-- | Constructs AuthorizationData from required parameters
newAuthorizationData :: AuthorizationData
newAuthorizationData  = AuthorizationData { "authorizationToken": Nothing, "expiresAt": Nothing, "proxyEndpoint": Nothing }

-- | Constructs AuthorizationData's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthorizationData' :: ( { "authorizationToken" :: Maybe (Base64) , "expiresAt" :: Maybe (ExpirationTimestamp) , "proxyEndpoint" :: Maybe (ProxyEndpoint) } -> {"authorizationToken" :: Maybe (Base64) , "expiresAt" :: Maybe (ExpirationTimestamp) , "proxyEndpoint" :: Maybe (ProxyEndpoint) } ) -> AuthorizationData
newAuthorizationData'  customize = (AuthorizationData <<< customize) { "authorizationToken": Nothing, "expiresAt": Nothing, "proxyEndpoint": Nothing }



newtype AuthorizationDataList = AuthorizationDataList (Array AuthorizationData)
derive instance newtypeAuthorizationDataList :: Newtype AuthorizationDataList _
derive instance repGenericAuthorizationDataList :: Generic AuthorizationDataList _
instance showAuthorizationDataList :: Show AuthorizationDataList where show = genericShow
instance decodeAuthorizationDataList :: Decode AuthorizationDataList where decode = genericDecode options
instance encodeAuthorizationDataList :: Encode AuthorizationDataList where encode = genericEncode options



newtype Base64 = Base64 String
derive instance newtypeBase64 :: Newtype Base64 _
derive instance repGenericBase64 :: Generic Base64 _
instance showBase64 :: Show Base64 where show = genericShow
instance decodeBase64 :: Decode Base64 where decode = genericDecode options
instance encodeBase64 :: Encode Base64 where encode = genericEncode options



newtype BatchCheckLayerAvailabilityRequest = BatchCheckLayerAvailabilityRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "layerDigests" :: (BatchedOperationLayerDigestList)
  }
derive instance newtypeBatchCheckLayerAvailabilityRequest :: Newtype BatchCheckLayerAvailabilityRequest _
derive instance repGenericBatchCheckLayerAvailabilityRequest :: Generic BatchCheckLayerAvailabilityRequest _
instance showBatchCheckLayerAvailabilityRequest :: Show BatchCheckLayerAvailabilityRequest where show = genericShow
instance decodeBatchCheckLayerAvailabilityRequest :: Decode BatchCheckLayerAvailabilityRequest where decode = genericDecode options
instance encodeBatchCheckLayerAvailabilityRequest :: Encode BatchCheckLayerAvailabilityRequest where encode = genericEncode options

-- | Constructs BatchCheckLayerAvailabilityRequest from required parameters
newBatchCheckLayerAvailabilityRequest :: BatchedOperationLayerDigestList -> RepositoryName -> BatchCheckLayerAvailabilityRequest
newBatchCheckLayerAvailabilityRequest _layerDigests _repositoryName = BatchCheckLayerAvailabilityRequest { "layerDigests": _layerDigests, "repositoryName": _repositoryName, "registryId": Nothing }

-- | Constructs BatchCheckLayerAvailabilityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchCheckLayerAvailabilityRequest' :: BatchedOperationLayerDigestList -> RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "layerDigests" :: (BatchedOperationLayerDigestList) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "layerDigests" :: (BatchedOperationLayerDigestList) } ) -> BatchCheckLayerAvailabilityRequest
newBatchCheckLayerAvailabilityRequest' _layerDigests _repositoryName customize = (BatchCheckLayerAvailabilityRequest <<< customize) { "layerDigests": _layerDigests, "repositoryName": _repositoryName, "registryId": Nothing }



newtype BatchCheckLayerAvailabilityResponse = BatchCheckLayerAvailabilityResponse 
  { "layers" :: Maybe (LayerList)
  , "failures" :: Maybe (LayerFailureList)
  }
derive instance newtypeBatchCheckLayerAvailabilityResponse :: Newtype BatchCheckLayerAvailabilityResponse _
derive instance repGenericBatchCheckLayerAvailabilityResponse :: Generic BatchCheckLayerAvailabilityResponse _
instance showBatchCheckLayerAvailabilityResponse :: Show BatchCheckLayerAvailabilityResponse where show = genericShow
instance decodeBatchCheckLayerAvailabilityResponse :: Decode BatchCheckLayerAvailabilityResponse where decode = genericDecode options
instance encodeBatchCheckLayerAvailabilityResponse :: Encode BatchCheckLayerAvailabilityResponse where encode = genericEncode options

-- | Constructs BatchCheckLayerAvailabilityResponse from required parameters
newBatchCheckLayerAvailabilityResponse :: BatchCheckLayerAvailabilityResponse
newBatchCheckLayerAvailabilityResponse  = BatchCheckLayerAvailabilityResponse { "failures": Nothing, "layers": Nothing }

-- | Constructs BatchCheckLayerAvailabilityResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchCheckLayerAvailabilityResponse' :: ( { "layers" :: Maybe (LayerList) , "failures" :: Maybe (LayerFailureList) } -> {"layers" :: Maybe (LayerList) , "failures" :: Maybe (LayerFailureList) } ) -> BatchCheckLayerAvailabilityResponse
newBatchCheckLayerAvailabilityResponse'  customize = (BatchCheckLayerAvailabilityResponse <<< customize) { "failures": Nothing, "layers": Nothing }



-- | <p>Deletes specified images within a specified repository. Images are specified with either the <code>imageTag</code> or <code>imageDigest</code>.</p>
newtype BatchDeleteImageRequest = BatchDeleteImageRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "imageIds" :: (ImageIdentifierList)
  }
derive instance newtypeBatchDeleteImageRequest :: Newtype BatchDeleteImageRequest _
derive instance repGenericBatchDeleteImageRequest :: Generic BatchDeleteImageRequest _
instance showBatchDeleteImageRequest :: Show BatchDeleteImageRequest where show = genericShow
instance decodeBatchDeleteImageRequest :: Decode BatchDeleteImageRequest where decode = genericDecode options
instance encodeBatchDeleteImageRequest :: Encode BatchDeleteImageRequest where encode = genericEncode options

-- | Constructs BatchDeleteImageRequest from required parameters
newBatchDeleteImageRequest :: ImageIdentifierList -> RepositoryName -> BatchDeleteImageRequest
newBatchDeleteImageRequest _imageIds _repositoryName = BatchDeleteImageRequest { "imageIds": _imageIds, "repositoryName": _repositoryName, "registryId": Nothing }

-- | Constructs BatchDeleteImageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDeleteImageRequest' :: ImageIdentifierList -> RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: (ImageIdentifierList) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: (ImageIdentifierList) } ) -> BatchDeleteImageRequest
newBatchDeleteImageRequest' _imageIds _repositoryName customize = (BatchDeleteImageRequest <<< customize) { "imageIds": _imageIds, "repositoryName": _repositoryName, "registryId": Nothing }



newtype BatchDeleteImageResponse = BatchDeleteImageResponse 
  { "imageIds" :: Maybe (ImageIdentifierList)
  , "failures" :: Maybe (ImageFailureList)
  }
derive instance newtypeBatchDeleteImageResponse :: Newtype BatchDeleteImageResponse _
derive instance repGenericBatchDeleteImageResponse :: Generic BatchDeleteImageResponse _
instance showBatchDeleteImageResponse :: Show BatchDeleteImageResponse where show = genericShow
instance decodeBatchDeleteImageResponse :: Decode BatchDeleteImageResponse where decode = genericDecode options
instance encodeBatchDeleteImageResponse :: Encode BatchDeleteImageResponse where encode = genericEncode options

-- | Constructs BatchDeleteImageResponse from required parameters
newBatchDeleteImageResponse :: BatchDeleteImageResponse
newBatchDeleteImageResponse  = BatchDeleteImageResponse { "failures": Nothing, "imageIds": Nothing }

-- | Constructs BatchDeleteImageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDeleteImageResponse' :: ( { "imageIds" :: Maybe (ImageIdentifierList) , "failures" :: Maybe (ImageFailureList) } -> {"imageIds" :: Maybe (ImageIdentifierList) , "failures" :: Maybe (ImageFailureList) } ) -> BatchDeleteImageResponse
newBatchDeleteImageResponse'  customize = (BatchDeleteImageResponse <<< customize) { "failures": Nothing, "imageIds": Nothing }



newtype BatchGetImageRequest = BatchGetImageRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "imageIds" :: (ImageIdentifierList)
  , "acceptedMediaTypes" :: Maybe (MediaTypeList)
  }
derive instance newtypeBatchGetImageRequest :: Newtype BatchGetImageRequest _
derive instance repGenericBatchGetImageRequest :: Generic BatchGetImageRequest _
instance showBatchGetImageRequest :: Show BatchGetImageRequest where show = genericShow
instance decodeBatchGetImageRequest :: Decode BatchGetImageRequest where decode = genericDecode options
instance encodeBatchGetImageRequest :: Encode BatchGetImageRequest where encode = genericEncode options

-- | Constructs BatchGetImageRequest from required parameters
newBatchGetImageRequest :: ImageIdentifierList -> RepositoryName -> BatchGetImageRequest
newBatchGetImageRequest _imageIds _repositoryName = BatchGetImageRequest { "imageIds": _imageIds, "repositoryName": _repositoryName, "acceptedMediaTypes": Nothing, "registryId": Nothing }

-- | Constructs BatchGetImageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetImageRequest' :: ImageIdentifierList -> RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: (ImageIdentifierList) , "acceptedMediaTypes" :: Maybe (MediaTypeList) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: (ImageIdentifierList) , "acceptedMediaTypes" :: Maybe (MediaTypeList) } ) -> BatchGetImageRequest
newBatchGetImageRequest' _imageIds _repositoryName customize = (BatchGetImageRequest <<< customize) { "imageIds": _imageIds, "repositoryName": _repositoryName, "acceptedMediaTypes": Nothing, "registryId": Nothing }



newtype BatchGetImageResponse = BatchGetImageResponse 
  { "images" :: Maybe (ImageList)
  , "failures" :: Maybe (ImageFailureList)
  }
derive instance newtypeBatchGetImageResponse :: Newtype BatchGetImageResponse _
derive instance repGenericBatchGetImageResponse :: Generic BatchGetImageResponse _
instance showBatchGetImageResponse :: Show BatchGetImageResponse where show = genericShow
instance decodeBatchGetImageResponse :: Decode BatchGetImageResponse where decode = genericDecode options
instance encodeBatchGetImageResponse :: Encode BatchGetImageResponse where encode = genericEncode options

-- | Constructs BatchGetImageResponse from required parameters
newBatchGetImageResponse :: BatchGetImageResponse
newBatchGetImageResponse  = BatchGetImageResponse { "failures": Nothing, "images": Nothing }

-- | Constructs BatchGetImageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetImageResponse' :: ( { "images" :: Maybe (ImageList) , "failures" :: Maybe (ImageFailureList) } -> {"images" :: Maybe (ImageList) , "failures" :: Maybe (ImageFailureList) } ) -> BatchGetImageResponse
newBatchGetImageResponse'  customize = (BatchGetImageResponse <<< customize) { "failures": Nothing, "images": Nothing }



newtype BatchedOperationLayerDigest = BatchedOperationLayerDigest String
derive instance newtypeBatchedOperationLayerDigest :: Newtype BatchedOperationLayerDigest _
derive instance repGenericBatchedOperationLayerDigest :: Generic BatchedOperationLayerDigest _
instance showBatchedOperationLayerDigest :: Show BatchedOperationLayerDigest where show = genericShow
instance decodeBatchedOperationLayerDigest :: Decode BatchedOperationLayerDigest where decode = genericDecode options
instance encodeBatchedOperationLayerDigest :: Encode BatchedOperationLayerDigest where encode = genericEncode options



newtype BatchedOperationLayerDigestList = BatchedOperationLayerDigestList (Array BatchedOperationLayerDigest)
derive instance newtypeBatchedOperationLayerDigestList :: Newtype BatchedOperationLayerDigestList _
derive instance repGenericBatchedOperationLayerDigestList :: Generic BatchedOperationLayerDigestList _
instance showBatchedOperationLayerDigestList :: Show BatchedOperationLayerDigestList where show = genericShow
instance decodeBatchedOperationLayerDigestList :: Decode BatchedOperationLayerDigestList where decode = genericDecode options
instance encodeBatchedOperationLayerDigestList :: Encode BatchedOperationLayerDigestList where encode = genericEncode options



newtype CompleteLayerUploadRequest = CompleteLayerUploadRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "uploadId" :: (UploadId)
  , "layerDigests" :: (LayerDigestList)
  }
derive instance newtypeCompleteLayerUploadRequest :: Newtype CompleteLayerUploadRequest _
derive instance repGenericCompleteLayerUploadRequest :: Generic CompleteLayerUploadRequest _
instance showCompleteLayerUploadRequest :: Show CompleteLayerUploadRequest where show = genericShow
instance decodeCompleteLayerUploadRequest :: Decode CompleteLayerUploadRequest where decode = genericDecode options
instance encodeCompleteLayerUploadRequest :: Encode CompleteLayerUploadRequest where encode = genericEncode options

-- | Constructs CompleteLayerUploadRequest from required parameters
newCompleteLayerUploadRequest :: LayerDigestList -> RepositoryName -> UploadId -> CompleteLayerUploadRequest
newCompleteLayerUploadRequest _layerDigests _repositoryName _uploadId = CompleteLayerUploadRequest { "layerDigests": _layerDigests, "repositoryName": _repositoryName, "uploadId": _uploadId, "registryId": Nothing }

-- | Constructs CompleteLayerUploadRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompleteLayerUploadRequest' :: LayerDigestList -> RepositoryName -> UploadId -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "uploadId" :: (UploadId) , "layerDigests" :: (LayerDigestList) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "uploadId" :: (UploadId) , "layerDigests" :: (LayerDigestList) } ) -> CompleteLayerUploadRequest
newCompleteLayerUploadRequest' _layerDigests _repositoryName _uploadId customize = (CompleteLayerUploadRequest <<< customize) { "layerDigests": _layerDigests, "repositoryName": _repositoryName, "uploadId": _uploadId, "registryId": Nothing }



newtype CompleteLayerUploadResponse = CompleteLayerUploadResponse 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "uploadId" :: Maybe (UploadId)
  , "layerDigest" :: Maybe (LayerDigest)
  }
derive instance newtypeCompleteLayerUploadResponse :: Newtype CompleteLayerUploadResponse _
derive instance repGenericCompleteLayerUploadResponse :: Generic CompleteLayerUploadResponse _
instance showCompleteLayerUploadResponse :: Show CompleteLayerUploadResponse where show = genericShow
instance decodeCompleteLayerUploadResponse :: Decode CompleteLayerUploadResponse where decode = genericDecode options
instance encodeCompleteLayerUploadResponse :: Encode CompleteLayerUploadResponse where encode = genericEncode options

-- | Constructs CompleteLayerUploadResponse from required parameters
newCompleteLayerUploadResponse :: CompleteLayerUploadResponse
newCompleteLayerUploadResponse  = CompleteLayerUploadResponse { "layerDigest": Nothing, "registryId": Nothing, "repositoryName": Nothing, "uploadId": Nothing }

-- | Constructs CompleteLayerUploadResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompleteLayerUploadResponse' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "uploadId" :: Maybe (UploadId) , "layerDigest" :: Maybe (LayerDigest) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "uploadId" :: Maybe (UploadId) , "layerDigest" :: Maybe (LayerDigest) } ) -> CompleteLayerUploadResponse
newCompleteLayerUploadResponse'  customize = (CompleteLayerUploadResponse <<< customize) { "layerDigest": Nothing, "registryId": Nothing, "repositoryName": Nothing, "uploadId": Nothing }



newtype CreateRepositoryRequest = CreateRepositoryRequest 
  { "repositoryName" :: (RepositoryName)
  }
derive instance newtypeCreateRepositoryRequest :: Newtype CreateRepositoryRequest _
derive instance repGenericCreateRepositoryRequest :: Generic CreateRepositoryRequest _
instance showCreateRepositoryRequest :: Show CreateRepositoryRequest where show = genericShow
instance decodeCreateRepositoryRequest :: Decode CreateRepositoryRequest where decode = genericDecode options
instance encodeCreateRepositoryRequest :: Encode CreateRepositoryRequest where encode = genericEncode options

-- | Constructs CreateRepositoryRequest from required parameters
newCreateRepositoryRequest :: RepositoryName -> CreateRepositoryRequest
newCreateRepositoryRequest _repositoryName = CreateRepositoryRequest { "repositoryName": _repositoryName }

-- | Constructs CreateRepositoryRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRepositoryRequest' :: RepositoryName -> ( { "repositoryName" :: (RepositoryName) } -> {"repositoryName" :: (RepositoryName) } ) -> CreateRepositoryRequest
newCreateRepositoryRequest' _repositoryName customize = (CreateRepositoryRequest <<< customize) { "repositoryName": _repositoryName }



newtype CreateRepositoryResponse = CreateRepositoryResponse 
  { "repository" :: Maybe (Repository)
  }
derive instance newtypeCreateRepositoryResponse :: Newtype CreateRepositoryResponse _
derive instance repGenericCreateRepositoryResponse :: Generic CreateRepositoryResponse _
instance showCreateRepositoryResponse :: Show CreateRepositoryResponse where show = genericShow
instance decodeCreateRepositoryResponse :: Decode CreateRepositoryResponse where decode = genericDecode options
instance encodeCreateRepositoryResponse :: Encode CreateRepositoryResponse where encode = genericEncode options

-- | Constructs CreateRepositoryResponse from required parameters
newCreateRepositoryResponse :: CreateRepositoryResponse
newCreateRepositoryResponse  = CreateRepositoryResponse { "repository": Nothing }

-- | Constructs CreateRepositoryResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRepositoryResponse' :: ( { "repository" :: Maybe (Repository) } -> {"repository" :: Maybe (Repository) } ) -> CreateRepositoryResponse
newCreateRepositoryResponse'  customize = (CreateRepositoryResponse <<< customize) { "repository": Nothing }



newtype CreationTimestamp = CreationTimestamp Types.Timestamp
derive instance newtypeCreationTimestamp :: Newtype CreationTimestamp _
derive instance repGenericCreationTimestamp :: Generic CreationTimestamp _
instance showCreationTimestamp :: Show CreationTimestamp where show = genericShow
instance decodeCreationTimestamp :: Decode CreationTimestamp where decode = genericDecode options
instance encodeCreationTimestamp :: Encode CreationTimestamp where encode = genericEncode options



newtype DeleteLifecyclePolicyRequest = DeleteLifecyclePolicyRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  }
derive instance newtypeDeleteLifecyclePolicyRequest :: Newtype DeleteLifecyclePolicyRequest _
derive instance repGenericDeleteLifecyclePolicyRequest :: Generic DeleteLifecyclePolicyRequest _
instance showDeleteLifecyclePolicyRequest :: Show DeleteLifecyclePolicyRequest where show = genericShow
instance decodeDeleteLifecyclePolicyRequest :: Decode DeleteLifecyclePolicyRequest where decode = genericDecode options
instance encodeDeleteLifecyclePolicyRequest :: Encode DeleteLifecyclePolicyRequest where encode = genericEncode options

-- | Constructs DeleteLifecyclePolicyRequest from required parameters
newDeleteLifecyclePolicyRequest :: RepositoryName -> DeleteLifecyclePolicyRequest
newDeleteLifecyclePolicyRequest _repositoryName = DeleteLifecyclePolicyRequest { "repositoryName": _repositoryName, "registryId": Nothing }

-- | Constructs DeleteLifecyclePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteLifecyclePolicyRequest' :: RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) } ) -> DeleteLifecyclePolicyRequest
newDeleteLifecyclePolicyRequest' _repositoryName customize = (DeleteLifecyclePolicyRequest <<< customize) { "repositoryName": _repositoryName, "registryId": Nothing }



newtype DeleteLifecyclePolicyResponse = DeleteLifecyclePolicyResponse 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText)
  , "lastEvaluatedAt" :: Maybe (EvaluationTimestamp)
  }
derive instance newtypeDeleteLifecyclePolicyResponse :: Newtype DeleteLifecyclePolicyResponse _
derive instance repGenericDeleteLifecyclePolicyResponse :: Generic DeleteLifecyclePolicyResponse _
instance showDeleteLifecyclePolicyResponse :: Show DeleteLifecyclePolicyResponse where show = genericShow
instance decodeDeleteLifecyclePolicyResponse :: Decode DeleteLifecyclePolicyResponse where decode = genericDecode options
instance encodeDeleteLifecyclePolicyResponse :: Encode DeleteLifecyclePolicyResponse where encode = genericEncode options

-- | Constructs DeleteLifecyclePolicyResponse from required parameters
newDeleteLifecyclePolicyResponse :: DeleteLifecyclePolicyResponse
newDeleteLifecyclePolicyResponse  = DeleteLifecyclePolicyResponse { "lastEvaluatedAt": Nothing, "lifecyclePolicyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }

-- | Constructs DeleteLifecyclePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteLifecyclePolicyResponse' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) , "lastEvaluatedAt" :: Maybe (EvaluationTimestamp) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) , "lastEvaluatedAt" :: Maybe (EvaluationTimestamp) } ) -> DeleteLifecyclePolicyResponse
newDeleteLifecyclePolicyResponse'  customize = (DeleteLifecyclePolicyResponse <<< customize) { "lastEvaluatedAt": Nothing, "lifecyclePolicyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }



newtype DeleteRepositoryPolicyRequest = DeleteRepositoryPolicyRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  }
derive instance newtypeDeleteRepositoryPolicyRequest :: Newtype DeleteRepositoryPolicyRequest _
derive instance repGenericDeleteRepositoryPolicyRequest :: Generic DeleteRepositoryPolicyRequest _
instance showDeleteRepositoryPolicyRequest :: Show DeleteRepositoryPolicyRequest where show = genericShow
instance decodeDeleteRepositoryPolicyRequest :: Decode DeleteRepositoryPolicyRequest where decode = genericDecode options
instance encodeDeleteRepositoryPolicyRequest :: Encode DeleteRepositoryPolicyRequest where encode = genericEncode options

-- | Constructs DeleteRepositoryPolicyRequest from required parameters
newDeleteRepositoryPolicyRequest :: RepositoryName -> DeleteRepositoryPolicyRequest
newDeleteRepositoryPolicyRequest _repositoryName = DeleteRepositoryPolicyRequest { "repositoryName": _repositoryName, "registryId": Nothing }

-- | Constructs DeleteRepositoryPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRepositoryPolicyRequest' :: RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) } ) -> DeleteRepositoryPolicyRequest
newDeleteRepositoryPolicyRequest' _repositoryName customize = (DeleteRepositoryPolicyRequest <<< customize) { "repositoryName": _repositoryName, "registryId": Nothing }



newtype DeleteRepositoryPolicyResponse = DeleteRepositoryPolicyResponse 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "policyText" :: Maybe (RepositoryPolicyText)
  }
derive instance newtypeDeleteRepositoryPolicyResponse :: Newtype DeleteRepositoryPolicyResponse _
derive instance repGenericDeleteRepositoryPolicyResponse :: Generic DeleteRepositoryPolicyResponse _
instance showDeleteRepositoryPolicyResponse :: Show DeleteRepositoryPolicyResponse where show = genericShow
instance decodeDeleteRepositoryPolicyResponse :: Decode DeleteRepositoryPolicyResponse where decode = genericDecode options
instance encodeDeleteRepositoryPolicyResponse :: Encode DeleteRepositoryPolicyResponse where encode = genericEncode options

-- | Constructs DeleteRepositoryPolicyResponse from required parameters
newDeleteRepositoryPolicyResponse :: DeleteRepositoryPolicyResponse
newDeleteRepositoryPolicyResponse  = DeleteRepositoryPolicyResponse { "policyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }

-- | Constructs DeleteRepositoryPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRepositoryPolicyResponse' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "policyText" :: Maybe (RepositoryPolicyText) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "policyText" :: Maybe (RepositoryPolicyText) } ) -> DeleteRepositoryPolicyResponse
newDeleteRepositoryPolicyResponse'  customize = (DeleteRepositoryPolicyResponse <<< customize) { "policyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }



newtype DeleteRepositoryRequest = DeleteRepositoryRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "force" :: Maybe (ForceFlag)
  }
derive instance newtypeDeleteRepositoryRequest :: Newtype DeleteRepositoryRequest _
derive instance repGenericDeleteRepositoryRequest :: Generic DeleteRepositoryRequest _
instance showDeleteRepositoryRequest :: Show DeleteRepositoryRequest where show = genericShow
instance decodeDeleteRepositoryRequest :: Decode DeleteRepositoryRequest where decode = genericDecode options
instance encodeDeleteRepositoryRequest :: Encode DeleteRepositoryRequest where encode = genericEncode options

-- | Constructs DeleteRepositoryRequest from required parameters
newDeleteRepositoryRequest :: RepositoryName -> DeleteRepositoryRequest
newDeleteRepositoryRequest _repositoryName = DeleteRepositoryRequest { "repositoryName": _repositoryName, "force": Nothing, "registryId": Nothing }

-- | Constructs DeleteRepositoryRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRepositoryRequest' :: RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "force" :: Maybe (ForceFlag) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "force" :: Maybe (ForceFlag) } ) -> DeleteRepositoryRequest
newDeleteRepositoryRequest' _repositoryName customize = (DeleteRepositoryRequest <<< customize) { "repositoryName": _repositoryName, "force": Nothing, "registryId": Nothing }



newtype DeleteRepositoryResponse = DeleteRepositoryResponse 
  { "repository" :: Maybe (Repository)
  }
derive instance newtypeDeleteRepositoryResponse :: Newtype DeleteRepositoryResponse _
derive instance repGenericDeleteRepositoryResponse :: Generic DeleteRepositoryResponse _
instance showDeleteRepositoryResponse :: Show DeleteRepositoryResponse where show = genericShow
instance decodeDeleteRepositoryResponse :: Decode DeleteRepositoryResponse where decode = genericDecode options
instance encodeDeleteRepositoryResponse :: Encode DeleteRepositoryResponse where encode = genericEncode options

-- | Constructs DeleteRepositoryResponse from required parameters
newDeleteRepositoryResponse :: DeleteRepositoryResponse
newDeleteRepositoryResponse  = DeleteRepositoryResponse { "repository": Nothing }

-- | Constructs DeleteRepositoryResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRepositoryResponse' :: ( { "repository" :: Maybe (Repository) } -> {"repository" :: Maybe (Repository) } ) -> DeleteRepositoryResponse
newDeleteRepositoryResponse'  customize = (DeleteRepositoryResponse <<< customize) { "repository": Nothing }



-- | <p>An object representing a filter on a <a>DescribeImages</a> operation.</p>
newtype DescribeImagesFilter = DescribeImagesFilter 
  { "tagStatus" :: Maybe (TagStatus)
  }
derive instance newtypeDescribeImagesFilter :: Newtype DescribeImagesFilter _
derive instance repGenericDescribeImagesFilter :: Generic DescribeImagesFilter _
instance showDescribeImagesFilter :: Show DescribeImagesFilter where show = genericShow
instance decodeDescribeImagesFilter :: Decode DescribeImagesFilter where decode = genericDecode options
instance encodeDescribeImagesFilter :: Encode DescribeImagesFilter where encode = genericEncode options

-- | Constructs DescribeImagesFilter from required parameters
newDescribeImagesFilter :: DescribeImagesFilter
newDescribeImagesFilter  = DescribeImagesFilter { "tagStatus": Nothing }

-- | Constructs DescribeImagesFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeImagesFilter' :: ( { "tagStatus" :: Maybe (TagStatus) } -> {"tagStatus" :: Maybe (TagStatus) } ) -> DescribeImagesFilter
newDescribeImagesFilter'  customize = (DescribeImagesFilter <<< customize) { "tagStatus": Nothing }



newtype DescribeImagesRequest = DescribeImagesRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "imageIds" :: Maybe (ImageIdentifierList)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  , "filter" :: Maybe (DescribeImagesFilter)
  }
derive instance newtypeDescribeImagesRequest :: Newtype DescribeImagesRequest _
derive instance repGenericDescribeImagesRequest :: Generic DescribeImagesRequest _
instance showDescribeImagesRequest :: Show DescribeImagesRequest where show = genericShow
instance decodeDescribeImagesRequest :: Decode DescribeImagesRequest where decode = genericDecode options
instance encodeDescribeImagesRequest :: Encode DescribeImagesRequest where encode = genericEncode options

-- | Constructs DescribeImagesRequest from required parameters
newDescribeImagesRequest :: RepositoryName -> DescribeImagesRequest
newDescribeImagesRequest _repositoryName = DescribeImagesRequest { "repositoryName": _repositoryName, "filter": Nothing, "imageIds": Nothing, "maxResults": Nothing, "nextToken": Nothing, "registryId": Nothing }

-- | Constructs DescribeImagesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeImagesRequest' :: RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: Maybe (ImageIdentifierList) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "filter" :: Maybe (DescribeImagesFilter) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: Maybe (ImageIdentifierList) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "filter" :: Maybe (DescribeImagesFilter) } ) -> DescribeImagesRequest
newDescribeImagesRequest' _repositoryName customize = (DescribeImagesRequest <<< customize) { "repositoryName": _repositoryName, "filter": Nothing, "imageIds": Nothing, "maxResults": Nothing, "nextToken": Nothing, "registryId": Nothing }



newtype DescribeImagesResponse = DescribeImagesResponse 
  { "imageDetails" :: Maybe (ImageDetailList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeImagesResponse :: Newtype DescribeImagesResponse _
derive instance repGenericDescribeImagesResponse :: Generic DescribeImagesResponse _
instance showDescribeImagesResponse :: Show DescribeImagesResponse where show = genericShow
instance decodeDescribeImagesResponse :: Decode DescribeImagesResponse where decode = genericDecode options
instance encodeDescribeImagesResponse :: Encode DescribeImagesResponse where encode = genericEncode options

-- | Constructs DescribeImagesResponse from required parameters
newDescribeImagesResponse :: DescribeImagesResponse
newDescribeImagesResponse  = DescribeImagesResponse { "imageDetails": Nothing, "nextToken": Nothing }

-- | Constructs DescribeImagesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeImagesResponse' :: ( { "imageDetails" :: Maybe (ImageDetailList) , "nextToken" :: Maybe (NextToken) } -> {"imageDetails" :: Maybe (ImageDetailList) , "nextToken" :: Maybe (NextToken) } ) -> DescribeImagesResponse
newDescribeImagesResponse'  customize = (DescribeImagesResponse <<< customize) { "imageDetails": Nothing, "nextToken": Nothing }



newtype DescribeRepositoriesRequest = DescribeRepositoriesRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryNames" :: Maybe (RepositoryNameList)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeDescribeRepositoriesRequest :: Newtype DescribeRepositoriesRequest _
derive instance repGenericDescribeRepositoriesRequest :: Generic DescribeRepositoriesRequest _
instance showDescribeRepositoriesRequest :: Show DescribeRepositoriesRequest where show = genericShow
instance decodeDescribeRepositoriesRequest :: Decode DescribeRepositoriesRequest where decode = genericDecode options
instance encodeDescribeRepositoriesRequest :: Encode DescribeRepositoriesRequest where encode = genericEncode options

-- | Constructs DescribeRepositoriesRequest from required parameters
newDescribeRepositoriesRequest :: DescribeRepositoriesRequest
newDescribeRepositoriesRequest  = DescribeRepositoriesRequest { "maxResults": Nothing, "nextToken": Nothing, "registryId": Nothing, "repositoryNames": Nothing }

-- | Constructs DescribeRepositoriesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRepositoriesRequest' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryNames" :: Maybe (RepositoryNameList) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } -> {"registryId" :: Maybe (RegistryId) , "repositoryNames" :: Maybe (RepositoryNameList) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } ) -> DescribeRepositoriesRequest
newDescribeRepositoriesRequest'  customize = (DescribeRepositoriesRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing, "registryId": Nothing, "repositoryNames": Nothing }



newtype DescribeRepositoriesResponse = DescribeRepositoriesResponse 
  { "repositories" :: Maybe (RepositoryList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeRepositoriesResponse :: Newtype DescribeRepositoriesResponse _
derive instance repGenericDescribeRepositoriesResponse :: Generic DescribeRepositoriesResponse _
instance showDescribeRepositoriesResponse :: Show DescribeRepositoriesResponse where show = genericShow
instance decodeDescribeRepositoriesResponse :: Decode DescribeRepositoriesResponse where decode = genericDecode options
instance encodeDescribeRepositoriesResponse :: Encode DescribeRepositoriesResponse where encode = genericEncode options

-- | Constructs DescribeRepositoriesResponse from required parameters
newDescribeRepositoriesResponse :: DescribeRepositoriesResponse
newDescribeRepositoriesResponse  = DescribeRepositoriesResponse { "nextToken": Nothing, "repositories": Nothing }

-- | Constructs DescribeRepositoriesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRepositoriesResponse' :: ( { "repositories" :: Maybe (RepositoryList) , "nextToken" :: Maybe (NextToken) } -> {"repositories" :: Maybe (RepositoryList) , "nextToken" :: Maybe (NextToken) } ) -> DescribeRepositoriesResponse
newDescribeRepositoriesResponse'  customize = (DescribeRepositoriesResponse <<< customize) { "nextToken": Nothing, "repositories": Nothing }



-- | <p>The specified layer upload does not contain any layer parts.</p>
newtype EmptyUploadException = EmptyUploadException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeEmptyUploadException :: Newtype EmptyUploadException _
derive instance repGenericEmptyUploadException :: Generic EmptyUploadException _
instance showEmptyUploadException :: Show EmptyUploadException where show = genericShow
instance decodeEmptyUploadException :: Decode EmptyUploadException where decode = genericDecode options
instance encodeEmptyUploadException :: Encode EmptyUploadException where encode = genericEncode options

-- | Constructs EmptyUploadException from required parameters
newEmptyUploadException :: EmptyUploadException
newEmptyUploadException  = EmptyUploadException { "message": Nothing }

-- | Constructs EmptyUploadException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEmptyUploadException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> EmptyUploadException
newEmptyUploadException'  customize = (EmptyUploadException <<< customize) { "message": Nothing }



newtype EvaluationTimestamp = EvaluationTimestamp Types.Timestamp
derive instance newtypeEvaluationTimestamp :: Newtype EvaluationTimestamp _
derive instance repGenericEvaluationTimestamp :: Generic EvaluationTimestamp _
instance showEvaluationTimestamp :: Show EvaluationTimestamp where show = genericShow
instance decodeEvaluationTimestamp :: Decode EvaluationTimestamp where decode = genericDecode options
instance encodeEvaluationTimestamp :: Encode EvaluationTimestamp where encode = genericEncode options



newtype ExceptionMessage = ExceptionMessage String
derive instance newtypeExceptionMessage :: Newtype ExceptionMessage _
derive instance repGenericExceptionMessage :: Generic ExceptionMessage _
instance showExceptionMessage :: Show ExceptionMessage where show = genericShow
instance decodeExceptionMessage :: Decode ExceptionMessage where decode = genericDecode options
instance encodeExceptionMessage :: Encode ExceptionMessage where encode = genericEncode options



newtype ExpirationTimestamp = ExpirationTimestamp Types.Timestamp
derive instance newtypeExpirationTimestamp :: Newtype ExpirationTimestamp _
derive instance repGenericExpirationTimestamp :: Generic ExpirationTimestamp _
instance showExpirationTimestamp :: Show ExpirationTimestamp where show = genericShow
instance decodeExpirationTimestamp :: Decode ExpirationTimestamp where decode = genericDecode options
instance encodeExpirationTimestamp :: Encode ExpirationTimestamp where encode = genericEncode options



newtype ForceFlag = ForceFlag Boolean
derive instance newtypeForceFlag :: Newtype ForceFlag _
derive instance repGenericForceFlag :: Generic ForceFlag _
instance showForceFlag :: Show ForceFlag where show = genericShow
instance decodeForceFlag :: Decode ForceFlag where decode = genericDecode options
instance encodeForceFlag :: Encode ForceFlag where encode = genericEncode options



newtype GetAuthorizationTokenRegistryIdList = GetAuthorizationTokenRegistryIdList (Array RegistryId)
derive instance newtypeGetAuthorizationTokenRegistryIdList :: Newtype GetAuthorizationTokenRegistryIdList _
derive instance repGenericGetAuthorizationTokenRegistryIdList :: Generic GetAuthorizationTokenRegistryIdList _
instance showGetAuthorizationTokenRegistryIdList :: Show GetAuthorizationTokenRegistryIdList where show = genericShow
instance decodeGetAuthorizationTokenRegistryIdList :: Decode GetAuthorizationTokenRegistryIdList where decode = genericDecode options
instance encodeGetAuthorizationTokenRegistryIdList :: Encode GetAuthorizationTokenRegistryIdList where encode = genericEncode options



newtype GetAuthorizationTokenRequest = GetAuthorizationTokenRequest 
  { "registryIds" :: Maybe (GetAuthorizationTokenRegistryIdList)
  }
derive instance newtypeGetAuthorizationTokenRequest :: Newtype GetAuthorizationTokenRequest _
derive instance repGenericGetAuthorizationTokenRequest :: Generic GetAuthorizationTokenRequest _
instance showGetAuthorizationTokenRequest :: Show GetAuthorizationTokenRequest where show = genericShow
instance decodeGetAuthorizationTokenRequest :: Decode GetAuthorizationTokenRequest where decode = genericDecode options
instance encodeGetAuthorizationTokenRequest :: Encode GetAuthorizationTokenRequest where encode = genericEncode options

-- | Constructs GetAuthorizationTokenRequest from required parameters
newGetAuthorizationTokenRequest :: GetAuthorizationTokenRequest
newGetAuthorizationTokenRequest  = GetAuthorizationTokenRequest { "registryIds": Nothing }

-- | Constructs GetAuthorizationTokenRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAuthorizationTokenRequest' :: ( { "registryIds" :: Maybe (GetAuthorizationTokenRegistryIdList) } -> {"registryIds" :: Maybe (GetAuthorizationTokenRegistryIdList) } ) -> GetAuthorizationTokenRequest
newGetAuthorizationTokenRequest'  customize = (GetAuthorizationTokenRequest <<< customize) { "registryIds": Nothing }



newtype GetAuthorizationTokenResponse = GetAuthorizationTokenResponse 
  { "authorizationData" :: Maybe (AuthorizationDataList)
  }
derive instance newtypeGetAuthorizationTokenResponse :: Newtype GetAuthorizationTokenResponse _
derive instance repGenericGetAuthorizationTokenResponse :: Generic GetAuthorizationTokenResponse _
instance showGetAuthorizationTokenResponse :: Show GetAuthorizationTokenResponse where show = genericShow
instance decodeGetAuthorizationTokenResponse :: Decode GetAuthorizationTokenResponse where decode = genericDecode options
instance encodeGetAuthorizationTokenResponse :: Encode GetAuthorizationTokenResponse where encode = genericEncode options

-- | Constructs GetAuthorizationTokenResponse from required parameters
newGetAuthorizationTokenResponse :: GetAuthorizationTokenResponse
newGetAuthorizationTokenResponse  = GetAuthorizationTokenResponse { "authorizationData": Nothing }

-- | Constructs GetAuthorizationTokenResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAuthorizationTokenResponse' :: ( { "authorizationData" :: Maybe (AuthorizationDataList) } -> {"authorizationData" :: Maybe (AuthorizationDataList) } ) -> GetAuthorizationTokenResponse
newGetAuthorizationTokenResponse'  customize = (GetAuthorizationTokenResponse <<< customize) { "authorizationData": Nothing }



newtype GetDownloadUrlForLayerRequest = GetDownloadUrlForLayerRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "layerDigest" :: (LayerDigest)
  }
derive instance newtypeGetDownloadUrlForLayerRequest :: Newtype GetDownloadUrlForLayerRequest _
derive instance repGenericGetDownloadUrlForLayerRequest :: Generic GetDownloadUrlForLayerRequest _
instance showGetDownloadUrlForLayerRequest :: Show GetDownloadUrlForLayerRequest where show = genericShow
instance decodeGetDownloadUrlForLayerRequest :: Decode GetDownloadUrlForLayerRequest where decode = genericDecode options
instance encodeGetDownloadUrlForLayerRequest :: Encode GetDownloadUrlForLayerRequest where encode = genericEncode options

-- | Constructs GetDownloadUrlForLayerRequest from required parameters
newGetDownloadUrlForLayerRequest :: LayerDigest -> RepositoryName -> GetDownloadUrlForLayerRequest
newGetDownloadUrlForLayerRequest _layerDigest _repositoryName = GetDownloadUrlForLayerRequest { "layerDigest": _layerDigest, "repositoryName": _repositoryName, "registryId": Nothing }

-- | Constructs GetDownloadUrlForLayerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDownloadUrlForLayerRequest' :: LayerDigest -> RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "layerDigest" :: (LayerDigest) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "layerDigest" :: (LayerDigest) } ) -> GetDownloadUrlForLayerRequest
newGetDownloadUrlForLayerRequest' _layerDigest _repositoryName customize = (GetDownloadUrlForLayerRequest <<< customize) { "layerDigest": _layerDigest, "repositoryName": _repositoryName, "registryId": Nothing }



newtype GetDownloadUrlForLayerResponse = GetDownloadUrlForLayerResponse 
  { "downloadUrl" :: Maybe (Url)
  , "layerDigest" :: Maybe (LayerDigest)
  }
derive instance newtypeGetDownloadUrlForLayerResponse :: Newtype GetDownloadUrlForLayerResponse _
derive instance repGenericGetDownloadUrlForLayerResponse :: Generic GetDownloadUrlForLayerResponse _
instance showGetDownloadUrlForLayerResponse :: Show GetDownloadUrlForLayerResponse where show = genericShow
instance decodeGetDownloadUrlForLayerResponse :: Decode GetDownloadUrlForLayerResponse where decode = genericDecode options
instance encodeGetDownloadUrlForLayerResponse :: Encode GetDownloadUrlForLayerResponse where encode = genericEncode options

-- | Constructs GetDownloadUrlForLayerResponse from required parameters
newGetDownloadUrlForLayerResponse :: GetDownloadUrlForLayerResponse
newGetDownloadUrlForLayerResponse  = GetDownloadUrlForLayerResponse { "downloadUrl": Nothing, "layerDigest": Nothing }

-- | Constructs GetDownloadUrlForLayerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDownloadUrlForLayerResponse' :: ( { "downloadUrl" :: Maybe (Url) , "layerDigest" :: Maybe (LayerDigest) } -> {"downloadUrl" :: Maybe (Url) , "layerDigest" :: Maybe (LayerDigest) } ) -> GetDownloadUrlForLayerResponse
newGetDownloadUrlForLayerResponse'  customize = (GetDownloadUrlForLayerResponse <<< customize) { "downloadUrl": Nothing, "layerDigest": Nothing }



newtype GetLifecyclePolicyPreviewRequest = GetLifecyclePolicyPreviewRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "imageIds" :: Maybe (ImageIdentifierList)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  , "filter" :: Maybe (LifecyclePolicyPreviewFilter)
  }
derive instance newtypeGetLifecyclePolicyPreviewRequest :: Newtype GetLifecyclePolicyPreviewRequest _
derive instance repGenericGetLifecyclePolicyPreviewRequest :: Generic GetLifecyclePolicyPreviewRequest _
instance showGetLifecyclePolicyPreviewRequest :: Show GetLifecyclePolicyPreviewRequest where show = genericShow
instance decodeGetLifecyclePolicyPreviewRequest :: Decode GetLifecyclePolicyPreviewRequest where decode = genericDecode options
instance encodeGetLifecyclePolicyPreviewRequest :: Encode GetLifecyclePolicyPreviewRequest where encode = genericEncode options

-- | Constructs GetLifecyclePolicyPreviewRequest from required parameters
newGetLifecyclePolicyPreviewRequest :: RepositoryName -> GetLifecyclePolicyPreviewRequest
newGetLifecyclePolicyPreviewRequest _repositoryName = GetLifecyclePolicyPreviewRequest { "repositoryName": _repositoryName, "filter": Nothing, "imageIds": Nothing, "maxResults": Nothing, "nextToken": Nothing, "registryId": Nothing }

-- | Constructs GetLifecyclePolicyPreviewRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLifecyclePolicyPreviewRequest' :: RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: Maybe (ImageIdentifierList) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "filter" :: Maybe (LifecyclePolicyPreviewFilter) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: Maybe (ImageIdentifierList) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "filter" :: Maybe (LifecyclePolicyPreviewFilter) } ) -> GetLifecyclePolicyPreviewRequest
newGetLifecyclePolicyPreviewRequest' _repositoryName customize = (GetLifecyclePolicyPreviewRequest <<< customize) { "repositoryName": _repositoryName, "filter": Nothing, "imageIds": Nothing, "maxResults": Nothing, "nextToken": Nothing, "registryId": Nothing }



newtype GetLifecyclePolicyPreviewResponse = GetLifecyclePolicyPreviewResponse 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText)
  , "status" :: Maybe (LifecyclePolicyPreviewStatus)
  , "nextToken" :: Maybe (NextToken)
  , "previewResults" :: Maybe (LifecyclePolicyPreviewResultList)
  , "summary" :: Maybe (LifecyclePolicyPreviewSummary)
  }
derive instance newtypeGetLifecyclePolicyPreviewResponse :: Newtype GetLifecyclePolicyPreviewResponse _
derive instance repGenericGetLifecyclePolicyPreviewResponse :: Generic GetLifecyclePolicyPreviewResponse _
instance showGetLifecyclePolicyPreviewResponse :: Show GetLifecyclePolicyPreviewResponse where show = genericShow
instance decodeGetLifecyclePolicyPreviewResponse :: Decode GetLifecyclePolicyPreviewResponse where decode = genericDecode options
instance encodeGetLifecyclePolicyPreviewResponse :: Encode GetLifecyclePolicyPreviewResponse where encode = genericEncode options

-- | Constructs GetLifecyclePolicyPreviewResponse from required parameters
newGetLifecyclePolicyPreviewResponse :: GetLifecyclePolicyPreviewResponse
newGetLifecyclePolicyPreviewResponse  = GetLifecyclePolicyPreviewResponse { "lifecyclePolicyText": Nothing, "nextToken": Nothing, "previewResults": Nothing, "registryId": Nothing, "repositoryName": Nothing, "status": Nothing, "summary": Nothing }

-- | Constructs GetLifecyclePolicyPreviewResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLifecyclePolicyPreviewResponse' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) , "status" :: Maybe (LifecyclePolicyPreviewStatus) , "nextToken" :: Maybe (NextToken) , "previewResults" :: Maybe (LifecyclePolicyPreviewResultList) , "summary" :: Maybe (LifecyclePolicyPreviewSummary) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) , "status" :: Maybe (LifecyclePolicyPreviewStatus) , "nextToken" :: Maybe (NextToken) , "previewResults" :: Maybe (LifecyclePolicyPreviewResultList) , "summary" :: Maybe (LifecyclePolicyPreviewSummary) } ) -> GetLifecyclePolicyPreviewResponse
newGetLifecyclePolicyPreviewResponse'  customize = (GetLifecyclePolicyPreviewResponse <<< customize) { "lifecyclePolicyText": Nothing, "nextToken": Nothing, "previewResults": Nothing, "registryId": Nothing, "repositoryName": Nothing, "status": Nothing, "summary": Nothing }



newtype GetLifecyclePolicyRequest = GetLifecyclePolicyRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  }
derive instance newtypeGetLifecyclePolicyRequest :: Newtype GetLifecyclePolicyRequest _
derive instance repGenericGetLifecyclePolicyRequest :: Generic GetLifecyclePolicyRequest _
instance showGetLifecyclePolicyRequest :: Show GetLifecyclePolicyRequest where show = genericShow
instance decodeGetLifecyclePolicyRequest :: Decode GetLifecyclePolicyRequest where decode = genericDecode options
instance encodeGetLifecyclePolicyRequest :: Encode GetLifecyclePolicyRequest where encode = genericEncode options

-- | Constructs GetLifecyclePolicyRequest from required parameters
newGetLifecyclePolicyRequest :: RepositoryName -> GetLifecyclePolicyRequest
newGetLifecyclePolicyRequest _repositoryName = GetLifecyclePolicyRequest { "repositoryName": _repositoryName, "registryId": Nothing }

-- | Constructs GetLifecyclePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLifecyclePolicyRequest' :: RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) } ) -> GetLifecyclePolicyRequest
newGetLifecyclePolicyRequest' _repositoryName customize = (GetLifecyclePolicyRequest <<< customize) { "repositoryName": _repositoryName, "registryId": Nothing }



newtype GetLifecyclePolicyResponse = GetLifecyclePolicyResponse 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText)
  , "lastEvaluatedAt" :: Maybe (EvaluationTimestamp)
  }
derive instance newtypeGetLifecyclePolicyResponse :: Newtype GetLifecyclePolicyResponse _
derive instance repGenericGetLifecyclePolicyResponse :: Generic GetLifecyclePolicyResponse _
instance showGetLifecyclePolicyResponse :: Show GetLifecyclePolicyResponse where show = genericShow
instance decodeGetLifecyclePolicyResponse :: Decode GetLifecyclePolicyResponse where decode = genericDecode options
instance encodeGetLifecyclePolicyResponse :: Encode GetLifecyclePolicyResponse where encode = genericEncode options

-- | Constructs GetLifecyclePolicyResponse from required parameters
newGetLifecyclePolicyResponse :: GetLifecyclePolicyResponse
newGetLifecyclePolicyResponse  = GetLifecyclePolicyResponse { "lastEvaluatedAt": Nothing, "lifecyclePolicyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }

-- | Constructs GetLifecyclePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLifecyclePolicyResponse' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) , "lastEvaluatedAt" :: Maybe (EvaluationTimestamp) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) , "lastEvaluatedAt" :: Maybe (EvaluationTimestamp) } ) -> GetLifecyclePolicyResponse
newGetLifecyclePolicyResponse'  customize = (GetLifecyclePolicyResponse <<< customize) { "lastEvaluatedAt": Nothing, "lifecyclePolicyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }



newtype GetRepositoryPolicyRequest = GetRepositoryPolicyRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  }
derive instance newtypeGetRepositoryPolicyRequest :: Newtype GetRepositoryPolicyRequest _
derive instance repGenericGetRepositoryPolicyRequest :: Generic GetRepositoryPolicyRequest _
instance showGetRepositoryPolicyRequest :: Show GetRepositoryPolicyRequest where show = genericShow
instance decodeGetRepositoryPolicyRequest :: Decode GetRepositoryPolicyRequest where decode = genericDecode options
instance encodeGetRepositoryPolicyRequest :: Encode GetRepositoryPolicyRequest where encode = genericEncode options

-- | Constructs GetRepositoryPolicyRequest from required parameters
newGetRepositoryPolicyRequest :: RepositoryName -> GetRepositoryPolicyRequest
newGetRepositoryPolicyRequest _repositoryName = GetRepositoryPolicyRequest { "repositoryName": _repositoryName, "registryId": Nothing }

-- | Constructs GetRepositoryPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRepositoryPolicyRequest' :: RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) } ) -> GetRepositoryPolicyRequest
newGetRepositoryPolicyRequest' _repositoryName customize = (GetRepositoryPolicyRequest <<< customize) { "repositoryName": _repositoryName, "registryId": Nothing }



newtype GetRepositoryPolicyResponse = GetRepositoryPolicyResponse 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "policyText" :: Maybe (RepositoryPolicyText)
  }
derive instance newtypeGetRepositoryPolicyResponse :: Newtype GetRepositoryPolicyResponse _
derive instance repGenericGetRepositoryPolicyResponse :: Generic GetRepositoryPolicyResponse _
instance showGetRepositoryPolicyResponse :: Show GetRepositoryPolicyResponse where show = genericShow
instance decodeGetRepositoryPolicyResponse :: Decode GetRepositoryPolicyResponse where decode = genericDecode options
instance encodeGetRepositoryPolicyResponse :: Encode GetRepositoryPolicyResponse where encode = genericEncode options

-- | Constructs GetRepositoryPolicyResponse from required parameters
newGetRepositoryPolicyResponse :: GetRepositoryPolicyResponse
newGetRepositoryPolicyResponse  = GetRepositoryPolicyResponse { "policyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }

-- | Constructs GetRepositoryPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRepositoryPolicyResponse' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "policyText" :: Maybe (RepositoryPolicyText) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "policyText" :: Maybe (RepositoryPolicyText) } ) -> GetRepositoryPolicyResponse
newGetRepositoryPolicyResponse'  customize = (GetRepositoryPolicyResponse <<< customize) { "policyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }



-- | <p>An object representing an Amazon ECR image.</p>
newtype Image = Image 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "imageId" :: Maybe (ImageIdentifier)
  , "imageManifest" :: Maybe (ImageManifest)
  }
derive instance newtypeImage :: Newtype Image _
derive instance repGenericImage :: Generic Image _
instance showImage :: Show Image where show = genericShow
instance decodeImage :: Decode Image where decode = genericDecode options
instance encodeImage :: Encode Image where encode = genericEncode options

-- | Constructs Image from required parameters
newImage :: Image
newImage  = Image { "imageId": Nothing, "imageManifest": Nothing, "registryId": Nothing, "repositoryName": Nothing }

-- | Constructs Image's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImage' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "imageId" :: Maybe (ImageIdentifier) , "imageManifest" :: Maybe (ImageManifest) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "imageId" :: Maybe (ImageIdentifier) , "imageManifest" :: Maybe (ImageManifest) } ) -> Image
newImage'  customize = (Image <<< customize) { "imageId": Nothing, "imageManifest": Nothing, "registryId": Nothing, "repositoryName": Nothing }



newtype ImageActionType = ImageActionType String
derive instance newtypeImageActionType :: Newtype ImageActionType _
derive instance repGenericImageActionType :: Generic ImageActionType _
instance showImageActionType :: Show ImageActionType where show = genericShow
instance decodeImageActionType :: Decode ImageActionType where decode = genericDecode options
instance encodeImageActionType :: Encode ImageActionType where encode = genericEncode options



-- | <p>The specified image has already been pushed, and there were no changes to the manifest or image tag after the last push.</p>
newtype ImageAlreadyExistsException = ImageAlreadyExistsException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeImageAlreadyExistsException :: Newtype ImageAlreadyExistsException _
derive instance repGenericImageAlreadyExistsException :: Generic ImageAlreadyExistsException _
instance showImageAlreadyExistsException :: Show ImageAlreadyExistsException where show = genericShow
instance decodeImageAlreadyExistsException :: Decode ImageAlreadyExistsException where decode = genericDecode options
instance encodeImageAlreadyExistsException :: Encode ImageAlreadyExistsException where encode = genericEncode options

-- | Constructs ImageAlreadyExistsException from required parameters
newImageAlreadyExistsException :: ImageAlreadyExistsException
newImageAlreadyExistsException  = ImageAlreadyExistsException { "message": Nothing }

-- | Constructs ImageAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageAlreadyExistsException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> ImageAlreadyExistsException
newImageAlreadyExistsException'  customize = (ImageAlreadyExistsException <<< customize) { "message": Nothing }



newtype ImageCount = ImageCount Int
derive instance newtypeImageCount :: Newtype ImageCount _
derive instance repGenericImageCount :: Generic ImageCount _
instance showImageCount :: Show ImageCount where show = genericShow
instance decodeImageCount :: Decode ImageCount where decode = genericDecode options
instance encodeImageCount :: Encode ImageCount where encode = genericEncode options



-- | <p>An object that describes an image returned by a <a>DescribeImages</a> operation.</p>
newtype ImageDetail = ImageDetail 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "imageDigest" :: Maybe (ImageDigest)
  , "imageTags" :: Maybe (ImageTagList)
  , "imageSizeInBytes" :: Maybe (ImageSizeInBytes)
  , "imagePushedAt" :: Maybe (PushTimestamp)
  }
derive instance newtypeImageDetail :: Newtype ImageDetail _
derive instance repGenericImageDetail :: Generic ImageDetail _
instance showImageDetail :: Show ImageDetail where show = genericShow
instance decodeImageDetail :: Decode ImageDetail where decode = genericDecode options
instance encodeImageDetail :: Encode ImageDetail where encode = genericEncode options

-- | Constructs ImageDetail from required parameters
newImageDetail :: ImageDetail
newImageDetail  = ImageDetail { "imageDigest": Nothing, "imagePushedAt": Nothing, "imageSizeInBytes": Nothing, "imageTags": Nothing, "registryId": Nothing, "repositoryName": Nothing }

-- | Constructs ImageDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageDetail' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "imageDigest" :: Maybe (ImageDigest) , "imageTags" :: Maybe (ImageTagList) , "imageSizeInBytes" :: Maybe (ImageSizeInBytes) , "imagePushedAt" :: Maybe (PushTimestamp) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "imageDigest" :: Maybe (ImageDigest) , "imageTags" :: Maybe (ImageTagList) , "imageSizeInBytes" :: Maybe (ImageSizeInBytes) , "imagePushedAt" :: Maybe (PushTimestamp) } ) -> ImageDetail
newImageDetail'  customize = (ImageDetail <<< customize) { "imageDigest": Nothing, "imagePushedAt": Nothing, "imageSizeInBytes": Nothing, "imageTags": Nothing, "registryId": Nothing, "repositoryName": Nothing }



newtype ImageDetailList = ImageDetailList (Array ImageDetail)
derive instance newtypeImageDetailList :: Newtype ImageDetailList _
derive instance repGenericImageDetailList :: Generic ImageDetailList _
instance showImageDetailList :: Show ImageDetailList where show = genericShow
instance decodeImageDetailList :: Decode ImageDetailList where decode = genericDecode options
instance encodeImageDetailList :: Encode ImageDetailList where encode = genericEncode options



newtype ImageDigest = ImageDigest String
derive instance newtypeImageDigest :: Newtype ImageDigest _
derive instance repGenericImageDigest :: Generic ImageDigest _
instance showImageDigest :: Show ImageDigest where show = genericShow
instance decodeImageDigest :: Decode ImageDigest where decode = genericDecode options
instance encodeImageDigest :: Encode ImageDigest where encode = genericEncode options



-- | <p>An object representing an Amazon ECR image failure.</p>
newtype ImageFailure = ImageFailure 
  { "imageId" :: Maybe (ImageIdentifier)
  , "failureCode" :: Maybe (ImageFailureCode)
  , "failureReason" :: Maybe (ImageFailureReason)
  }
derive instance newtypeImageFailure :: Newtype ImageFailure _
derive instance repGenericImageFailure :: Generic ImageFailure _
instance showImageFailure :: Show ImageFailure where show = genericShow
instance decodeImageFailure :: Decode ImageFailure where decode = genericDecode options
instance encodeImageFailure :: Encode ImageFailure where encode = genericEncode options

-- | Constructs ImageFailure from required parameters
newImageFailure :: ImageFailure
newImageFailure  = ImageFailure { "failureCode": Nothing, "failureReason": Nothing, "imageId": Nothing }

-- | Constructs ImageFailure's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageFailure' :: ( { "imageId" :: Maybe (ImageIdentifier) , "failureCode" :: Maybe (ImageFailureCode) , "failureReason" :: Maybe (ImageFailureReason) } -> {"imageId" :: Maybe (ImageIdentifier) , "failureCode" :: Maybe (ImageFailureCode) , "failureReason" :: Maybe (ImageFailureReason) } ) -> ImageFailure
newImageFailure'  customize = (ImageFailure <<< customize) { "failureCode": Nothing, "failureReason": Nothing, "imageId": Nothing }



newtype ImageFailureCode = ImageFailureCode String
derive instance newtypeImageFailureCode :: Newtype ImageFailureCode _
derive instance repGenericImageFailureCode :: Generic ImageFailureCode _
instance showImageFailureCode :: Show ImageFailureCode where show = genericShow
instance decodeImageFailureCode :: Decode ImageFailureCode where decode = genericDecode options
instance encodeImageFailureCode :: Encode ImageFailureCode where encode = genericEncode options



newtype ImageFailureList = ImageFailureList (Array ImageFailure)
derive instance newtypeImageFailureList :: Newtype ImageFailureList _
derive instance repGenericImageFailureList :: Generic ImageFailureList _
instance showImageFailureList :: Show ImageFailureList where show = genericShow
instance decodeImageFailureList :: Decode ImageFailureList where decode = genericDecode options
instance encodeImageFailureList :: Encode ImageFailureList where encode = genericEncode options



newtype ImageFailureReason = ImageFailureReason String
derive instance newtypeImageFailureReason :: Newtype ImageFailureReason _
derive instance repGenericImageFailureReason :: Generic ImageFailureReason _
instance showImageFailureReason :: Show ImageFailureReason where show = genericShow
instance decodeImageFailureReason :: Decode ImageFailureReason where decode = genericDecode options
instance encodeImageFailureReason :: Encode ImageFailureReason where encode = genericEncode options



-- | <p>An object with identifying information for an Amazon ECR image.</p>
newtype ImageIdentifier = ImageIdentifier 
  { "imageDigest" :: Maybe (ImageDigest)
  , "imageTag" :: Maybe (ImageTag)
  }
derive instance newtypeImageIdentifier :: Newtype ImageIdentifier _
derive instance repGenericImageIdentifier :: Generic ImageIdentifier _
instance showImageIdentifier :: Show ImageIdentifier where show = genericShow
instance decodeImageIdentifier :: Decode ImageIdentifier where decode = genericDecode options
instance encodeImageIdentifier :: Encode ImageIdentifier where encode = genericEncode options

-- | Constructs ImageIdentifier from required parameters
newImageIdentifier :: ImageIdentifier
newImageIdentifier  = ImageIdentifier { "imageDigest": Nothing, "imageTag": Nothing }

-- | Constructs ImageIdentifier's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageIdentifier' :: ( { "imageDigest" :: Maybe (ImageDigest) , "imageTag" :: Maybe (ImageTag) } -> {"imageDigest" :: Maybe (ImageDigest) , "imageTag" :: Maybe (ImageTag) } ) -> ImageIdentifier
newImageIdentifier'  customize = (ImageIdentifier <<< customize) { "imageDigest": Nothing, "imageTag": Nothing }



newtype ImageIdentifierList = ImageIdentifierList (Array ImageIdentifier)
derive instance newtypeImageIdentifierList :: Newtype ImageIdentifierList _
derive instance repGenericImageIdentifierList :: Generic ImageIdentifierList _
instance showImageIdentifierList :: Show ImageIdentifierList where show = genericShow
instance decodeImageIdentifierList :: Decode ImageIdentifierList where decode = genericDecode options
instance encodeImageIdentifierList :: Encode ImageIdentifierList where encode = genericEncode options



newtype ImageList = ImageList (Array Image)
derive instance newtypeImageList :: Newtype ImageList _
derive instance repGenericImageList :: Generic ImageList _
instance showImageList :: Show ImageList where show = genericShow
instance decodeImageList :: Decode ImageList where decode = genericDecode options
instance encodeImageList :: Encode ImageList where encode = genericEncode options



newtype ImageManifest = ImageManifest String
derive instance newtypeImageManifest :: Newtype ImageManifest _
derive instance repGenericImageManifest :: Generic ImageManifest _
instance showImageManifest :: Show ImageManifest where show = genericShow
instance decodeImageManifest :: Decode ImageManifest where decode = genericDecode options
instance encodeImageManifest :: Encode ImageManifest where encode = genericEncode options



-- | <p>The image requested does not exist in the specified repository.</p>
newtype ImageNotFoundException = ImageNotFoundException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeImageNotFoundException :: Newtype ImageNotFoundException _
derive instance repGenericImageNotFoundException :: Generic ImageNotFoundException _
instance showImageNotFoundException :: Show ImageNotFoundException where show = genericShow
instance decodeImageNotFoundException :: Decode ImageNotFoundException where decode = genericDecode options
instance encodeImageNotFoundException :: Encode ImageNotFoundException where encode = genericEncode options

-- | Constructs ImageNotFoundException from required parameters
newImageNotFoundException :: ImageNotFoundException
newImageNotFoundException  = ImageNotFoundException { "message": Nothing }

-- | Constructs ImageNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageNotFoundException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> ImageNotFoundException
newImageNotFoundException'  customize = (ImageNotFoundException <<< customize) { "message": Nothing }



newtype ImageSizeInBytes = ImageSizeInBytes Number
derive instance newtypeImageSizeInBytes :: Newtype ImageSizeInBytes _
derive instance repGenericImageSizeInBytes :: Generic ImageSizeInBytes _
instance showImageSizeInBytes :: Show ImageSizeInBytes where show = genericShow
instance decodeImageSizeInBytes :: Decode ImageSizeInBytes where decode = genericDecode options
instance encodeImageSizeInBytes :: Encode ImageSizeInBytes where encode = genericEncode options



newtype ImageTag = ImageTag String
derive instance newtypeImageTag :: Newtype ImageTag _
derive instance repGenericImageTag :: Generic ImageTag _
instance showImageTag :: Show ImageTag where show = genericShow
instance decodeImageTag :: Decode ImageTag where decode = genericDecode options
instance encodeImageTag :: Encode ImageTag where encode = genericEncode options



newtype ImageTagList = ImageTagList (Array ImageTag)
derive instance newtypeImageTagList :: Newtype ImageTagList _
derive instance repGenericImageTagList :: Generic ImageTagList _
instance showImageTagList :: Show ImageTagList where show = genericShow
instance decodeImageTagList :: Decode ImageTagList where decode = genericDecode options
instance encodeImageTagList :: Encode ImageTagList where encode = genericEncode options



newtype InitiateLayerUploadRequest = InitiateLayerUploadRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  }
derive instance newtypeInitiateLayerUploadRequest :: Newtype InitiateLayerUploadRequest _
derive instance repGenericInitiateLayerUploadRequest :: Generic InitiateLayerUploadRequest _
instance showInitiateLayerUploadRequest :: Show InitiateLayerUploadRequest where show = genericShow
instance decodeInitiateLayerUploadRequest :: Decode InitiateLayerUploadRequest where decode = genericDecode options
instance encodeInitiateLayerUploadRequest :: Encode InitiateLayerUploadRequest where encode = genericEncode options

-- | Constructs InitiateLayerUploadRequest from required parameters
newInitiateLayerUploadRequest :: RepositoryName -> InitiateLayerUploadRequest
newInitiateLayerUploadRequest _repositoryName = InitiateLayerUploadRequest { "repositoryName": _repositoryName, "registryId": Nothing }

-- | Constructs InitiateLayerUploadRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateLayerUploadRequest' :: RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) } ) -> InitiateLayerUploadRequest
newInitiateLayerUploadRequest' _repositoryName customize = (InitiateLayerUploadRequest <<< customize) { "repositoryName": _repositoryName, "registryId": Nothing }



newtype InitiateLayerUploadResponse = InitiateLayerUploadResponse 
  { "uploadId" :: Maybe (UploadId)
  , "partSize" :: Maybe (PartSize)
  }
derive instance newtypeInitiateLayerUploadResponse :: Newtype InitiateLayerUploadResponse _
derive instance repGenericInitiateLayerUploadResponse :: Generic InitiateLayerUploadResponse _
instance showInitiateLayerUploadResponse :: Show InitiateLayerUploadResponse where show = genericShow
instance decodeInitiateLayerUploadResponse :: Decode InitiateLayerUploadResponse where decode = genericDecode options
instance encodeInitiateLayerUploadResponse :: Encode InitiateLayerUploadResponse where encode = genericEncode options

-- | Constructs InitiateLayerUploadResponse from required parameters
newInitiateLayerUploadResponse :: InitiateLayerUploadResponse
newInitiateLayerUploadResponse  = InitiateLayerUploadResponse { "partSize": Nothing, "uploadId": Nothing }

-- | Constructs InitiateLayerUploadResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateLayerUploadResponse' :: ( { "uploadId" :: Maybe (UploadId) , "partSize" :: Maybe (PartSize) } -> {"uploadId" :: Maybe (UploadId) , "partSize" :: Maybe (PartSize) } ) -> InitiateLayerUploadResponse
newInitiateLayerUploadResponse'  customize = (InitiateLayerUploadResponse <<< customize) { "partSize": Nothing, "uploadId": Nothing }



-- | <p>The layer digest calculation performed by Amazon ECR upon receipt of the image layer does not match the digest specified.</p>
newtype InvalidLayerException = InvalidLayerException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeInvalidLayerException :: Newtype InvalidLayerException _
derive instance repGenericInvalidLayerException :: Generic InvalidLayerException _
instance showInvalidLayerException :: Show InvalidLayerException where show = genericShow
instance decodeInvalidLayerException :: Decode InvalidLayerException where decode = genericDecode options
instance encodeInvalidLayerException :: Encode InvalidLayerException where encode = genericEncode options

-- | Constructs InvalidLayerException from required parameters
newInvalidLayerException :: InvalidLayerException
newInvalidLayerException  = InvalidLayerException { "message": Nothing }

-- | Constructs InvalidLayerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidLayerException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> InvalidLayerException
newInvalidLayerException'  customize = (InvalidLayerException <<< customize) { "message": Nothing }



-- | <p>The layer part size is not valid, or the first byte specified is not consecutive to the last byte of a previous layer part upload.</p>
newtype InvalidLayerPartException = InvalidLayerPartException 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "uploadId" :: Maybe (UploadId)
  , "lastValidByteReceived" :: Maybe (PartSize)
  , "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeInvalidLayerPartException :: Newtype InvalidLayerPartException _
derive instance repGenericInvalidLayerPartException :: Generic InvalidLayerPartException _
instance showInvalidLayerPartException :: Show InvalidLayerPartException where show = genericShow
instance decodeInvalidLayerPartException :: Decode InvalidLayerPartException where decode = genericDecode options
instance encodeInvalidLayerPartException :: Encode InvalidLayerPartException where encode = genericEncode options

-- | Constructs InvalidLayerPartException from required parameters
newInvalidLayerPartException :: InvalidLayerPartException
newInvalidLayerPartException  = InvalidLayerPartException { "lastValidByteReceived": Nothing, "message": Nothing, "registryId": Nothing, "repositoryName": Nothing, "uploadId": Nothing }

-- | Constructs InvalidLayerPartException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidLayerPartException' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "uploadId" :: Maybe (UploadId) , "lastValidByteReceived" :: Maybe (PartSize) , "message" :: Maybe (ExceptionMessage) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "uploadId" :: Maybe (UploadId) , "lastValidByteReceived" :: Maybe (PartSize) , "message" :: Maybe (ExceptionMessage) } ) -> InvalidLayerPartException
newInvalidLayerPartException'  customize = (InvalidLayerPartException <<< customize) { "lastValidByteReceived": Nothing, "message": Nothing, "registryId": Nothing, "repositoryName": Nothing, "uploadId": Nothing }



-- | <p>The specified parameter is invalid. Review the available parameters for the API request.</p>
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": Nothing }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": Nothing }



-- | <p>An object representing an Amazon ECR image layer.</p>
newtype Layer = Layer 
  { "layerDigest" :: Maybe (LayerDigest)
  , "layerAvailability" :: Maybe (LayerAvailability)
  , "layerSize" :: Maybe (LayerSizeInBytes)
  , "mediaType" :: Maybe (MediaType)
  }
derive instance newtypeLayer :: Newtype Layer _
derive instance repGenericLayer :: Generic Layer _
instance showLayer :: Show Layer where show = genericShow
instance decodeLayer :: Decode Layer where decode = genericDecode options
instance encodeLayer :: Encode Layer where encode = genericEncode options

-- | Constructs Layer from required parameters
newLayer :: Layer
newLayer  = Layer { "layerAvailability": Nothing, "layerDigest": Nothing, "layerSize": Nothing, "mediaType": Nothing }

-- | Constructs Layer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayer' :: ( { "layerDigest" :: Maybe (LayerDigest) , "layerAvailability" :: Maybe (LayerAvailability) , "layerSize" :: Maybe (LayerSizeInBytes) , "mediaType" :: Maybe (MediaType) } -> {"layerDigest" :: Maybe (LayerDigest) , "layerAvailability" :: Maybe (LayerAvailability) , "layerSize" :: Maybe (LayerSizeInBytes) , "mediaType" :: Maybe (MediaType) } ) -> Layer
newLayer'  customize = (Layer <<< customize) { "layerAvailability": Nothing, "layerDigest": Nothing, "layerSize": Nothing, "mediaType": Nothing }



-- | <p>The image layer already exists in the associated repository.</p>
newtype LayerAlreadyExistsException = LayerAlreadyExistsException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeLayerAlreadyExistsException :: Newtype LayerAlreadyExistsException _
derive instance repGenericLayerAlreadyExistsException :: Generic LayerAlreadyExistsException _
instance showLayerAlreadyExistsException :: Show LayerAlreadyExistsException where show = genericShow
instance decodeLayerAlreadyExistsException :: Decode LayerAlreadyExistsException where decode = genericDecode options
instance encodeLayerAlreadyExistsException :: Encode LayerAlreadyExistsException where encode = genericEncode options

-- | Constructs LayerAlreadyExistsException from required parameters
newLayerAlreadyExistsException :: LayerAlreadyExistsException
newLayerAlreadyExistsException  = LayerAlreadyExistsException { "message": Nothing }

-- | Constructs LayerAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayerAlreadyExistsException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> LayerAlreadyExistsException
newLayerAlreadyExistsException'  customize = (LayerAlreadyExistsException <<< customize) { "message": Nothing }



newtype LayerAvailability = LayerAvailability String
derive instance newtypeLayerAvailability :: Newtype LayerAvailability _
derive instance repGenericLayerAvailability :: Generic LayerAvailability _
instance showLayerAvailability :: Show LayerAvailability where show = genericShow
instance decodeLayerAvailability :: Decode LayerAvailability where decode = genericDecode options
instance encodeLayerAvailability :: Encode LayerAvailability where encode = genericEncode options



newtype LayerDigest = LayerDigest String
derive instance newtypeLayerDigest :: Newtype LayerDigest _
derive instance repGenericLayerDigest :: Generic LayerDigest _
instance showLayerDigest :: Show LayerDigest where show = genericShow
instance decodeLayerDigest :: Decode LayerDigest where decode = genericDecode options
instance encodeLayerDigest :: Encode LayerDigest where encode = genericEncode options



newtype LayerDigestList = LayerDigestList (Array LayerDigest)
derive instance newtypeLayerDigestList :: Newtype LayerDigestList _
derive instance repGenericLayerDigestList :: Generic LayerDigestList _
instance showLayerDigestList :: Show LayerDigestList where show = genericShow
instance decodeLayerDigestList :: Decode LayerDigestList where decode = genericDecode options
instance encodeLayerDigestList :: Encode LayerDigestList where encode = genericEncode options



-- | <p>An object representing an Amazon ECR image layer failure.</p>
newtype LayerFailure = LayerFailure 
  { "layerDigest" :: Maybe (BatchedOperationLayerDigest)
  , "failureCode" :: Maybe (LayerFailureCode)
  , "failureReason" :: Maybe (LayerFailureReason)
  }
derive instance newtypeLayerFailure :: Newtype LayerFailure _
derive instance repGenericLayerFailure :: Generic LayerFailure _
instance showLayerFailure :: Show LayerFailure where show = genericShow
instance decodeLayerFailure :: Decode LayerFailure where decode = genericDecode options
instance encodeLayerFailure :: Encode LayerFailure where encode = genericEncode options

-- | Constructs LayerFailure from required parameters
newLayerFailure :: LayerFailure
newLayerFailure  = LayerFailure { "failureCode": Nothing, "failureReason": Nothing, "layerDigest": Nothing }

-- | Constructs LayerFailure's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayerFailure' :: ( { "layerDigest" :: Maybe (BatchedOperationLayerDigest) , "failureCode" :: Maybe (LayerFailureCode) , "failureReason" :: Maybe (LayerFailureReason) } -> {"layerDigest" :: Maybe (BatchedOperationLayerDigest) , "failureCode" :: Maybe (LayerFailureCode) , "failureReason" :: Maybe (LayerFailureReason) } ) -> LayerFailure
newLayerFailure'  customize = (LayerFailure <<< customize) { "failureCode": Nothing, "failureReason": Nothing, "layerDigest": Nothing }



newtype LayerFailureCode = LayerFailureCode String
derive instance newtypeLayerFailureCode :: Newtype LayerFailureCode _
derive instance repGenericLayerFailureCode :: Generic LayerFailureCode _
instance showLayerFailureCode :: Show LayerFailureCode where show = genericShow
instance decodeLayerFailureCode :: Decode LayerFailureCode where decode = genericDecode options
instance encodeLayerFailureCode :: Encode LayerFailureCode where encode = genericEncode options



newtype LayerFailureList = LayerFailureList (Array LayerFailure)
derive instance newtypeLayerFailureList :: Newtype LayerFailureList _
derive instance repGenericLayerFailureList :: Generic LayerFailureList _
instance showLayerFailureList :: Show LayerFailureList where show = genericShow
instance decodeLayerFailureList :: Decode LayerFailureList where decode = genericDecode options
instance encodeLayerFailureList :: Encode LayerFailureList where encode = genericEncode options



newtype LayerFailureReason = LayerFailureReason String
derive instance newtypeLayerFailureReason :: Newtype LayerFailureReason _
derive instance repGenericLayerFailureReason :: Generic LayerFailureReason _
instance showLayerFailureReason :: Show LayerFailureReason where show = genericShow
instance decodeLayerFailureReason :: Decode LayerFailureReason where decode = genericDecode options
instance encodeLayerFailureReason :: Encode LayerFailureReason where encode = genericEncode options



-- | <p>The specified layer is not available because it is not associated with an image. Unassociated image layers may be cleaned up at any time.</p>
newtype LayerInaccessibleException = LayerInaccessibleException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeLayerInaccessibleException :: Newtype LayerInaccessibleException _
derive instance repGenericLayerInaccessibleException :: Generic LayerInaccessibleException _
instance showLayerInaccessibleException :: Show LayerInaccessibleException where show = genericShow
instance decodeLayerInaccessibleException :: Decode LayerInaccessibleException where decode = genericDecode options
instance encodeLayerInaccessibleException :: Encode LayerInaccessibleException where encode = genericEncode options

-- | Constructs LayerInaccessibleException from required parameters
newLayerInaccessibleException :: LayerInaccessibleException
newLayerInaccessibleException  = LayerInaccessibleException { "message": Nothing }

-- | Constructs LayerInaccessibleException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayerInaccessibleException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> LayerInaccessibleException
newLayerInaccessibleException'  customize = (LayerInaccessibleException <<< customize) { "message": Nothing }



newtype LayerList = LayerList (Array Layer)
derive instance newtypeLayerList :: Newtype LayerList _
derive instance repGenericLayerList :: Generic LayerList _
instance showLayerList :: Show LayerList where show = genericShow
instance decodeLayerList :: Decode LayerList where decode = genericDecode options
instance encodeLayerList :: Encode LayerList where encode = genericEncode options



newtype LayerPartBlob = LayerPartBlob String
derive instance newtypeLayerPartBlob :: Newtype LayerPartBlob _
derive instance repGenericLayerPartBlob :: Generic LayerPartBlob _
instance showLayerPartBlob :: Show LayerPartBlob where show = genericShow
instance decodeLayerPartBlob :: Decode LayerPartBlob where decode = genericDecode options
instance encodeLayerPartBlob :: Encode LayerPartBlob where encode = genericEncode options



-- | <p>Layer parts must be at least 5 MiB in size.</p>
newtype LayerPartTooSmallException = LayerPartTooSmallException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeLayerPartTooSmallException :: Newtype LayerPartTooSmallException _
derive instance repGenericLayerPartTooSmallException :: Generic LayerPartTooSmallException _
instance showLayerPartTooSmallException :: Show LayerPartTooSmallException where show = genericShow
instance decodeLayerPartTooSmallException :: Decode LayerPartTooSmallException where decode = genericDecode options
instance encodeLayerPartTooSmallException :: Encode LayerPartTooSmallException where encode = genericEncode options

-- | Constructs LayerPartTooSmallException from required parameters
newLayerPartTooSmallException :: LayerPartTooSmallException
newLayerPartTooSmallException  = LayerPartTooSmallException { "message": Nothing }

-- | Constructs LayerPartTooSmallException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayerPartTooSmallException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> LayerPartTooSmallException
newLayerPartTooSmallException'  customize = (LayerPartTooSmallException <<< customize) { "message": Nothing }



newtype LayerSizeInBytes = LayerSizeInBytes Number
derive instance newtypeLayerSizeInBytes :: Newtype LayerSizeInBytes _
derive instance repGenericLayerSizeInBytes :: Generic LayerSizeInBytes _
instance showLayerSizeInBytes :: Show LayerSizeInBytes where show = genericShow
instance decodeLayerSizeInBytes :: Decode LayerSizeInBytes where decode = genericDecode options
instance encodeLayerSizeInBytes :: Encode LayerSizeInBytes where encode = genericEncode options



-- | <p>The specified layers could not be found, or the specified layer is not valid for this repository.</p>
newtype LayersNotFoundException = LayersNotFoundException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeLayersNotFoundException :: Newtype LayersNotFoundException _
derive instance repGenericLayersNotFoundException :: Generic LayersNotFoundException _
instance showLayersNotFoundException :: Show LayersNotFoundException where show = genericShow
instance decodeLayersNotFoundException :: Decode LayersNotFoundException where decode = genericDecode options
instance encodeLayersNotFoundException :: Encode LayersNotFoundException where encode = genericEncode options

-- | Constructs LayersNotFoundException from required parameters
newLayersNotFoundException :: LayersNotFoundException
newLayersNotFoundException  = LayersNotFoundException { "message": Nothing }

-- | Constructs LayersNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayersNotFoundException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> LayersNotFoundException
newLayersNotFoundException'  customize = (LayersNotFoundException <<< customize) { "message": Nothing }



-- | <p>The lifecycle policy could not be found, and no policy is set to the repository.</p>
newtype LifecyclePolicyNotFoundException = LifecyclePolicyNotFoundException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeLifecyclePolicyNotFoundException :: Newtype LifecyclePolicyNotFoundException _
derive instance repGenericLifecyclePolicyNotFoundException :: Generic LifecyclePolicyNotFoundException _
instance showLifecyclePolicyNotFoundException :: Show LifecyclePolicyNotFoundException where show = genericShow
instance decodeLifecyclePolicyNotFoundException :: Decode LifecyclePolicyNotFoundException where decode = genericDecode options
instance encodeLifecyclePolicyNotFoundException :: Encode LifecyclePolicyNotFoundException where encode = genericEncode options

-- | Constructs LifecyclePolicyNotFoundException from required parameters
newLifecyclePolicyNotFoundException :: LifecyclePolicyNotFoundException
newLifecyclePolicyNotFoundException  = LifecyclePolicyNotFoundException { "message": Nothing }

-- | Constructs LifecyclePolicyNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyNotFoundException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> LifecyclePolicyNotFoundException
newLifecyclePolicyNotFoundException'  customize = (LifecyclePolicyNotFoundException <<< customize) { "message": Nothing }



-- | <p>The filter for the lifecycle policy preview.</p>
newtype LifecyclePolicyPreviewFilter = LifecyclePolicyPreviewFilter 
  { "tagStatus" :: Maybe (TagStatus)
  }
derive instance newtypeLifecyclePolicyPreviewFilter :: Newtype LifecyclePolicyPreviewFilter _
derive instance repGenericLifecyclePolicyPreviewFilter :: Generic LifecyclePolicyPreviewFilter _
instance showLifecyclePolicyPreviewFilter :: Show LifecyclePolicyPreviewFilter where show = genericShow
instance decodeLifecyclePolicyPreviewFilter :: Decode LifecyclePolicyPreviewFilter where decode = genericDecode options
instance encodeLifecyclePolicyPreviewFilter :: Encode LifecyclePolicyPreviewFilter where encode = genericEncode options

-- | Constructs LifecyclePolicyPreviewFilter from required parameters
newLifecyclePolicyPreviewFilter :: LifecyclePolicyPreviewFilter
newLifecyclePolicyPreviewFilter  = LifecyclePolicyPreviewFilter { "tagStatus": Nothing }

-- | Constructs LifecyclePolicyPreviewFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyPreviewFilter' :: ( { "tagStatus" :: Maybe (TagStatus) } -> {"tagStatus" :: Maybe (TagStatus) } ) -> LifecyclePolicyPreviewFilter
newLifecyclePolicyPreviewFilter'  customize = (LifecyclePolicyPreviewFilter <<< customize) { "tagStatus": Nothing }



-- | <p>The previous lifecycle policy preview request has not completed. Please try again later.</p>
newtype LifecyclePolicyPreviewInProgressException = LifecyclePolicyPreviewInProgressException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeLifecyclePolicyPreviewInProgressException :: Newtype LifecyclePolicyPreviewInProgressException _
derive instance repGenericLifecyclePolicyPreviewInProgressException :: Generic LifecyclePolicyPreviewInProgressException _
instance showLifecyclePolicyPreviewInProgressException :: Show LifecyclePolicyPreviewInProgressException where show = genericShow
instance decodeLifecyclePolicyPreviewInProgressException :: Decode LifecyclePolicyPreviewInProgressException where decode = genericDecode options
instance encodeLifecyclePolicyPreviewInProgressException :: Encode LifecyclePolicyPreviewInProgressException where encode = genericEncode options

-- | Constructs LifecyclePolicyPreviewInProgressException from required parameters
newLifecyclePolicyPreviewInProgressException :: LifecyclePolicyPreviewInProgressException
newLifecyclePolicyPreviewInProgressException  = LifecyclePolicyPreviewInProgressException { "message": Nothing }

-- | Constructs LifecyclePolicyPreviewInProgressException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyPreviewInProgressException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> LifecyclePolicyPreviewInProgressException
newLifecyclePolicyPreviewInProgressException'  customize = (LifecyclePolicyPreviewInProgressException <<< customize) { "message": Nothing }



-- | <p>There is no dry run for this repository.</p>
newtype LifecyclePolicyPreviewNotFoundException = LifecyclePolicyPreviewNotFoundException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeLifecyclePolicyPreviewNotFoundException :: Newtype LifecyclePolicyPreviewNotFoundException _
derive instance repGenericLifecyclePolicyPreviewNotFoundException :: Generic LifecyclePolicyPreviewNotFoundException _
instance showLifecyclePolicyPreviewNotFoundException :: Show LifecyclePolicyPreviewNotFoundException where show = genericShow
instance decodeLifecyclePolicyPreviewNotFoundException :: Decode LifecyclePolicyPreviewNotFoundException where decode = genericDecode options
instance encodeLifecyclePolicyPreviewNotFoundException :: Encode LifecyclePolicyPreviewNotFoundException where encode = genericEncode options

-- | Constructs LifecyclePolicyPreviewNotFoundException from required parameters
newLifecyclePolicyPreviewNotFoundException :: LifecyclePolicyPreviewNotFoundException
newLifecyclePolicyPreviewNotFoundException  = LifecyclePolicyPreviewNotFoundException { "message": Nothing }

-- | Constructs LifecyclePolicyPreviewNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyPreviewNotFoundException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> LifecyclePolicyPreviewNotFoundException
newLifecyclePolicyPreviewNotFoundException'  customize = (LifecyclePolicyPreviewNotFoundException <<< customize) { "message": Nothing }



-- | <p>The result of the lifecycle policy preview.</p>
newtype LifecyclePolicyPreviewResult = LifecyclePolicyPreviewResult 
  { "imageTags" :: Maybe (ImageTagList)
  , "imageDigest" :: Maybe (ImageDigest)
  , "imagePushedAt" :: Maybe (PushTimestamp)
  , "action" :: Maybe (LifecyclePolicyRuleAction)
  , "appliedRulePriority" :: Maybe (LifecyclePolicyRulePriority)
  }
derive instance newtypeLifecyclePolicyPreviewResult :: Newtype LifecyclePolicyPreviewResult _
derive instance repGenericLifecyclePolicyPreviewResult :: Generic LifecyclePolicyPreviewResult _
instance showLifecyclePolicyPreviewResult :: Show LifecyclePolicyPreviewResult where show = genericShow
instance decodeLifecyclePolicyPreviewResult :: Decode LifecyclePolicyPreviewResult where decode = genericDecode options
instance encodeLifecyclePolicyPreviewResult :: Encode LifecyclePolicyPreviewResult where encode = genericEncode options

-- | Constructs LifecyclePolicyPreviewResult from required parameters
newLifecyclePolicyPreviewResult :: LifecyclePolicyPreviewResult
newLifecyclePolicyPreviewResult  = LifecyclePolicyPreviewResult { "action": Nothing, "appliedRulePriority": Nothing, "imageDigest": Nothing, "imagePushedAt": Nothing, "imageTags": Nothing }

-- | Constructs LifecyclePolicyPreviewResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyPreviewResult' :: ( { "imageTags" :: Maybe (ImageTagList) , "imageDigest" :: Maybe (ImageDigest) , "imagePushedAt" :: Maybe (PushTimestamp) , "action" :: Maybe (LifecyclePolicyRuleAction) , "appliedRulePriority" :: Maybe (LifecyclePolicyRulePriority) } -> {"imageTags" :: Maybe (ImageTagList) , "imageDigest" :: Maybe (ImageDigest) , "imagePushedAt" :: Maybe (PushTimestamp) , "action" :: Maybe (LifecyclePolicyRuleAction) , "appliedRulePriority" :: Maybe (LifecyclePolicyRulePriority) } ) -> LifecyclePolicyPreviewResult
newLifecyclePolicyPreviewResult'  customize = (LifecyclePolicyPreviewResult <<< customize) { "action": Nothing, "appliedRulePriority": Nothing, "imageDigest": Nothing, "imagePushedAt": Nothing, "imageTags": Nothing }



newtype LifecyclePolicyPreviewResultList = LifecyclePolicyPreviewResultList (Array LifecyclePolicyPreviewResult)
derive instance newtypeLifecyclePolicyPreviewResultList :: Newtype LifecyclePolicyPreviewResultList _
derive instance repGenericLifecyclePolicyPreviewResultList :: Generic LifecyclePolicyPreviewResultList _
instance showLifecyclePolicyPreviewResultList :: Show LifecyclePolicyPreviewResultList where show = genericShow
instance decodeLifecyclePolicyPreviewResultList :: Decode LifecyclePolicyPreviewResultList where decode = genericDecode options
instance encodeLifecyclePolicyPreviewResultList :: Encode LifecyclePolicyPreviewResultList where encode = genericEncode options



newtype LifecyclePolicyPreviewStatus = LifecyclePolicyPreviewStatus String
derive instance newtypeLifecyclePolicyPreviewStatus :: Newtype LifecyclePolicyPreviewStatus _
derive instance repGenericLifecyclePolicyPreviewStatus :: Generic LifecyclePolicyPreviewStatus _
instance showLifecyclePolicyPreviewStatus :: Show LifecyclePolicyPreviewStatus where show = genericShow
instance decodeLifecyclePolicyPreviewStatus :: Decode LifecyclePolicyPreviewStatus where decode = genericDecode options
instance encodeLifecyclePolicyPreviewStatus :: Encode LifecyclePolicyPreviewStatus where encode = genericEncode options



-- | <p>The summary of the lifecycle policy preview request.</p>
newtype LifecyclePolicyPreviewSummary = LifecyclePolicyPreviewSummary 
  { "expiringImageTotalCount" :: Maybe (ImageCount)
  }
derive instance newtypeLifecyclePolicyPreviewSummary :: Newtype LifecyclePolicyPreviewSummary _
derive instance repGenericLifecyclePolicyPreviewSummary :: Generic LifecyclePolicyPreviewSummary _
instance showLifecyclePolicyPreviewSummary :: Show LifecyclePolicyPreviewSummary where show = genericShow
instance decodeLifecyclePolicyPreviewSummary :: Decode LifecyclePolicyPreviewSummary where decode = genericDecode options
instance encodeLifecyclePolicyPreviewSummary :: Encode LifecyclePolicyPreviewSummary where encode = genericEncode options

-- | Constructs LifecyclePolicyPreviewSummary from required parameters
newLifecyclePolicyPreviewSummary :: LifecyclePolicyPreviewSummary
newLifecyclePolicyPreviewSummary  = LifecyclePolicyPreviewSummary { "expiringImageTotalCount": Nothing }

-- | Constructs LifecyclePolicyPreviewSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyPreviewSummary' :: ( { "expiringImageTotalCount" :: Maybe (ImageCount) } -> {"expiringImageTotalCount" :: Maybe (ImageCount) } ) -> LifecyclePolicyPreviewSummary
newLifecyclePolicyPreviewSummary'  customize = (LifecyclePolicyPreviewSummary <<< customize) { "expiringImageTotalCount": Nothing }



-- | <p>The type of action to be taken.</p>
newtype LifecyclePolicyRuleAction = LifecyclePolicyRuleAction 
  { "type" :: Maybe (ImageActionType)
  }
derive instance newtypeLifecyclePolicyRuleAction :: Newtype LifecyclePolicyRuleAction _
derive instance repGenericLifecyclePolicyRuleAction :: Generic LifecyclePolicyRuleAction _
instance showLifecyclePolicyRuleAction :: Show LifecyclePolicyRuleAction where show = genericShow
instance decodeLifecyclePolicyRuleAction :: Decode LifecyclePolicyRuleAction where decode = genericDecode options
instance encodeLifecyclePolicyRuleAction :: Encode LifecyclePolicyRuleAction where encode = genericEncode options

-- | Constructs LifecyclePolicyRuleAction from required parameters
newLifecyclePolicyRuleAction :: LifecyclePolicyRuleAction
newLifecyclePolicyRuleAction  = LifecyclePolicyRuleAction { "type": Nothing }

-- | Constructs LifecyclePolicyRuleAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyRuleAction' :: ( { "type" :: Maybe (ImageActionType) } -> {"type" :: Maybe (ImageActionType) } ) -> LifecyclePolicyRuleAction
newLifecyclePolicyRuleAction'  customize = (LifecyclePolicyRuleAction <<< customize) { "type": Nothing }



newtype LifecyclePolicyRulePriority = LifecyclePolicyRulePriority Int
derive instance newtypeLifecyclePolicyRulePriority :: Newtype LifecyclePolicyRulePriority _
derive instance repGenericLifecyclePolicyRulePriority :: Generic LifecyclePolicyRulePriority _
instance showLifecyclePolicyRulePriority :: Show LifecyclePolicyRulePriority where show = genericShow
instance decodeLifecyclePolicyRulePriority :: Decode LifecyclePolicyRulePriority where decode = genericDecode options
instance encodeLifecyclePolicyRulePriority :: Encode LifecyclePolicyRulePriority where encode = genericEncode options



newtype LifecyclePolicyText = LifecyclePolicyText String
derive instance newtypeLifecyclePolicyText :: Newtype LifecyclePolicyText _
derive instance repGenericLifecyclePolicyText :: Generic LifecyclePolicyText _
instance showLifecyclePolicyText :: Show LifecyclePolicyText where show = genericShow
instance decodeLifecyclePolicyText :: Decode LifecyclePolicyText where decode = genericDecode options
instance encodeLifecyclePolicyText :: Encode LifecyclePolicyText where encode = genericEncode options



-- | <p>The operation did not succeed because it would have exceeded a service limit for your account. For more information, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/service_limits.html">Amazon ECR Default Service Limits</a> in the Amazon Elastic Container Registry User Guide.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": Nothing }



-- | <p>An object representing a filter on a <a>ListImages</a> operation.</p>
newtype ListImagesFilter = ListImagesFilter 
  { "tagStatus" :: Maybe (TagStatus)
  }
derive instance newtypeListImagesFilter :: Newtype ListImagesFilter _
derive instance repGenericListImagesFilter :: Generic ListImagesFilter _
instance showListImagesFilter :: Show ListImagesFilter where show = genericShow
instance decodeListImagesFilter :: Decode ListImagesFilter where decode = genericDecode options
instance encodeListImagesFilter :: Encode ListImagesFilter where encode = genericEncode options

-- | Constructs ListImagesFilter from required parameters
newListImagesFilter :: ListImagesFilter
newListImagesFilter  = ListImagesFilter { "tagStatus": Nothing }

-- | Constructs ListImagesFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListImagesFilter' :: ( { "tagStatus" :: Maybe (TagStatus) } -> {"tagStatus" :: Maybe (TagStatus) } ) -> ListImagesFilter
newListImagesFilter'  customize = (ListImagesFilter <<< customize) { "tagStatus": Nothing }



newtype ListImagesRequest = ListImagesRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  , "filter" :: Maybe (ListImagesFilter)
  }
derive instance newtypeListImagesRequest :: Newtype ListImagesRequest _
derive instance repGenericListImagesRequest :: Generic ListImagesRequest _
instance showListImagesRequest :: Show ListImagesRequest where show = genericShow
instance decodeListImagesRequest :: Decode ListImagesRequest where decode = genericDecode options
instance encodeListImagesRequest :: Encode ListImagesRequest where encode = genericEncode options

-- | Constructs ListImagesRequest from required parameters
newListImagesRequest :: RepositoryName -> ListImagesRequest
newListImagesRequest _repositoryName = ListImagesRequest { "repositoryName": _repositoryName, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing, "registryId": Nothing }

-- | Constructs ListImagesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListImagesRequest' :: RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "filter" :: Maybe (ListImagesFilter) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "filter" :: Maybe (ListImagesFilter) } ) -> ListImagesRequest
newListImagesRequest' _repositoryName customize = (ListImagesRequest <<< customize) { "repositoryName": _repositoryName, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing, "registryId": Nothing }



newtype ListImagesResponse = ListImagesResponse 
  { "imageIds" :: Maybe (ImageIdentifierList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListImagesResponse :: Newtype ListImagesResponse _
derive instance repGenericListImagesResponse :: Generic ListImagesResponse _
instance showListImagesResponse :: Show ListImagesResponse where show = genericShow
instance decodeListImagesResponse :: Decode ListImagesResponse where decode = genericDecode options
instance encodeListImagesResponse :: Encode ListImagesResponse where encode = genericEncode options

-- | Constructs ListImagesResponse from required parameters
newListImagesResponse :: ListImagesResponse
newListImagesResponse  = ListImagesResponse { "imageIds": Nothing, "nextToken": Nothing }

-- | Constructs ListImagesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListImagesResponse' :: ( { "imageIds" :: Maybe (ImageIdentifierList) , "nextToken" :: Maybe (NextToken) } -> {"imageIds" :: Maybe (ImageIdentifierList) , "nextToken" :: Maybe (NextToken) } ) -> ListImagesResponse
newListImagesResponse'  customize = (ListImagesResponse <<< customize) { "imageIds": Nothing, "nextToken": Nothing }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype MediaType = MediaType String
derive instance newtypeMediaType :: Newtype MediaType _
derive instance repGenericMediaType :: Generic MediaType _
instance showMediaType :: Show MediaType where show = genericShow
instance decodeMediaType :: Decode MediaType where decode = genericDecode options
instance encodeMediaType :: Encode MediaType where encode = genericEncode options



newtype MediaTypeList = MediaTypeList (Array MediaType)
derive instance newtypeMediaTypeList :: Newtype MediaTypeList _
derive instance repGenericMediaTypeList :: Generic MediaTypeList _
instance showMediaTypeList :: Show MediaTypeList where show = genericShow
instance decodeMediaTypeList :: Decode MediaTypeList where decode = genericDecode options
instance encodeMediaTypeList :: Encode MediaTypeList where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



newtype PartSize = PartSize Number
derive instance newtypePartSize :: Newtype PartSize _
derive instance repGenericPartSize :: Generic PartSize _
instance showPartSize :: Show PartSize where show = genericShow
instance decodePartSize :: Decode PartSize where decode = genericDecode options
instance encodePartSize :: Encode PartSize where encode = genericEncode options



newtype ProxyEndpoint = ProxyEndpoint String
derive instance newtypeProxyEndpoint :: Newtype ProxyEndpoint _
derive instance repGenericProxyEndpoint :: Generic ProxyEndpoint _
instance showProxyEndpoint :: Show ProxyEndpoint where show = genericShow
instance decodeProxyEndpoint :: Decode ProxyEndpoint where decode = genericDecode options
instance encodeProxyEndpoint :: Encode ProxyEndpoint where encode = genericEncode options



newtype PushTimestamp = PushTimestamp Types.Timestamp
derive instance newtypePushTimestamp :: Newtype PushTimestamp _
derive instance repGenericPushTimestamp :: Generic PushTimestamp _
instance showPushTimestamp :: Show PushTimestamp where show = genericShow
instance decodePushTimestamp :: Decode PushTimestamp where decode = genericDecode options
instance encodePushTimestamp :: Encode PushTimestamp where encode = genericEncode options



newtype PutImageRequest = PutImageRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "imageManifest" :: (ImageManifest)
  , "imageTag" :: Maybe (ImageTag)
  }
derive instance newtypePutImageRequest :: Newtype PutImageRequest _
derive instance repGenericPutImageRequest :: Generic PutImageRequest _
instance showPutImageRequest :: Show PutImageRequest where show = genericShow
instance decodePutImageRequest :: Decode PutImageRequest where decode = genericDecode options
instance encodePutImageRequest :: Encode PutImageRequest where encode = genericEncode options

-- | Constructs PutImageRequest from required parameters
newPutImageRequest :: ImageManifest -> RepositoryName -> PutImageRequest
newPutImageRequest _imageManifest _repositoryName = PutImageRequest { "imageManifest": _imageManifest, "repositoryName": _repositoryName, "imageTag": Nothing, "registryId": Nothing }

-- | Constructs PutImageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutImageRequest' :: ImageManifest -> RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "imageManifest" :: (ImageManifest) , "imageTag" :: Maybe (ImageTag) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "imageManifest" :: (ImageManifest) , "imageTag" :: Maybe (ImageTag) } ) -> PutImageRequest
newPutImageRequest' _imageManifest _repositoryName customize = (PutImageRequest <<< customize) { "imageManifest": _imageManifest, "repositoryName": _repositoryName, "imageTag": Nothing, "registryId": Nothing }



newtype PutImageResponse = PutImageResponse 
  { "image" :: Maybe (Image)
  }
derive instance newtypePutImageResponse :: Newtype PutImageResponse _
derive instance repGenericPutImageResponse :: Generic PutImageResponse _
instance showPutImageResponse :: Show PutImageResponse where show = genericShow
instance decodePutImageResponse :: Decode PutImageResponse where decode = genericDecode options
instance encodePutImageResponse :: Encode PutImageResponse where encode = genericEncode options

-- | Constructs PutImageResponse from required parameters
newPutImageResponse :: PutImageResponse
newPutImageResponse  = PutImageResponse { "image": Nothing }

-- | Constructs PutImageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutImageResponse' :: ( { "image" :: Maybe (Image) } -> {"image" :: Maybe (Image) } ) -> PutImageResponse
newPutImageResponse'  customize = (PutImageResponse <<< customize) { "image": Nothing }



newtype PutLifecyclePolicyRequest = PutLifecyclePolicyRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "lifecyclePolicyText" :: (LifecyclePolicyText)
  }
derive instance newtypePutLifecyclePolicyRequest :: Newtype PutLifecyclePolicyRequest _
derive instance repGenericPutLifecyclePolicyRequest :: Generic PutLifecyclePolicyRequest _
instance showPutLifecyclePolicyRequest :: Show PutLifecyclePolicyRequest where show = genericShow
instance decodePutLifecyclePolicyRequest :: Decode PutLifecyclePolicyRequest where decode = genericDecode options
instance encodePutLifecyclePolicyRequest :: Encode PutLifecyclePolicyRequest where encode = genericEncode options

-- | Constructs PutLifecyclePolicyRequest from required parameters
newPutLifecyclePolicyRequest :: LifecyclePolicyText -> RepositoryName -> PutLifecyclePolicyRequest
newPutLifecyclePolicyRequest _lifecyclePolicyText _repositoryName = PutLifecyclePolicyRequest { "lifecyclePolicyText": _lifecyclePolicyText, "repositoryName": _repositoryName, "registryId": Nothing }

-- | Constructs PutLifecyclePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutLifecyclePolicyRequest' :: LifecyclePolicyText -> RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "lifecyclePolicyText" :: (LifecyclePolicyText) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "lifecyclePolicyText" :: (LifecyclePolicyText) } ) -> PutLifecyclePolicyRequest
newPutLifecyclePolicyRequest' _lifecyclePolicyText _repositoryName customize = (PutLifecyclePolicyRequest <<< customize) { "lifecyclePolicyText": _lifecyclePolicyText, "repositoryName": _repositoryName, "registryId": Nothing }



newtype PutLifecyclePolicyResponse = PutLifecyclePolicyResponse 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText)
  }
derive instance newtypePutLifecyclePolicyResponse :: Newtype PutLifecyclePolicyResponse _
derive instance repGenericPutLifecyclePolicyResponse :: Generic PutLifecyclePolicyResponse _
instance showPutLifecyclePolicyResponse :: Show PutLifecyclePolicyResponse where show = genericShow
instance decodePutLifecyclePolicyResponse :: Decode PutLifecyclePolicyResponse where decode = genericDecode options
instance encodePutLifecyclePolicyResponse :: Encode PutLifecyclePolicyResponse where encode = genericEncode options

-- | Constructs PutLifecyclePolicyResponse from required parameters
newPutLifecyclePolicyResponse :: PutLifecyclePolicyResponse
newPutLifecyclePolicyResponse  = PutLifecyclePolicyResponse { "lifecyclePolicyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }

-- | Constructs PutLifecyclePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutLifecyclePolicyResponse' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) } ) -> PutLifecyclePolicyResponse
newPutLifecyclePolicyResponse'  customize = (PutLifecyclePolicyResponse <<< customize) { "lifecyclePolicyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }



newtype RegistryId = RegistryId String
derive instance newtypeRegistryId :: Newtype RegistryId _
derive instance repGenericRegistryId :: Generic RegistryId _
instance showRegistryId :: Show RegistryId where show = genericShow
instance decodeRegistryId :: Decode RegistryId where decode = genericDecode options
instance encodeRegistryId :: Encode RegistryId where encode = genericEncode options



-- | <p>An object representing a repository.</p>
newtype Repository = Repository 
  { "repositoryArn" :: Maybe (Arn)
  , "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "repositoryUri" :: Maybe (Url)
  , "createdAt" :: Maybe (CreationTimestamp)
  }
derive instance newtypeRepository :: Newtype Repository _
derive instance repGenericRepository :: Generic Repository _
instance showRepository :: Show Repository where show = genericShow
instance decodeRepository :: Decode Repository where decode = genericDecode options
instance encodeRepository :: Encode Repository where encode = genericEncode options

-- | Constructs Repository from required parameters
newRepository :: Repository
newRepository  = Repository { "createdAt": Nothing, "registryId": Nothing, "repositoryArn": Nothing, "repositoryName": Nothing, "repositoryUri": Nothing }

-- | Constructs Repository's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepository' :: ( { "repositoryArn" :: Maybe (Arn) , "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "repositoryUri" :: Maybe (Url) , "createdAt" :: Maybe (CreationTimestamp) } -> {"repositoryArn" :: Maybe (Arn) , "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "repositoryUri" :: Maybe (Url) , "createdAt" :: Maybe (CreationTimestamp) } ) -> Repository
newRepository'  customize = (Repository <<< customize) { "createdAt": Nothing, "registryId": Nothing, "repositoryArn": Nothing, "repositoryName": Nothing, "repositoryUri": Nothing }



-- | <p>The specified repository already exists in the specified registry.</p>
newtype RepositoryAlreadyExistsException = RepositoryAlreadyExistsException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeRepositoryAlreadyExistsException :: Newtype RepositoryAlreadyExistsException _
derive instance repGenericRepositoryAlreadyExistsException :: Generic RepositoryAlreadyExistsException _
instance showRepositoryAlreadyExistsException :: Show RepositoryAlreadyExistsException where show = genericShow
instance decodeRepositoryAlreadyExistsException :: Decode RepositoryAlreadyExistsException where decode = genericDecode options
instance encodeRepositoryAlreadyExistsException :: Encode RepositoryAlreadyExistsException where encode = genericEncode options

-- | Constructs RepositoryAlreadyExistsException from required parameters
newRepositoryAlreadyExistsException :: RepositoryAlreadyExistsException
newRepositoryAlreadyExistsException  = RepositoryAlreadyExistsException { "message": Nothing }

-- | Constructs RepositoryAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepositoryAlreadyExistsException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> RepositoryAlreadyExistsException
newRepositoryAlreadyExistsException'  customize = (RepositoryAlreadyExistsException <<< customize) { "message": Nothing }



newtype RepositoryList = RepositoryList (Array Repository)
derive instance newtypeRepositoryList :: Newtype RepositoryList _
derive instance repGenericRepositoryList :: Generic RepositoryList _
instance showRepositoryList :: Show RepositoryList where show = genericShow
instance decodeRepositoryList :: Decode RepositoryList where decode = genericDecode options
instance encodeRepositoryList :: Encode RepositoryList where encode = genericEncode options



newtype RepositoryName = RepositoryName String
derive instance newtypeRepositoryName :: Newtype RepositoryName _
derive instance repGenericRepositoryName :: Generic RepositoryName _
instance showRepositoryName :: Show RepositoryName where show = genericShow
instance decodeRepositoryName :: Decode RepositoryName where decode = genericDecode options
instance encodeRepositoryName :: Encode RepositoryName where encode = genericEncode options



newtype RepositoryNameList = RepositoryNameList (Array RepositoryName)
derive instance newtypeRepositoryNameList :: Newtype RepositoryNameList _
derive instance repGenericRepositoryNameList :: Generic RepositoryNameList _
instance showRepositoryNameList :: Show RepositoryNameList where show = genericShow
instance decodeRepositoryNameList :: Decode RepositoryNameList where decode = genericDecode options
instance encodeRepositoryNameList :: Encode RepositoryNameList where encode = genericEncode options



-- | <p>The specified repository contains images. To delete a repository that contains images, you must force the deletion with the <code>force</code> parameter.</p>
newtype RepositoryNotEmptyException = RepositoryNotEmptyException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeRepositoryNotEmptyException :: Newtype RepositoryNotEmptyException _
derive instance repGenericRepositoryNotEmptyException :: Generic RepositoryNotEmptyException _
instance showRepositoryNotEmptyException :: Show RepositoryNotEmptyException where show = genericShow
instance decodeRepositoryNotEmptyException :: Decode RepositoryNotEmptyException where decode = genericDecode options
instance encodeRepositoryNotEmptyException :: Encode RepositoryNotEmptyException where encode = genericEncode options

-- | Constructs RepositoryNotEmptyException from required parameters
newRepositoryNotEmptyException :: RepositoryNotEmptyException
newRepositoryNotEmptyException  = RepositoryNotEmptyException { "message": Nothing }

-- | Constructs RepositoryNotEmptyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepositoryNotEmptyException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> RepositoryNotEmptyException
newRepositoryNotEmptyException'  customize = (RepositoryNotEmptyException <<< customize) { "message": Nothing }



-- | <p>The specified repository could not be found. Check the spelling of the specified repository and ensure that you are performing operations on the correct registry.</p>
newtype RepositoryNotFoundException = RepositoryNotFoundException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeRepositoryNotFoundException :: Newtype RepositoryNotFoundException _
derive instance repGenericRepositoryNotFoundException :: Generic RepositoryNotFoundException _
instance showRepositoryNotFoundException :: Show RepositoryNotFoundException where show = genericShow
instance decodeRepositoryNotFoundException :: Decode RepositoryNotFoundException where decode = genericDecode options
instance encodeRepositoryNotFoundException :: Encode RepositoryNotFoundException where encode = genericEncode options

-- | Constructs RepositoryNotFoundException from required parameters
newRepositoryNotFoundException :: RepositoryNotFoundException
newRepositoryNotFoundException  = RepositoryNotFoundException { "message": Nothing }

-- | Constructs RepositoryNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepositoryNotFoundException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> RepositoryNotFoundException
newRepositoryNotFoundException'  customize = (RepositoryNotFoundException <<< customize) { "message": Nothing }



-- | <p>The specified repository and registry combination does not have an associated repository policy.</p>
newtype RepositoryPolicyNotFoundException = RepositoryPolicyNotFoundException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeRepositoryPolicyNotFoundException :: Newtype RepositoryPolicyNotFoundException _
derive instance repGenericRepositoryPolicyNotFoundException :: Generic RepositoryPolicyNotFoundException _
instance showRepositoryPolicyNotFoundException :: Show RepositoryPolicyNotFoundException where show = genericShow
instance decodeRepositoryPolicyNotFoundException :: Decode RepositoryPolicyNotFoundException where decode = genericDecode options
instance encodeRepositoryPolicyNotFoundException :: Encode RepositoryPolicyNotFoundException where encode = genericEncode options

-- | Constructs RepositoryPolicyNotFoundException from required parameters
newRepositoryPolicyNotFoundException :: RepositoryPolicyNotFoundException
newRepositoryPolicyNotFoundException  = RepositoryPolicyNotFoundException { "message": Nothing }

-- | Constructs RepositoryPolicyNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepositoryPolicyNotFoundException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> RepositoryPolicyNotFoundException
newRepositoryPolicyNotFoundException'  customize = (RepositoryPolicyNotFoundException <<< customize) { "message": Nothing }



newtype RepositoryPolicyText = RepositoryPolicyText String
derive instance newtypeRepositoryPolicyText :: Newtype RepositoryPolicyText _
derive instance repGenericRepositoryPolicyText :: Generic RepositoryPolicyText _
instance showRepositoryPolicyText :: Show RepositoryPolicyText where show = genericShow
instance decodeRepositoryPolicyText :: Decode RepositoryPolicyText where decode = genericDecode options
instance encodeRepositoryPolicyText :: Encode RepositoryPolicyText where encode = genericEncode options



-- | <p>These errors are usually caused by a server-side issue.</p>
newtype ServerException = ServerException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeServerException :: Newtype ServerException _
derive instance repGenericServerException :: Generic ServerException _
instance showServerException :: Show ServerException where show = genericShow
instance decodeServerException :: Decode ServerException where decode = genericDecode options
instance encodeServerException :: Encode ServerException where encode = genericEncode options

-- | Constructs ServerException from required parameters
newServerException :: ServerException
newServerException  = ServerException { "message": Nothing }

-- | Constructs ServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> ServerException
newServerException'  customize = (ServerException <<< customize) { "message": Nothing }



newtype SetRepositoryPolicyRequest = SetRepositoryPolicyRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "policyText" :: (RepositoryPolicyText)
  , "force" :: Maybe (ForceFlag)
  }
derive instance newtypeSetRepositoryPolicyRequest :: Newtype SetRepositoryPolicyRequest _
derive instance repGenericSetRepositoryPolicyRequest :: Generic SetRepositoryPolicyRequest _
instance showSetRepositoryPolicyRequest :: Show SetRepositoryPolicyRequest where show = genericShow
instance decodeSetRepositoryPolicyRequest :: Decode SetRepositoryPolicyRequest where decode = genericDecode options
instance encodeSetRepositoryPolicyRequest :: Encode SetRepositoryPolicyRequest where encode = genericEncode options

-- | Constructs SetRepositoryPolicyRequest from required parameters
newSetRepositoryPolicyRequest :: RepositoryPolicyText -> RepositoryName -> SetRepositoryPolicyRequest
newSetRepositoryPolicyRequest _policyText _repositoryName = SetRepositoryPolicyRequest { "policyText": _policyText, "repositoryName": _repositoryName, "force": Nothing, "registryId": Nothing }

-- | Constructs SetRepositoryPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetRepositoryPolicyRequest' :: RepositoryPolicyText -> RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "policyText" :: (RepositoryPolicyText) , "force" :: Maybe (ForceFlag) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "policyText" :: (RepositoryPolicyText) , "force" :: Maybe (ForceFlag) } ) -> SetRepositoryPolicyRequest
newSetRepositoryPolicyRequest' _policyText _repositoryName customize = (SetRepositoryPolicyRequest <<< customize) { "policyText": _policyText, "repositoryName": _repositoryName, "force": Nothing, "registryId": Nothing }



newtype SetRepositoryPolicyResponse = SetRepositoryPolicyResponse 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "policyText" :: Maybe (RepositoryPolicyText)
  }
derive instance newtypeSetRepositoryPolicyResponse :: Newtype SetRepositoryPolicyResponse _
derive instance repGenericSetRepositoryPolicyResponse :: Generic SetRepositoryPolicyResponse _
instance showSetRepositoryPolicyResponse :: Show SetRepositoryPolicyResponse where show = genericShow
instance decodeSetRepositoryPolicyResponse :: Decode SetRepositoryPolicyResponse where decode = genericDecode options
instance encodeSetRepositoryPolicyResponse :: Encode SetRepositoryPolicyResponse where encode = genericEncode options

-- | Constructs SetRepositoryPolicyResponse from required parameters
newSetRepositoryPolicyResponse :: SetRepositoryPolicyResponse
newSetRepositoryPolicyResponse  = SetRepositoryPolicyResponse { "policyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }

-- | Constructs SetRepositoryPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetRepositoryPolicyResponse' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "policyText" :: Maybe (RepositoryPolicyText) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "policyText" :: Maybe (RepositoryPolicyText) } ) -> SetRepositoryPolicyResponse
newSetRepositoryPolicyResponse'  customize = (SetRepositoryPolicyResponse <<< customize) { "policyText": Nothing, "registryId": Nothing, "repositoryName": Nothing }



newtype StartLifecyclePolicyPreviewRequest = StartLifecyclePolicyPreviewRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText)
  }
derive instance newtypeStartLifecyclePolicyPreviewRequest :: Newtype StartLifecyclePolicyPreviewRequest _
derive instance repGenericStartLifecyclePolicyPreviewRequest :: Generic StartLifecyclePolicyPreviewRequest _
instance showStartLifecyclePolicyPreviewRequest :: Show StartLifecyclePolicyPreviewRequest where show = genericShow
instance decodeStartLifecyclePolicyPreviewRequest :: Decode StartLifecyclePolicyPreviewRequest where decode = genericDecode options
instance encodeStartLifecyclePolicyPreviewRequest :: Encode StartLifecyclePolicyPreviewRequest where encode = genericEncode options

-- | Constructs StartLifecyclePolicyPreviewRequest from required parameters
newStartLifecyclePolicyPreviewRequest :: RepositoryName -> StartLifecyclePolicyPreviewRequest
newStartLifecyclePolicyPreviewRequest _repositoryName = StartLifecyclePolicyPreviewRequest { "repositoryName": _repositoryName, "lifecyclePolicyText": Nothing, "registryId": Nothing }

-- | Constructs StartLifecyclePolicyPreviewRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartLifecyclePolicyPreviewRequest' :: RepositoryName -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) } ) -> StartLifecyclePolicyPreviewRequest
newStartLifecyclePolicyPreviewRequest' _repositoryName customize = (StartLifecyclePolicyPreviewRequest <<< customize) { "repositoryName": _repositoryName, "lifecyclePolicyText": Nothing, "registryId": Nothing }



newtype StartLifecyclePolicyPreviewResponse = StartLifecyclePolicyPreviewResponse 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText)
  , "status" :: Maybe (LifecyclePolicyPreviewStatus)
  }
derive instance newtypeStartLifecyclePolicyPreviewResponse :: Newtype StartLifecyclePolicyPreviewResponse _
derive instance repGenericStartLifecyclePolicyPreviewResponse :: Generic StartLifecyclePolicyPreviewResponse _
instance showStartLifecyclePolicyPreviewResponse :: Show StartLifecyclePolicyPreviewResponse where show = genericShow
instance decodeStartLifecyclePolicyPreviewResponse :: Decode StartLifecyclePolicyPreviewResponse where decode = genericDecode options
instance encodeStartLifecyclePolicyPreviewResponse :: Encode StartLifecyclePolicyPreviewResponse where encode = genericEncode options

-- | Constructs StartLifecyclePolicyPreviewResponse from required parameters
newStartLifecyclePolicyPreviewResponse :: StartLifecyclePolicyPreviewResponse
newStartLifecyclePolicyPreviewResponse  = StartLifecyclePolicyPreviewResponse { "lifecyclePolicyText": Nothing, "registryId": Nothing, "repositoryName": Nothing, "status": Nothing }

-- | Constructs StartLifecyclePolicyPreviewResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartLifecyclePolicyPreviewResponse' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) , "status" :: Maybe (LifecyclePolicyPreviewStatus) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "lifecyclePolicyText" :: Maybe (LifecyclePolicyText) , "status" :: Maybe (LifecyclePolicyPreviewStatus) } ) -> StartLifecyclePolicyPreviewResponse
newStartLifecyclePolicyPreviewResponse'  customize = (StartLifecyclePolicyPreviewResponse <<< customize) { "lifecyclePolicyText": Nothing, "registryId": Nothing, "repositoryName": Nothing, "status": Nothing }



newtype TagStatus = TagStatus String
derive instance newtypeTagStatus :: Newtype TagStatus _
derive instance repGenericTagStatus :: Generic TagStatus _
instance showTagStatus :: Show TagStatus where show = genericShow
instance decodeTagStatus :: Decode TagStatus where decode = genericDecode options
instance encodeTagStatus :: Encode TagStatus where encode = genericEncode options



newtype UploadId = UploadId String
derive instance newtypeUploadId :: Newtype UploadId _
derive instance repGenericUploadId :: Generic UploadId _
instance showUploadId :: Show UploadId where show = genericShow
instance decodeUploadId :: Decode UploadId where decode = genericDecode options
instance encodeUploadId :: Encode UploadId where encode = genericEncode options



newtype UploadLayerPartRequest = UploadLayerPartRequest 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "uploadId" :: (UploadId)
  , "partFirstByte" :: (PartSize)
  , "partLastByte" :: (PartSize)
  , "layerPartBlob" :: (LayerPartBlob)
  }
derive instance newtypeUploadLayerPartRequest :: Newtype UploadLayerPartRequest _
derive instance repGenericUploadLayerPartRequest :: Generic UploadLayerPartRequest _
instance showUploadLayerPartRequest :: Show UploadLayerPartRequest where show = genericShow
instance decodeUploadLayerPartRequest :: Decode UploadLayerPartRequest where decode = genericDecode options
instance encodeUploadLayerPartRequest :: Encode UploadLayerPartRequest where encode = genericEncode options

-- | Constructs UploadLayerPartRequest from required parameters
newUploadLayerPartRequest :: LayerPartBlob -> PartSize -> PartSize -> RepositoryName -> UploadId -> UploadLayerPartRequest
newUploadLayerPartRequest _layerPartBlob _partFirstByte _partLastByte _repositoryName _uploadId = UploadLayerPartRequest { "layerPartBlob": _layerPartBlob, "partFirstByte": _partFirstByte, "partLastByte": _partLastByte, "repositoryName": _repositoryName, "uploadId": _uploadId, "registryId": Nothing }

-- | Constructs UploadLayerPartRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadLayerPartRequest' :: LayerPartBlob -> PartSize -> PartSize -> RepositoryName -> UploadId -> ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "uploadId" :: (UploadId) , "partFirstByte" :: (PartSize) , "partLastByte" :: (PartSize) , "layerPartBlob" :: (LayerPartBlob) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: (RepositoryName) , "uploadId" :: (UploadId) , "partFirstByte" :: (PartSize) , "partLastByte" :: (PartSize) , "layerPartBlob" :: (LayerPartBlob) } ) -> UploadLayerPartRequest
newUploadLayerPartRequest' _layerPartBlob _partFirstByte _partLastByte _repositoryName _uploadId customize = (UploadLayerPartRequest <<< customize) { "layerPartBlob": _layerPartBlob, "partFirstByte": _partFirstByte, "partLastByte": _partLastByte, "repositoryName": _repositoryName, "uploadId": _uploadId, "registryId": Nothing }



newtype UploadLayerPartResponse = UploadLayerPartResponse 
  { "registryId" :: Maybe (RegistryId)
  , "repositoryName" :: Maybe (RepositoryName)
  , "uploadId" :: Maybe (UploadId)
  , "lastByteReceived" :: Maybe (PartSize)
  }
derive instance newtypeUploadLayerPartResponse :: Newtype UploadLayerPartResponse _
derive instance repGenericUploadLayerPartResponse :: Generic UploadLayerPartResponse _
instance showUploadLayerPartResponse :: Show UploadLayerPartResponse where show = genericShow
instance decodeUploadLayerPartResponse :: Decode UploadLayerPartResponse where decode = genericDecode options
instance encodeUploadLayerPartResponse :: Encode UploadLayerPartResponse where encode = genericEncode options

-- | Constructs UploadLayerPartResponse from required parameters
newUploadLayerPartResponse :: UploadLayerPartResponse
newUploadLayerPartResponse  = UploadLayerPartResponse { "lastByteReceived": Nothing, "registryId": Nothing, "repositoryName": Nothing, "uploadId": Nothing }

-- | Constructs UploadLayerPartResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadLayerPartResponse' :: ( { "registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "uploadId" :: Maybe (UploadId) , "lastByteReceived" :: Maybe (PartSize) } -> {"registryId" :: Maybe (RegistryId) , "repositoryName" :: Maybe (RepositoryName) , "uploadId" :: Maybe (UploadId) , "lastByteReceived" :: Maybe (PartSize) } ) -> UploadLayerPartResponse
newUploadLayerPartResponse'  customize = (UploadLayerPartResponse <<< customize) { "lastByteReceived": Nothing, "registryId": Nothing, "repositoryName": Nothing, "uploadId": Nothing }



-- | <p>The upload could not be found, or the specified upload id is not valid for this repository.</p>
newtype UploadNotFoundException = UploadNotFoundException 
  { "message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeUploadNotFoundException :: Newtype UploadNotFoundException _
derive instance repGenericUploadNotFoundException :: Generic UploadNotFoundException _
instance showUploadNotFoundException :: Show UploadNotFoundException where show = genericShow
instance decodeUploadNotFoundException :: Decode UploadNotFoundException where decode = genericDecode options
instance encodeUploadNotFoundException :: Encode UploadNotFoundException where encode = genericEncode options

-- | Constructs UploadNotFoundException from required parameters
newUploadNotFoundException :: UploadNotFoundException
newUploadNotFoundException  = UploadNotFoundException { "message": Nothing }

-- | Constructs UploadNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadNotFoundException' :: ( { "message" :: Maybe (ExceptionMessage) } -> {"message" :: Maybe (ExceptionMessage) } ) -> UploadNotFoundException
newUploadNotFoundException'  customize = (UploadNotFoundException <<< customize) { "message": Nothing }



newtype Url = Url String
derive instance newtypeUrl :: Newtype Url _
derive instance repGenericUrl :: Generic Url _
instance showUrl :: Show Url where show = genericShow
instance decodeUrl :: Decode Url where decode = genericDecode options
instance encodeUrl :: Encode Url where encode = genericEncode options

