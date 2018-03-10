

-- | <p>Amazon Elastic Container Registry (Amazon ECR) is a managed Docker registry service. Customers can use the familiar Docker CLI to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry. Amazon ECR supports private Docker repositories with resource-based permissions using IAM so that specific users or Amazon EC2 instances can access repositories and images. Developers can use the Docker CLI to author and manage images.</p>
module AWS.ECR where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "ECR" :: String


-- | <p>Check the availability of multiple image layers in a specified registry and repository.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
batchCheckLayerAvailability :: forall eff. BatchCheckLayerAvailabilityRequest -> Aff (exception :: EXCEPTION | eff) BatchCheckLayerAvailabilityResponse
batchCheckLayerAvailability = Request.request serviceName "batchCheckLayerAvailability" 


-- | <p>Deletes a list of specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p> <p>You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository.</p> <p>You can completely delete an image (and all of its tags) by specifying the image's digest in your request.</p>
batchDeleteImage :: forall eff. BatchDeleteImageRequest -> Aff (exception :: EXCEPTION | eff) BatchDeleteImageResponse
batchDeleteImage = Request.request serviceName "batchDeleteImage" 


-- | <p>Gets detailed information for specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p>
batchGetImage :: forall eff. BatchGetImageRequest -> Aff (exception :: EXCEPTION | eff) BatchGetImageResponse
batchGetImage = Request.request serviceName "batchGetImage" 


-- | <p>Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a <code>sha256</code> digest of the image layer for data validation purposes.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
completeLayerUpload :: forall eff. CompleteLayerUploadRequest -> Aff (exception :: EXCEPTION | eff) CompleteLayerUploadResponse
completeLayerUpload = Request.request serviceName "completeLayerUpload" 


-- | <p>Creates an image repository.</p>
createRepository :: forall eff. CreateRepositoryRequest -> Aff (exception :: EXCEPTION | eff) CreateRepositoryResponse
createRepository = Request.request serviceName "createRepository" 


-- | <p>Deletes the specified lifecycle policy.</p>
deleteLifecyclePolicy :: forall eff. DeleteLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) DeleteLifecyclePolicyResponse
deleteLifecyclePolicy = Request.request serviceName "deleteLifecyclePolicy" 


-- | <p>Deletes an existing image repository. If a repository contains images, you must use the <code>force</code> option to delete it.</p>
deleteRepository :: forall eff. DeleteRepositoryRequest -> Aff (exception :: EXCEPTION | eff) DeleteRepositoryResponse
deleteRepository = Request.request serviceName "deleteRepository" 


-- | <p>Deletes the repository policy from a specified repository.</p>
deleteRepositoryPolicy :: forall eff. DeleteRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) DeleteRepositoryPolicyResponse
deleteRepositoryPolicy = Request.request serviceName "deleteRepositoryPolicy" 


-- | <p>Returns metadata about the images in a repository, including image size, image tags, and creation date.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>
describeImages :: forall eff. DescribeImagesRequest -> Aff (exception :: EXCEPTION | eff) DescribeImagesResponse
describeImages = Request.request serviceName "describeImages" 


-- | <p>Describes image repositories in a registry.</p>
describeRepositories :: forall eff. DescribeRepositoriesRequest -> Aff (exception :: EXCEPTION | eff) DescribeRepositoriesResponse
describeRepositories = Request.request serviceName "describeRepositories" 


-- | <p>Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the <code>docker</code> CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed.</p> <p>The <code>authorizationToken</code> returned for each registry specified is a base64 encoded string that can be decoded and used in a <code>docker login</code> command to authenticate to a registry. The AWS CLI offers an <code>aws ecr get-login</code> command that simplifies the login process.</p>
getAuthorizationToken :: forall eff. GetAuthorizationTokenRequest -> Aff (exception :: EXCEPTION | eff) GetAuthorizationTokenResponse
getAuthorizationToken = Request.request serviceName "getAuthorizationToken" 


-- | <p>Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
getDownloadUrlForLayer :: forall eff. GetDownloadUrlForLayerRequest -> Aff (exception :: EXCEPTION | eff) GetDownloadUrlForLayerResponse
getDownloadUrlForLayer = Request.request serviceName "getDownloadUrlForLayer" 


-- | <p>Retrieves the specified lifecycle policy.</p>
getLifecyclePolicy :: forall eff. GetLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) GetLifecyclePolicyResponse
getLifecyclePolicy = Request.request serviceName "getLifecyclePolicy" 


-- | <p>Retrieves the results of the specified lifecycle policy preview request.</p>
getLifecyclePolicyPreview :: forall eff. GetLifecyclePolicyPreviewRequest -> Aff (exception :: EXCEPTION | eff) GetLifecyclePolicyPreviewResponse
getLifecyclePolicyPreview = Request.request serviceName "getLifecyclePolicyPreview" 


-- | <p>Retrieves the repository policy for a specified repository.</p>
getRepositoryPolicy :: forall eff. GetRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetRepositoryPolicyResponse
getRepositoryPolicy = Request.request serviceName "getRepositoryPolicy" 


-- | <p>Notify Amazon ECR that you intend to upload an image layer.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
initiateLayerUpload :: forall eff. InitiateLayerUploadRequest -> Aff (exception :: EXCEPTION | eff) InitiateLayerUploadResponse
initiateLayerUpload = Request.request serviceName "initiateLayerUpload" 


-- | <p>Lists all the image IDs for a given repository.</p> <p>You can filter images based on whether or not they are tagged by setting the <code>tagStatus</code> parameter to <code>TAGGED</code> or <code>UNTAGGED</code>. For example, you can filter your results to return only <code>UNTAGGED</code> images and then pipe that result to a <a>BatchDeleteImage</a> operation to delete them. Or, you can filter your results to return only <code>TAGGED</code> images to list all of the tags in your repository.</p>
listImages :: forall eff. ListImagesRequest -> Aff (exception :: EXCEPTION | eff) ListImagesResponse
listImages = Request.request serviceName "listImages" 


-- | <p>Creates or updates the image manifest and tags associated with an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
putImage :: forall eff. PutImageRequest -> Aff (exception :: EXCEPTION | eff) PutImageResponse
putImage = Request.request serviceName "putImage" 


-- | <p>Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html">Lifecycle Policy Template</a>.</p>
putLifecyclePolicy :: forall eff. PutLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) PutLifecyclePolicyResponse
putLifecyclePolicy = Request.request serviceName "putLifecyclePolicy" 


-- | <p>Applies a repository policy on a specified repository to control access permissions.</p>
setRepositoryPolicy :: forall eff. SetRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) SetRepositoryPolicyResponse
setRepositoryPolicy = Request.request serviceName "setRepositoryPolicy" 


-- | <p>Starts a preview of the specified lifecycle policy. This allows you to see the results before creating the lifecycle policy.</p>
startLifecyclePolicyPreview :: forall eff. StartLifecyclePolicyPreviewRequest -> Aff (exception :: EXCEPTION | eff) StartLifecyclePolicyPreviewResponse
startLifecyclePolicyPreview = Request.request serviceName "startLifecyclePolicyPreview" 


-- | <p>Uploads an image layer part to Amazon ECR.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
uploadLayerPart :: forall eff. UploadLayerPartRequest -> Aff (exception :: EXCEPTION | eff) UploadLayerPartResponse
uploadLayerPart = Request.request serviceName "uploadLayerPart" 


newtype Arn = Arn String
derive instance newtypeArn :: Newtype Arn _
derive instance repGenericArn :: Generic Arn _
instance showArn :: Show Arn where
  show = genericShow
instance decodeArn :: Decode Arn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArn :: Encode Arn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing authorization data for an Amazon ECR registry.</p>
newtype AuthorizationData = AuthorizationData 
  { "authorizationToken" :: NullOrUndefined.NullOrUndefined (Base64)
  , "expiresAt" :: NullOrUndefined.NullOrUndefined (ExpirationTimestamp)
  , "proxyEndpoint" :: NullOrUndefined.NullOrUndefined (ProxyEndpoint)
  }
derive instance newtypeAuthorizationData :: Newtype AuthorizationData _
derive instance repGenericAuthorizationData :: Generic AuthorizationData _
instance showAuthorizationData :: Show AuthorizationData where
  show = genericShow
instance decodeAuthorizationData :: Decode AuthorizationData where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAuthorizationData :: Encode AuthorizationData where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AuthorizationData from required parameters
newAuthorizationData :: AuthorizationData
newAuthorizationData  = AuthorizationData { "authorizationToken": (NullOrUndefined Nothing), "expiresAt": (NullOrUndefined Nothing), "proxyEndpoint": (NullOrUndefined Nothing) }

-- | Constructs AuthorizationData's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthorizationData' :: ( { "authorizationToken" :: NullOrUndefined.NullOrUndefined (Base64) , "expiresAt" :: NullOrUndefined.NullOrUndefined (ExpirationTimestamp) , "proxyEndpoint" :: NullOrUndefined.NullOrUndefined (ProxyEndpoint) } -> {"authorizationToken" :: NullOrUndefined.NullOrUndefined (Base64) , "expiresAt" :: NullOrUndefined.NullOrUndefined (ExpirationTimestamp) , "proxyEndpoint" :: NullOrUndefined.NullOrUndefined (ProxyEndpoint) } ) -> AuthorizationData
newAuthorizationData'  customize = (AuthorizationData <<< customize) { "authorizationToken": (NullOrUndefined Nothing), "expiresAt": (NullOrUndefined Nothing), "proxyEndpoint": (NullOrUndefined Nothing) }



newtype AuthorizationDataList = AuthorizationDataList (Array AuthorizationData)
derive instance newtypeAuthorizationDataList :: Newtype AuthorizationDataList _
derive instance repGenericAuthorizationDataList :: Generic AuthorizationDataList _
instance showAuthorizationDataList :: Show AuthorizationDataList where
  show = genericShow
instance decodeAuthorizationDataList :: Decode AuthorizationDataList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAuthorizationDataList :: Encode AuthorizationDataList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Base64 = Base64 String
derive instance newtypeBase64 :: Newtype Base64 _
derive instance repGenericBase64 :: Generic Base64 _
instance showBase64 :: Show Base64 where
  show = genericShow
instance decodeBase64 :: Decode Base64 where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBase64 :: Encode Base64 where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype BatchCheckLayerAvailabilityRequest = BatchCheckLayerAvailabilityRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "layerDigests" :: (BatchedOperationLayerDigestList)
  }
derive instance newtypeBatchCheckLayerAvailabilityRequest :: Newtype BatchCheckLayerAvailabilityRequest _
derive instance repGenericBatchCheckLayerAvailabilityRequest :: Generic BatchCheckLayerAvailabilityRequest _
instance showBatchCheckLayerAvailabilityRequest :: Show BatchCheckLayerAvailabilityRequest where
  show = genericShow
instance decodeBatchCheckLayerAvailabilityRequest :: Decode BatchCheckLayerAvailabilityRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchCheckLayerAvailabilityRequest :: Encode BatchCheckLayerAvailabilityRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchCheckLayerAvailabilityRequest from required parameters
newBatchCheckLayerAvailabilityRequest :: BatchedOperationLayerDigestList -> RepositoryName -> BatchCheckLayerAvailabilityRequest
newBatchCheckLayerAvailabilityRequest _layerDigests _repositoryName = BatchCheckLayerAvailabilityRequest { "layerDigests": _layerDigests, "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }

-- | Constructs BatchCheckLayerAvailabilityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchCheckLayerAvailabilityRequest' :: BatchedOperationLayerDigestList -> RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "layerDigests" :: (BatchedOperationLayerDigestList) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "layerDigests" :: (BatchedOperationLayerDigestList) } ) -> BatchCheckLayerAvailabilityRequest
newBatchCheckLayerAvailabilityRequest' _layerDigests _repositoryName customize = (BatchCheckLayerAvailabilityRequest <<< customize) { "layerDigests": _layerDigests, "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }



newtype BatchCheckLayerAvailabilityResponse = BatchCheckLayerAvailabilityResponse 
  { "layers" :: NullOrUndefined.NullOrUndefined (LayerList)
  , "failures" :: NullOrUndefined.NullOrUndefined (LayerFailureList)
  }
derive instance newtypeBatchCheckLayerAvailabilityResponse :: Newtype BatchCheckLayerAvailabilityResponse _
derive instance repGenericBatchCheckLayerAvailabilityResponse :: Generic BatchCheckLayerAvailabilityResponse _
instance showBatchCheckLayerAvailabilityResponse :: Show BatchCheckLayerAvailabilityResponse where
  show = genericShow
instance decodeBatchCheckLayerAvailabilityResponse :: Decode BatchCheckLayerAvailabilityResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchCheckLayerAvailabilityResponse :: Encode BatchCheckLayerAvailabilityResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchCheckLayerAvailabilityResponse from required parameters
newBatchCheckLayerAvailabilityResponse :: BatchCheckLayerAvailabilityResponse
newBatchCheckLayerAvailabilityResponse  = BatchCheckLayerAvailabilityResponse { "failures": (NullOrUndefined Nothing), "layers": (NullOrUndefined Nothing) }

-- | Constructs BatchCheckLayerAvailabilityResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchCheckLayerAvailabilityResponse' :: ( { "layers" :: NullOrUndefined.NullOrUndefined (LayerList) , "failures" :: NullOrUndefined.NullOrUndefined (LayerFailureList) } -> {"layers" :: NullOrUndefined.NullOrUndefined (LayerList) , "failures" :: NullOrUndefined.NullOrUndefined (LayerFailureList) } ) -> BatchCheckLayerAvailabilityResponse
newBatchCheckLayerAvailabilityResponse'  customize = (BatchCheckLayerAvailabilityResponse <<< customize) { "failures": (NullOrUndefined Nothing), "layers": (NullOrUndefined Nothing) }



-- | <p>Deletes specified images within a specified repository. Images are specified with either the <code>imageTag</code> or <code>imageDigest</code>.</p>
newtype BatchDeleteImageRequest = BatchDeleteImageRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "imageIds" :: (ImageIdentifierList)
  }
derive instance newtypeBatchDeleteImageRequest :: Newtype BatchDeleteImageRequest _
derive instance repGenericBatchDeleteImageRequest :: Generic BatchDeleteImageRequest _
instance showBatchDeleteImageRequest :: Show BatchDeleteImageRequest where
  show = genericShow
instance decodeBatchDeleteImageRequest :: Decode BatchDeleteImageRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDeleteImageRequest :: Encode BatchDeleteImageRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchDeleteImageRequest from required parameters
newBatchDeleteImageRequest :: ImageIdentifierList -> RepositoryName -> BatchDeleteImageRequest
newBatchDeleteImageRequest _imageIds _repositoryName = BatchDeleteImageRequest { "imageIds": _imageIds, "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }

-- | Constructs BatchDeleteImageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDeleteImageRequest' :: ImageIdentifierList -> RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: (ImageIdentifierList) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: (ImageIdentifierList) } ) -> BatchDeleteImageRequest
newBatchDeleteImageRequest' _imageIds _repositoryName customize = (BatchDeleteImageRequest <<< customize) { "imageIds": _imageIds, "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }



newtype BatchDeleteImageResponse = BatchDeleteImageResponse 
  { "imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList)
  , "failures" :: NullOrUndefined.NullOrUndefined (ImageFailureList)
  }
derive instance newtypeBatchDeleteImageResponse :: Newtype BatchDeleteImageResponse _
derive instance repGenericBatchDeleteImageResponse :: Generic BatchDeleteImageResponse _
instance showBatchDeleteImageResponse :: Show BatchDeleteImageResponse where
  show = genericShow
instance decodeBatchDeleteImageResponse :: Decode BatchDeleteImageResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDeleteImageResponse :: Encode BatchDeleteImageResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchDeleteImageResponse from required parameters
newBatchDeleteImageResponse :: BatchDeleteImageResponse
newBatchDeleteImageResponse  = BatchDeleteImageResponse { "failures": (NullOrUndefined Nothing), "imageIds": (NullOrUndefined Nothing) }

-- | Constructs BatchDeleteImageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDeleteImageResponse' :: ( { "imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList) , "failures" :: NullOrUndefined.NullOrUndefined (ImageFailureList) } -> {"imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList) , "failures" :: NullOrUndefined.NullOrUndefined (ImageFailureList) } ) -> BatchDeleteImageResponse
newBatchDeleteImageResponse'  customize = (BatchDeleteImageResponse <<< customize) { "failures": (NullOrUndefined Nothing), "imageIds": (NullOrUndefined Nothing) }



newtype BatchGetImageRequest = BatchGetImageRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "imageIds" :: (ImageIdentifierList)
  , "acceptedMediaTypes" :: NullOrUndefined.NullOrUndefined (MediaTypeList)
  }
derive instance newtypeBatchGetImageRequest :: Newtype BatchGetImageRequest _
derive instance repGenericBatchGetImageRequest :: Generic BatchGetImageRequest _
instance showBatchGetImageRequest :: Show BatchGetImageRequest where
  show = genericShow
instance decodeBatchGetImageRequest :: Decode BatchGetImageRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchGetImageRequest :: Encode BatchGetImageRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchGetImageRequest from required parameters
newBatchGetImageRequest :: ImageIdentifierList -> RepositoryName -> BatchGetImageRequest
newBatchGetImageRequest _imageIds _repositoryName = BatchGetImageRequest { "imageIds": _imageIds, "repositoryName": _repositoryName, "acceptedMediaTypes": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }

-- | Constructs BatchGetImageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetImageRequest' :: ImageIdentifierList -> RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: (ImageIdentifierList) , "acceptedMediaTypes" :: NullOrUndefined.NullOrUndefined (MediaTypeList) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: (ImageIdentifierList) , "acceptedMediaTypes" :: NullOrUndefined.NullOrUndefined (MediaTypeList) } ) -> BatchGetImageRequest
newBatchGetImageRequest' _imageIds _repositoryName customize = (BatchGetImageRequest <<< customize) { "imageIds": _imageIds, "repositoryName": _repositoryName, "acceptedMediaTypes": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }



newtype BatchGetImageResponse = BatchGetImageResponse 
  { "images" :: NullOrUndefined.NullOrUndefined (ImageList)
  , "failures" :: NullOrUndefined.NullOrUndefined (ImageFailureList)
  }
derive instance newtypeBatchGetImageResponse :: Newtype BatchGetImageResponse _
derive instance repGenericBatchGetImageResponse :: Generic BatchGetImageResponse _
instance showBatchGetImageResponse :: Show BatchGetImageResponse where
  show = genericShow
instance decodeBatchGetImageResponse :: Decode BatchGetImageResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchGetImageResponse :: Encode BatchGetImageResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchGetImageResponse from required parameters
newBatchGetImageResponse :: BatchGetImageResponse
newBatchGetImageResponse  = BatchGetImageResponse { "failures": (NullOrUndefined Nothing), "images": (NullOrUndefined Nothing) }

-- | Constructs BatchGetImageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetImageResponse' :: ( { "images" :: NullOrUndefined.NullOrUndefined (ImageList) , "failures" :: NullOrUndefined.NullOrUndefined (ImageFailureList) } -> {"images" :: NullOrUndefined.NullOrUndefined (ImageList) , "failures" :: NullOrUndefined.NullOrUndefined (ImageFailureList) } ) -> BatchGetImageResponse
newBatchGetImageResponse'  customize = (BatchGetImageResponse <<< customize) { "failures": (NullOrUndefined Nothing), "images": (NullOrUndefined Nothing) }



newtype BatchedOperationLayerDigest = BatchedOperationLayerDigest String
derive instance newtypeBatchedOperationLayerDigest :: Newtype BatchedOperationLayerDigest _
derive instance repGenericBatchedOperationLayerDigest :: Generic BatchedOperationLayerDigest _
instance showBatchedOperationLayerDigest :: Show BatchedOperationLayerDigest where
  show = genericShow
instance decodeBatchedOperationLayerDigest :: Decode BatchedOperationLayerDigest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchedOperationLayerDigest :: Encode BatchedOperationLayerDigest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype BatchedOperationLayerDigestList = BatchedOperationLayerDigestList (Array BatchedOperationLayerDigest)
derive instance newtypeBatchedOperationLayerDigestList :: Newtype BatchedOperationLayerDigestList _
derive instance repGenericBatchedOperationLayerDigestList :: Generic BatchedOperationLayerDigestList _
instance showBatchedOperationLayerDigestList :: Show BatchedOperationLayerDigestList where
  show = genericShow
instance decodeBatchedOperationLayerDigestList :: Decode BatchedOperationLayerDigestList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchedOperationLayerDigestList :: Encode BatchedOperationLayerDigestList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CompleteLayerUploadRequest = CompleteLayerUploadRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "uploadId" :: (UploadId)
  , "layerDigests" :: (LayerDigestList)
  }
derive instance newtypeCompleteLayerUploadRequest :: Newtype CompleteLayerUploadRequest _
derive instance repGenericCompleteLayerUploadRequest :: Generic CompleteLayerUploadRequest _
instance showCompleteLayerUploadRequest :: Show CompleteLayerUploadRequest where
  show = genericShow
instance decodeCompleteLayerUploadRequest :: Decode CompleteLayerUploadRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCompleteLayerUploadRequest :: Encode CompleteLayerUploadRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CompleteLayerUploadRequest from required parameters
newCompleteLayerUploadRequest :: LayerDigestList -> RepositoryName -> UploadId -> CompleteLayerUploadRequest
newCompleteLayerUploadRequest _layerDigests _repositoryName _uploadId = CompleteLayerUploadRequest { "layerDigests": _layerDigests, "repositoryName": _repositoryName, "uploadId": _uploadId, "registryId": (NullOrUndefined Nothing) }

-- | Constructs CompleteLayerUploadRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompleteLayerUploadRequest' :: LayerDigestList -> RepositoryName -> UploadId -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "uploadId" :: (UploadId) , "layerDigests" :: (LayerDigestList) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "uploadId" :: (UploadId) , "layerDigests" :: (LayerDigestList) } ) -> CompleteLayerUploadRequest
newCompleteLayerUploadRequest' _layerDigests _repositoryName _uploadId customize = (CompleteLayerUploadRequest <<< customize) { "layerDigests": _layerDigests, "repositoryName": _repositoryName, "uploadId": _uploadId, "registryId": (NullOrUndefined Nothing) }



newtype CompleteLayerUploadResponse = CompleteLayerUploadResponse 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId)
  , "layerDigest" :: NullOrUndefined.NullOrUndefined (LayerDigest)
  }
derive instance newtypeCompleteLayerUploadResponse :: Newtype CompleteLayerUploadResponse _
derive instance repGenericCompleteLayerUploadResponse :: Generic CompleteLayerUploadResponse _
instance showCompleteLayerUploadResponse :: Show CompleteLayerUploadResponse where
  show = genericShow
instance decodeCompleteLayerUploadResponse :: Decode CompleteLayerUploadResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCompleteLayerUploadResponse :: Encode CompleteLayerUploadResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CompleteLayerUploadResponse from required parameters
newCompleteLayerUploadResponse :: CompleteLayerUploadResponse
newCompleteLayerUploadResponse  = CompleteLayerUploadResponse { "layerDigest": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "uploadId": (NullOrUndefined Nothing) }

-- | Constructs CompleteLayerUploadResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompleteLayerUploadResponse' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId) , "layerDigest" :: NullOrUndefined.NullOrUndefined (LayerDigest) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId) , "layerDigest" :: NullOrUndefined.NullOrUndefined (LayerDigest) } ) -> CompleteLayerUploadResponse
newCompleteLayerUploadResponse'  customize = (CompleteLayerUploadResponse <<< customize) { "layerDigest": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "uploadId": (NullOrUndefined Nothing) }



newtype CreateRepositoryRequest = CreateRepositoryRequest 
  { "repositoryName" :: (RepositoryName)
  }
derive instance newtypeCreateRepositoryRequest :: Newtype CreateRepositoryRequest _
derive instance repGenericCreateRepositoryRequest :: Generic CreateRepositoryRequest _
instance showCreateRepositoryRequest :: Show CreateRepositoryRequest where
  show = genericShow
instance decodeCreateRepositoryRequest :: Decode CreateRepositoryRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateRepositoryRequest :: Encode CreateRepositoryRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateRepositoryRequest from required parameters
newCreateRepositoryRequest :: RepositoryName -> CreateRepositoryRequest
newCreateRepositoryRequest _repositoryName = CreateRepositoryRequest { "repositoryName": _repositoryName }

-- | Constructs CreateRepositoryRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRepositoryRequest' :: RepositoryName -> ( { "repositoryName" :: (RepositoryName) } -> {"repositoryName" :: (RepositoryName) } ) -> CreateRepositoryRequest
newCreateRepositoryRequest' _repositoryName customize = (CreateRepositoryRequest <<< customize) { "repositoryName": _repositoryName }



newtype CreateRepositoryResponse = CreateRepositoryResponse 
  { "repository" :: NullOrUndefined.NullOrUndefined (Repository)
  }
derive instance newtypeCreateRepositoryResponse :: Newtype CreateRepositoryResponse _
derive instance repGenericCreateRepositoryResponse :: Generic CreateRepositoryResponse _
instance showCreateRepositoryResponse :: Show CreateRepositoryResponse where
  show = genericShow
instance decodeCreateRepositoryResponse :: Decode CreateRepositoryResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateRepositoryResponse :: Encode CreateRepositoryResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateRepositoryResponse from required parameters
newCreateRepositoryResponse :: CreateRepositoryResponse
newCreateRepositoryResponse  = CreateRepositoryResponse { "repository": (NullOrUndefined Nothing) }

-- | Constructs CreateRepositoryResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRepositoryResponse' :: ( { "repository" :: NullOrUndefined.NullOrUndefined (Repository) } -> {"repository" :: NullOrUndefined.NullOrUndefined (Repository) } ) -> CreateRepositoryResponse
newCreateRepositoryResponse'  customize = (CreateRepositoryResponse <<< customize) { "repository": (NullOrUndefined Nothing) }



newtype CreationTimestamp = CreationTimestamp Types.Timestamp
derive instance newtypeCreationTimestamp :: Newtype CreationTimestamp _
derive instance repGenericCreationTimestamp :: Generic CreationTimestamp _
instance showCreationTimestamp :: Show CreationTimestamp where
  show = genericShow
instance decodeCreationTimestamp :: Decode CreationTimestamp where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreationTimestamp :: Encode CreationTimestamp where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteLifecyclePolicyRequest = DeleteLifecyclePolicyRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  }
derive instance newtypeDeleteLifecyclePolicyRequest :: Newtype DeleteLifecyclePolicyRequest _
derive instance repGenericDeleteLifecyclePolicyRequest :: Generic DeleteLifecyclePolicyRequest _
instance showDeleteLifecyclePolicyRequest :: Show DeleteLifecyclePolicyRequest where
  show = genericShow
instance decodeDeleteLifecyclePolicyRequest :: Decode DeleteLifecyclePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteLifecyclePolicyRequest :: Encode DeleteLifecyclePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteLifecyclePolicyRequest from required parameters
newDeleteLifecyclePolicyRequest :: RepositoryName -> DeleteLifecyclePolicyRequest
newDeleteLifecyclePolicyRequest _repositoryName = DeleteLifecyclePolicyRequest { "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }

-- | Constructs DeleteLifecyclePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteLifecyclePolicyRequest' :: RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) } ) -> DeleteLifecyclePolicyRequest
newDeleteLifecyclePolicyRequest' _repositoryName customize = (DeleteLifecyclePolicyRequest <<< customize) { "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }



newtype DeleteLifecyclePolicyResponse = DeleteLifecyclePolicyResponse 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText)
  , "lastEvaluatedAt" :: NullOrUndefined.NullOrUndefined (EvaluationTimestamp)
  }
derive instance newtypeDeleteLifecyclePolicyResponse :: Newtype DeleteLifecyclePolicyResponse _
derive instance repGenericDeleteLifecyclePolicyResponse :: Generic DeleteLifecyclePolicyResponse _
instance showDeleteLifecyclePolicyResponse :: Show DeleteLifecyclePolicyResponse where
  show = genericShow
instance decodeDeleteLifecyclePolicyResponse :: Decode DeleteLifecyclePolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteLifecyclePolicyResponse :: Encode DeleteLifecyclePolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteLifecyclePolicyResponse from required parameters
newDeleteLifecyclePolicyResponse :: DeleteLifecyclePolicyResponse
newDeleteLifecyclePolicyResponse  = DeleteLifecyclePolicyResponse { "lastEvaluatedAt": (NullOrUndefined Nothing), "lifecyclePolicyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }

-- | Constructs DeleteLifecyclePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteLifecyclePolicyResponse' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) , "lastEvaluatedAt" :: NullOrUndefined.NullOrUndefined (EvaluationTimestamp) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) , "lastEvaluatedAt" :: NullOrUndefined.NullOrUndefined (EvaluationTimestamp) } ) -> DeleteLifecyclePolicyResponse
newDeleteLifecyclePolicyResponse'  customize = (DeleteLifecyclePolicyResponse <<< customize) { "lastEvaluatedAt": (NullOrUndefined Nothing), "lifecyclePolicyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }



newtype DeleteRepositoryPolicyRequest = DeleteRepositoryPolicyRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  }
derive instance newtypeDeleteRepositoryPolicyRequest :: Newtype DeleteRepositoryPolicyRequest _
derive instance repGenericDeleteRepositoryPolicyRequest :: Generic DeleteRepositoryPolicyRequest _
instance showDeleteRepositoryPolicyRequest :: Show DeleteRepositoryPolicyRequest where
  show = genericShow
instance decodeDeleteRepositoryPolicyRequest :: Decode DeleteRepositoryPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteRepositoryPolicyRequest :: Encode DeleteRepositoryPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteRepositoryPolicyRequest from required parameters
newDeleteRepositoryPolicyRequest :: RepositoryName -> DeleteRepositoryPolicyRequest
newDeleteRepositoryPolicyRequest _repositoryName = DeleteRepositoryPolicyRequest { "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }

-- | Constructs DeleteRepositoryPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRepositoryPolicyRequest' :: RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) } ) -> DeleteRepositoryPolicyRequest
newDeleteRepositoryPolicyRequest' _repositoryName customize = (DeleteRepositoryPolicyRequest <<< customize) { "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }



newtype DeleteRepositoryPolicyResponse = DeleteRepositoryPolicyResponse 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "policyText" :: NullOrUndefined.NullOrUndefined (RepositoryPolicyText)
  }
derive instance newtypeDeleteRepositoryPolicyResponse :: Newtype DeleteRepositoryPolicyResponse _
derive instance repGenericDeleteRepositoryPolicyResponse :: Generic DeleteRepositoryPolicyResponse _
instance showDeleteRepositoryPolicyResponse :: Show DeleteRepositoryPolicyResponse where
  show = genericShow
instance decodeDeleteRepositoryPolicyResponse :: Decode DeleteRepositoryPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteRepositoryPolicyResponse :: Encode DeleteRepositoryPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteRepositoryPolicyResponse from required parameters
newDeleteRepositoryPolicyResponse :: DeleteRepositoryPolicyResponse
newDeleteRepositoryPolicyResponse  = DeleteRepositoryPolicyResponse { "policyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }

-- | Constructs DeleteRepositoryPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRepositoryPolicyResponse' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "policyText" :: NullOrUndefined.NullOrUndefined (RepositoryPolicyText) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "policyText" :: NullOrUndefined.NullOrUndefined (RepositoryPolicyText) } ) -> DeleteRepositoryPolicyResponse
newDeleteRepositoryPolicyResponse'  customize = (DeleteRepositoryPolicyResponse <<< customize) { "policyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }



newtype DeleteRepositoryRequest = DeleteRepositoryRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "force" :: NullOrUndefined.NullOrUndefined (ForceFlag)
  }
derive instance newtypeDeleteRepositoryRequest :: Newtype DeleteRepositoryRequest _
derive instance repGenericDeleteRepositoryRequest :: Generic DeleteRepositoryRequest _
instance showDeleteRepositoryRequest :: Show DeleteRepositoryRequest where
  show = genericShow
instance decodeDeleteRepositoryRequest :: Decode DeleteRepositoryRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteRepositoryRequest :: Encode DeleteRepositoryRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteRepositoryRequest from required parameters
newDeleteRepositoryRequest :: RepositoryName -> DeleteRepositoryRequest
newDeleteRepositoryRequest _repositoryName = DeleteRepositoryRequest { "repositoryName": _repositoryName, "force": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }

-- | Constructs DeleteRepositoryRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRepositoryRequest' :: RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "force" :: NullOrUndefined.NullOrUndefined (ForceFlag) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "force" :: NullOrUndefined.NullOrUndefined (ForceFlag) } ) -> DeleteRepositoryRequest
newDeleteRepositoryRequest' _repositoryName customize = (DeleteRepositoryRequest <<< customize) { "repositoryName": _repositoryName, "force": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }



newtype DeleteRepositoryResponse = DeleteRepositoryResponse 
  { "repository" :: NullOrUndefined.NullOrUndefined (Repository)
  }
derive instance newtypeDeleteRepositoryResponse :: Newtype DeleteRepositoryResponse _
derive instance repGenericDeleteRepositoryResponse :: Generic DeleteRepositoryResponse _
instance showDeleteRepositoryResponse :: Show DeleteRepositoryResponse where
  show = genericShow
instance decodeDeleteRepositoryResponse :: Decode DeleteRepositoryResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteRepositoryResponse :: Encode DeleteRepositoryResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteRepositoryResponse from required parameters
newDeleteRepositoryResponse :: DeleteRepositoryResponse
newDeleteRepositoryResponse  = DeleteRepositoryResponse { "repository": (NullOrUndefined Nothing) }

-- | Constructs DeleteRepositoryResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRepositoryResponse' :: ( { "repository" :: NullOrUndefined.NullOrUndefined (Repository) } -> {"repository" :: NullOrUndefined.NullOrUndefined (Repository) } ) -> DeleteRepositoryResponse
newDeleteRepositoryResponse'  customize = (DeleteRepositoryResponse <<< customize) { "repository": (NullOrUndefined Nothing) }



-- | <p>An object representing a filter on a <a>DescribeImages</a> operation.</p>
newtype DescribeImagesFilter = DescribeImagesFilter 
  { "tagStatus" :: NullOrUndefined.NullOrUndefined (TagStatus)
  }
derive instance newtypeDescribeImagesFilter :: Newtype DescribeImagesFilter _
derive instance repGenericDescribeImagesFilter :: Generic DescribeImagesFilter _
instance showDescribeImagesFilter :: Show DescribeImagesFilter where
  show = genericShow
instance decodeDescribeImagesFilter :: Decode DescribeImagesFilter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeImagesFilter :: Encode DescribeImagesFilter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeImagesFilter from required parameters
newDescribeImagesFilter :: DescribeImagesFilter
newDescribeImagesFilter  = DescribeImagesFilter { "tagStatus": (NullOrUndefined Nothing) }

-- | Constructs DescribeImagesFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeImagesFilter' :: ( { "tagStatus" :: NullOrUndefined.NullOrUndefined (TagStatus) } -> {"tagStatus" :: NullOrUndefined.NullOrUndefined (TagStatus) } ) -> DescribeImagesFilter
newDescribeImagesFilter'  customize = (DescribeImagesFilter <<< customize) { "tagStatus": (NullOrUndefined Nothing) }



newtype DescribeImagesRequest = DescribeImagesRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "filter" :: NullOrUndefined.NullOrUndefined (DescribeImagesFilter)
  }
derive instance newtypeDescribeImagesRequest :: Newtype DescribeImagesRequest _
derive instance repGenericDescribeImagesRequest :: Generic DescribeImagesRequest _
instance showDescribeImagesRequest :: Show DescribeImagesRequest where
  show = genericShow
instance decodeDescribeImagesRequest :: Decode DescribeImagesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeImagesRequest :: Encode DescribeImagesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeImagesRequest from required parameters
newDescribeImagesRequest :: RepositoryName -> DescribeImagesRequest
newDescribeImagesRequest _repositoryName = DescribeImagesRequest { "repositoryName": _repositoryName, "filter": (NullOrUndefined Nothing), "imageIds": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }

-- | Constructs DescribeImagesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeImagesRequest' :: RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "filter" :: NullOrUndefined.NullOrUndefined (DescribeImagesFilter) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "filter" :: NullOrUndefined.NullOrUndefined (DescribeImagesFilter) } ) -> DescribeImagesRequest
newDescribeImagesRequest' _repositoryName customize = (DescribeImagesRequest <<< customize) { "repositoryName": _repositoryName, "filter": (NullOrUndefined Nothing), "imageIds": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }



newtype DescribeImagesResponse = DescribeImagesResponse 
  { "imageDetails" :: NullOrUndefined.NullOrUndefined (ImageDetailList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeImagesResponse :: Newtype DescribeImagesResponse _
derive instance repGenericDescribeImagesResponse :: Generic DescribeImagesResponse _
instance showDescribeImagesResponse :: Show DescribeImagesResponse where
  show = genericShow
instance decodeDescribeImagesResponse :: Decode DescribeImagesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeImagesResponse :: Encode DescribeImagesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeImagesResponse from required parameters
newDescribeImagesResponse :: DescribeImagesResponse
newDescribeImagesResponse  = DescribeImagesResponse { "imageDetails": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeImagesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeImagesResponse' :: ( { "imageDetails" :: NullOrUndefined.NullOrUndefined (ImageDetailList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"imageDetails" :: NullOrUndefined.NullOrUndefined (ImageDetailList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> DescribeImagesResponse
newDescribeImagesResponse'  customize = (DescribeImagesResponse <<< customize) { "imageDetails": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeRepositoriesRequest = DescribeRepositoriesRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryNames" :: NullOrUndefined.NullOrUndefined (RepositoryNameList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeDescribeRepositoriesRequest :: Newtype DescribeRepositoriesRequest _
derive instance repGenericDescribeRepositoriesRequest :: Generic DescribeRepositoriesRequest _
instance showDescribeRepositoriesRequest :: Show DescribeRepositoriesRequest where
  show = genericShow
instance decodeDescribeRepositoriesRequest :: Decode DescribeRepositoriesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeRepositoriesRequest :: Encode DescribeRepositoriesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeRepositoriesRequest from required parameters
newDescribeRepositoriesRequest :: DescribeRepositoriesRequest
newDescribeRepositoriesRequest  = DescribeRepositoriesRequest { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeRepositoriesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRepositoriesRequest' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryNames" :: NullOrUndefined.NullOrUndefined (RepositoryNameList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryNames" :: NullOrUndefined.NullOrUndefined (RepositoryNameList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> DescribeRepositoriesRequest
newDescribeRepositoriesRequest'  customize = (DescribeRepositoriesRequest <<< customize) { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryNames": (NullOrUndefined Nothing) }



newtype DescribeRepositoriesResponse = DescribeRepositoriesResponse 
  { "repositories" :: NullOrUndefined.NullOrUndefined (RepositoryList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeRepositoriesResponse :: Newtype DescribeRepositoriesResponse _
derive instance repGenericDescribeRepositoriesResponse :: Generic DescribeRepositoriesResponse _
instance showDescribeRepositoriesResponse :: Show DescribeRepositoriesResponse where
  show = genericShow
instance decodeDescribeRepositoriesResponse :: Decode DescribeRepositoriesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeRepositoriesResponse :: Encode DescribeRepositoriesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeRepositoriesResponse from required parameters
newDescribeRepositoriesResponse :: DescribeRepositoriesResponse
newDescribeRepositoriesResponse  = DescribeRepositoriesResponse { "nextToken": (NullOrUndefined Nothing), "repositories": (NullOrUndefined Nothing) }

-- | Constructs DescribeRepositoriesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRepositoriesResponse' :: ( { "repositories" :: NullOrUndefined.NullOrUndefined (RepositoryList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"repositories" :: NullOrUndefined.NullOrUndefined (RepositoryList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> DescribeRepositoriesResponse
newDescribeRepositoriesResponse'  customize = (DescribeRepositoriesResponse <<< customize) { "nextToken": (NullOrUndefined Nothing), "repositories": (NullOrUndefined Nothing) }



-- | <p>The specified layer upload does not contain any layer parts.</p>
newtype EmptyUploadException = EmptyUploadException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeEmptyUploadException :: Newtype EmptyUploadException _
derive instance repGenericEmptyUploadException :: Generic EmptyUploadException _
instance showEmptyUploadException :: Show EmptyUploadException where
  show = genericShow
instance decodeEmptyUploadException :: Decode EmptyUploadException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEmptyUploadException :: Encode EmptyUploadException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EmptyUploadException from required parameters
newEmptyUploadException :: EmptyUploadException
newEmptyUploadException  = EmptyUploadException { "message": (NullOrUndefined Nothing) }

-- | Constructs EmptyUploadException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEmptyUploadException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> EmptyUploadException
newEmptyUploadException'  customize = (EmptyUploadException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype EvaluationTimestamp = EvaluationTimestamp Types.Timestamp
derive instance newtypeEvaluationTimestamp :: Newtype EvaluationTimestamp _
derive instance repGenericEvaluationTimestamp :: Generic EvaluationTimestamp _
instance showEvaluationTimestamp :: Show EvaluationTimestamp where
  show = genericShow
instance decodeEvaluationTimestamp :: Decode EvaluationTimestamp where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEvaluationTimestamp :: Encode EvaluationTimestamp where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ExceptionMessage = ExceptionMessage String
derive instance newtypeExceptionMessage :: Newtype ExceptionMessage _
derive instance repGenericExceptionMessage :: Generic ExceptionMessage _
instance showExceptionMessage :: Show ExceptionMessage where
  show = genericShow
instance decodeExceptionMessage :: Decode ExceptionMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExceptionMessage :: Encode ExceptionMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ExpirationTimestamp = ExpirationTimestamp Types.Timestamp
derive instance newtypeExpirationTimestamp :: Newtype ExpirationTimestamp _
derive instance repGenericExpirationTimestamp :: Generic ExpirationTimestamp _
instance showExpirationTimestamp :: Show ExpirationTimestamp where
  show = genericShow
instance decodeExpirationTimestamp :: Decode ExpirationTimestamp where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExpirationTimestamp :: Encode ExpirationTimestamp where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ForceFlag = ForceFlag Boolean
derive instance newtypeForceFlag :: Newtype ForceFlag _
derive instance repGenericForceFlag :: Generic ForceFlag _
instance showForceFlag :: Show ForceFlag where
  show = genericShow
instance decodeForceFlag :: Decode ForceFlag where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeForceFlag :: Encode ForceFlag where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetAuthorizationTokenRegistryIdList = GetAuthorizationTokenRegistryIdList (Array RegistryId)
derive instance newtypeGetAuthorizationTokenRegistryIdList :: Newtype GetAuthorizationTokenRegistryIdList _
derive instance repGenericGetAuthorizationTokenRegistryIdList :: Generic GetAuthorizationTokenRegistryIdList _
instance showGetAuthorizationTokenRegistryIdList :: Show GetAuthorizationTokenRegistryIdList where
  show = genericShow
instance decodeGetAuthorizationTokenRegistryIdList :: Decode GetAuthorizationTokenRegistryIdList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAuthorizationTokenRegistryIdList :: Encode GetAuthorizationTokenRegistryIdList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetAuthorizationTokenRequest = GetAuthorizationTokenRequest 
  { "registryIds" :: NullOrUndefined.NullOrUndefined (GetAuthorizationTokenRegistryIdList)
  }
derive instance newtypeGetAuthorizationTokenRequest :: Newtype GetAuthorizationTokenRequest _
derive instance repGenericGetAuthorizationTokenRequest :: Generic GetAuthorizationTokenRequest _
instance showGetAuthorizationTokenRequest :: Show GetAuthorizationTokenRequest where
  show = genericShow
instance decodeGetAuthorizationTokenRequest :: Decode GetAuthorizationTokenRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAuthorizationTokenRequest :: Encode GetAuthorizationTokenRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAuthorizationTokenRequest from required parameters
newGetAuthorizationTokenRequest :: GetAuthorizationTokenRequest
newGetAuthorizationTokenRequest  = GetAuthorizationTokenRequest { "registryIds": (NullOrUndefined Nothing) }

-- | Constructs GetAuthorizationTokenRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAuthorizationTokenRequest' :: ( { "registryIds" :: NullOrUndefined.NullOrUndefined (GetAuthorizationTokenRegistryIdList) } -> {"registryIds" :: NullOrUndefined.NullOrUndefined (GetAuthorizationTokenRegistryIdList) } ) -> GetAuthorizationTokenRequest
newGetAuthorizationTokenRequest'  customize = (GetAuthorizationTokenRequest <<< customize) { "registryIds": (NullOrUndefined Nothing) }



newtype GetAuthorizationTokenResponse = GetAuthorizationTokenResponse 
  { "authorizationData" :: NullOrUndefined.NullOrUndefined (AuthorizationDataList)
  }
derive instance newtypeGetAuthorizationTokenResponse :: Newtype GetAuthorizationTokenResponse _
derive instance repGenericGetAuthorizationTokenResponse :: Generic GetAuthorizationTokenResponse _
instance showGetAuthorizationTokenResponse :: Show GetAuthorizationTokenResponse where
  show = genericShow
instance decodeGetAuthorizationTokenResponse :: Decode GetAuthorizationTokenResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAuthorizationTokenResponse :: Encode GetAuthorizationTokenResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAuthorizationTokenResponse from required parameters
newGetAuthorizationTokenResponse :: GetAuthorizationTokenResponse
newGetAuthorizationTokenResponse  = GetAuthorizationTokenResponse { "authorizationData": (NullOrUndefined Nothing) }

-- | Constructs GetAuthorizationTokenResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAuthorizationTokenResponse' :: ( { "authorizationData" :: NullOrUndefined.NullOrUndefined (AuthorizationDataList) } -> {"authorizationData" :: NullOrUndefined.NullOrUndefined (AuthorizationDataList) } ) -> GetAuthorizationTokenResponse
newGetAuthorizationTokenResponse'  customize = (GetAuthorizationTokenResponse <<< customize) { "authorizationData": (NullOrUndefined Nothing) }



newtype GetDownloadUrlForLayerRequest = GetDownloadUrlForLayerRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "layerDigest" :: (LayerDigest)
  }
derive instance newtypeGetDownloadUrlForLayerRequest :: Newtype GetDownloadUrlForLayerRequest _
derive instance repGenericGetDownloadUrlForLayerRequest :: Generic GetDownloadUrlForLayerRequest _
instance showGetDownloadUrlForLayerRequest :: Show GetDownloadUrlForLayerRequest where
  show = genericShow
instance decodeGetDownloadUrlForLayerRequest :: Decode GetDownloadUrlForLayerRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetDownloadUrlForLayerRequest :: Encode GetDownloadUrlForLayerRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetDownloadUrlForLayerRequest from required parameters
newGetDownloadUrlForLayerRequest :: LayerDigest -> RepositoryName -> GetDownloadUrlForLayerRequest
newGetDownloadUrlForLayerRequest _layerDigest _repositoryName = GetDownloadUrlForLayerRequest { "layerDigest": _layerDigest, "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }

-- | Constructs GetDownloadUrlForLayerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDownloadUrlForLayerRequest' :: LayerDigest -> RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "layerDigest" :: (LayerDigest) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "layerDigest" :: (LayerDigest) } ) -> GetDownloadUrlForLayerRequest
newGetDownloadUrlForLayerRequest' _layerDigest _repositoryName customize = (GetDownloadUrlForLayerRequest <<< customize) { "layerDigest": _layerDigest, "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }



newtype GetDownloadUrlForLayerResponse = GetDownloadUrlForLayerResponse 
  { "downloadUrl" :: NullOrUndefined.NullOrUndefined (Url)
  , "layerDigest" :: NullOrUndefined.NullOrUndefined (LayerDigest)
  }
derive instance newtypeGetDownloadUrlForLayerResponse :: Newtype GetDownloadUrlForLayerResponse _
derive instance repGenericGetDownloadUrlForLayerResponse :: Generic GetDownloadUrlForLayerResponse _
instance showGetDownloadUrlForLayerResponse :: Show GetDownloadUrlForLayerResponse where
  show = genericShow
instance decodeGetDownloadUrlForLayerResponse :: Decode GetDownloadUrlForLayerResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetDownloadUrlForLayerResponse :: Encode GetDownloadUrlForLayerResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetDownloadUrlForLayerResponse from required parameters
newGetDownloadUrlForLayerResponse :: GetDownloadUrlForLayerResponse
newGetDownloadUrlForLayerResponse  = GetDownloadUrlForLayerResponse { "downloadUrl": (NullOrUndefined Nothing), "layerDigest": (NullOrUndefined Nothing) }

-- | Constructs GetDownloadUrlForLayerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDownloadUrlForLayerResponse' :: ( { "downloadUrl" :: NullOrUndefined.NullOrUndefined (Url) , "layerDigest" :: NullOrUndefined.NullOrUndefined (LayerDigest) } -> {"downloadUrl" :: NullOrUndefined.NullOrUndefined (Url) , "layerDigest" :: NullOrUndefined.NullOrUndefined (LayerDigest) } ) -> GetDownloadUrlForLayerResponse
newGetDownloadUrlForLayerResponse'  customize = (GetDownloadUrlForLayerResponse <<< customize) { "downloadUrl": (NullOrUndefined Nothing), "layerDigest": (NullOrUndefined Nothing) }



newtype GetLifecyclePolicyPreviewRequest = GetLifecyclePolicyPreviewRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "filter" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewFilter)
  }
derive instance newtypeGetLifecyclePolicyPreviewRequest :: Newtype GetLifecyclePolicyPreviewRequest _
derive instance repGenericGetLifecyclePolicyPreviewRequest :: Generic GetLifecyclePolicyPreviewRequest _
instance showGetLifecyclePolicyPreviewRequest :: Show GetLifecyclePolicyPreviewRequest where
  show = genericShow
instance decodeGetLifecyclePolicyPreviewRequest :: Decode GetLifecyclePolicyPreviewRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetLifecyclePolicyPreviewRequest :: Encode GetLifecyclePolicyPreviewRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetLifecyclePolicyPreviewRequest from required parameters
newGetLifecyclePolicyPreviewRequest :: RepositoryName -> GetLifecyclePolicyPreviewRequest
newGetLifecyclePolicyPreviewRequest _repositoryName = GetLifecyclePolicyPreviewRequest { "repositoryName": _repositoryName, "filter": (NullOrUndefined Nothing), "imageIds": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }

-- | Constructs GetLifecyclePolicyPreviewRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLifecyclePolicyPreviewRequest' :: RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "filter" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewFilter) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "filter" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewFilter) } ) -> GetLifecyclePolicyPreviewRequest
newGetLifecyclePolicyPreviewRequest' _repositoryName customize = (GetLifecyclePolicyPreviewRequest <<< customize) { "repositoryName": _repositoryName, "filter": (NullOrUndefined Nothing), "imageIds": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }



newtype GetLifecyclePolicyPreviewResponse = GetLifecyclePolicyPreviewResponse 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText)
  , "status" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewStatus)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "previewResults" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewResultList)
  , "summary" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewSummary)
  }
derive instance newtypeGetLifecyclePolicyPreviewResponse :: Newtype GetLifecyclePolicyPreviewResponse _
derive instance repGenericGetLifecyclePolicyPreviewResponse :: Generic GetLifecyclePolicyPreviewResponse _
instance showGetLifecyclePolicyPreviewResponse :: Show GetLifecyclePolicyPreviewResponse where
  show = genericShow
instance decodeGetLifecyclePolicyPreviewResponse :: Decode GetLifecyclePolicyPreviewResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetLifecyclePolicyPreviewResponse :: Encode GetLifecyclePolicyPreviewResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetLifecyclePolicyPreviewResponse from required parameters
newGetLifecyclePolicyPreviewResponse :: GetLifecyclePolicyPreviewResponse
newGetLifecyclePolicyPreviewResponse  = GetLifecyclePolicyPreviewResponse { "lifecyclePolicyText": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "previewResults": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "summary": (NullOrUndefined Nothing) }

-- | Constructs GetLifecyclePolicyPreviewResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLifecyclePolicyPreviewResponse' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) , "status" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewStatus) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "previewResults" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewResultList) , "summary" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewSummary) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) , "status" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewStatus) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "previewResults" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewResultList) , "summary" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewSummary) } ) -> GetLifecyclePolicyPreviewResponse
newGetLifecyclePolicyPreviewResponse'  customize = (GetLifecyclePolicyPreviewResponse <<< customize) { "lifecyclePolicyText": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "previewResults": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "summary": (NullOrUndefined Nothing) }



newtype GetLifecyclePolicyRequest = GetLifecyclePolicyRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  }
derive instance newtypeGetLifecyclePolicyRequest :: Newtype GetLifecyclePolicyRequest _
derive instance repGenericGetLifecyclePolicyRequest :: Generic GetLifecyclePolicyRequest _
instance showGetLifecyclePolicyRequest :: Show GetLifecyclePolicyRequest where
  show = genericShow
instance decodeGetLifecyclePolicyRequest :: Decode GetLifecyclePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetLifecyclePolicyRequest :: Encode GetLifecyclePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetLifecyclePolicyRequest from required parameters
newGetLifecyclePolicyRequest :: RepositoryName -> GetLifecyclePolicyRequest
newGetLifecyclePolicyRequest _repositoryName = GetLifecyclePolicyRequest { "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }

-- | Constructs GetLifecyclePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLifecyclePolicyRequest' :: RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) } ) -> GetLifecyclePolicyRequest
newGetLifecyclePolicyRequest' _repositoryName customize = (GetLifecyclePolicyRequest <<< customize) { "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }



newtype GetLifecyclePolicyResponse = GetLifecyclePolicyResponse 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText)
  , "lastEvaluatedAt" :: NullOrUndefined.NullOrUndefined (EvaluationTimestamp)
  }
derive instance newtypeGetLifecyclePolicyResponse :: Newtype GetLifecyclePolicyResponse _
derive instance repGenericGetLifecyclePolicyResponse :: Generic GetLifecyclePolicyResponse _
instance showGetLifecyclePolicyResponse :: Show GetLifecyclePolicyResponse where
  show = genericShow
instance decodeGetLifecyclePolicyResponse :: Decode GetLifecyclePolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetLifecyclePolicyResponse :: Encode GetLifecyclePolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetLifecyclePolicyResponse from required parameters
newGetLifecyclePolicyResponse :: GetLifecyclePolicyResponse
newGetLifecyclePolicyResponse  = GetLifecyclePolicyResponse { "lastEvaluatedAt": (NullOrUndefined Nothing), "lifecyclePolicyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }

-- | Constructs GetLifecyclePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLifecyclePolicyResponse' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) , "lastEvaluatedAt" :: NullOrUndefined.NullOrUndefined (EvaluationTimestamp) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) , "lastEvaluatedAt" :: NullOrUndefined.NullOrUndefined (EvaluationTimestamp) } ) -> GetLifecyclePolicyResponse
newGetLifecyclePolicyResponse'  customize = (GetLifecyclePolicyResponse <<< customize) { "lastEvaluatedAt": (NullOrUndefined Nothing), "lifecyclePolicyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }



newtype GetRepositoryPolicyRequest = GetRepositoryPolicyRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  }
derive instance newtypeGetRepositoryPolicyRequest :: Newtype GetRepositoryPolicyRequest _
derive instance repGenericGetRepositoryPolicyRequest :: Generic GetRepositoryPolicyRequest _
instance showGetRepositoryPolicyRequest :: Show GetRepositoryPolicyRequest where
  show = genericShow
instance decodeGetRepositoryPolicyRequest :: Decode GetRepositoryPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetRepositoryPolicyRequest :: Encode GetRepositoryPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetRepositoryPolicyRequest from required parameters
newGetRepositoryPolicyRequest :: RepositoryName -> GetRepositoryPolicyRequest
newGetRepositoryPolicyRequest _repositoryName = GetRepositoryPolicyRequest { "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }

-- | Constructs GetRepositoryPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRepositoryPolicyRequest' :: RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) } ) -> GetRepositoryPolicyRequest
newGetRepositoryPolicyRequest' _repositoryName customize = (GetRepositoryPolicyRequest <<< customize) { "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }



newtype GetRepositoryPolicyResponse = GetRepositoryPolicyResponse 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "policyText" :: NullOrUndefined.NullOrUndefined (RepositoryPolicyText)
  }
derive instance newtypeGetRepositoryPolicyResponse :: Newtype GetRepositoryPolicyResponse _
derive instance repGenericGetRepositoryPolicyResponse :: Generic GetRepositoryPolicyResponse _
instance showGetRepositoryPolicyResponse :: Show GetRepositoryPolicyResponse where
  show = genericShow
instance decodeGetRepositoryPolicyResponse :: Decode GetRepositoryPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetRepositoryPolicyResponse :: Encode GetRepositoryPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetRepositoryPolicyResponse from required parameters
newGetRepositoryPolicyResponse :: GetRepositoryPolicyResponse
newGetRepositoryPolicyResponse  = GetRepositoryPolicyResponse { "policyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }

-- | Constructs GetRepositoryPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRepositoryPolicyResponse' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "policyText" :: NullOrUndefined.NullOrUndefined (RepositoryPolicyText) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "policyText" :: NullOrUndefined.NullOrUndefined (RepositoryPolicyText) } ) -> GetRepositoryPolicyResponse
newGetRepositoryPolicyResponse'  customize = (GetRepositoryPolicyResponse <<< customize) { "policyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }



-- | <p>An object representing an Amazon ECR image.</p>
newtype Image = Image 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "imageId" :: NullOrUndefined.NullOrUndefined (ImageIdentifier)
  , "imageManifest" :: NullOrUndefined.NullOrUndefined (ImageManifest)
  }
derive instance newtypeImage :: Newtype Image _
derive instance repGenericImage :: Generic Image _
instance showImage :: Show Image where
  show = genericShow
instance decodeImage :: Decode Image where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImage :: Encode Image where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Image from required parameters
newImage :: Image
newImage  = Image { "imageId": (NullOrUndefined Nothing), "imageManifest": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }

-- | Constructs Image's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImage' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "imageId" :: NullOrUndefined.NullOrUndefined (ImageIdentifier) , "imageManifest" :: NullOrUndefined.NullOrUndefined (ImageManifest) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "imageId" :: NullOrUndefined.NullOrUndefined (ImageIdentifier) , "imageManifest" :: NullOrUndefined.NullOrUndefined (ImageManifest) } ) -> Image
newImage'  customize = (Image <<< customize) { "imageId": (NullOrUndefined Nothing), "imageManifest": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }



newtype ImageActionType = ImageActionType String
derive instance newtypeImageActionType :: Newtype ImageActionType _
derive instance repGenericImageActionType :: Generic ImageActionType _
instance showImageActionType :: Show ImageActionType where
  show = genericShow
instance decodeImageActionType :: Decode ImageActionType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageActionType :: Encode ImageActionType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified image has already been pushed, and there were no changes to the manifest or image tag after the last push.</p>
newtype ImageAlreadyExistsException = ImageAlreadyExistsException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeImageAlreadyExistsException :: Newtype ImageAlreadyExistsException _
derive instance repGenericImageAlreadyExistsException :: Generic ImageAlreadyExistsException _
instance showImageAlreadyExistsException :: Show ImageAlreadyExistsException where
  show = genericShow
instance decodeImageAlreadyExistsException :: Decode ImageAlreadyExistsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageAlreadyExistsException :: Encode ImageAlreadyExistsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ImageAlreadyExistsException from required parameters
newImageAlreadyExistsException :: ImageAlreadyExistsException
newImageAlreadyExistsException  = ImageAlreadyExistsException { "message": (NullOrUndefined Nothing) }

-- | Constructs ImageAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageAlreadyExistsException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> ImageAlreadyExistsException
newImageAlreadyExistsException'  customize = (ImageAlreadyExistsException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ImageCount = ImageCount Int
derive instance newtypeImageCount :: Newtype ImageCount _
derive instance repGenericImageCount :: Generic ImageCount _
instance showImageCount :: Show ImageCount where
  show = genericShow
instance decodeImageCount :: Decode ImageCount where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageCount :: Encode ImageCount where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object that describes an image returned by a <a>DescribeImages</a> operation.</p>
newtype ImageDetail = ImageDetail 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "imageDigest" :: NullOrUndefined.NullOrUndefined (ImageDigest)
  , "imageTags" :: NullOrUndefined.NullOrUndefined (ImageTagList)
  , "imageSizeInBytes" :: NullOrUndefined.NullOrUndefined (ImageSizeInBytes)
  , "imagePushedAt" :: NullOrUndefined.NullOrUndefined (PushTimestamp)
  }
derive instance newtypeImageDetail :: Newtype ImageDetail _
derive instance repGenericImageDetail :: Generic ImageDetail _
instance showImageDetail :: Show ImageDetail where
  show = genericShow
instance decodeImageDetail :: Decode ImageDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageDetail :: Encode ImageDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ImageDetail from required parameters
newImageDetail :: ImageDetail
newImageDetail  = ImageDetail { "imageDigest": (NullOrUndefined Nothing), "imagePushedAt": (NullOrUndefined Nothing), "imageSizeInBytes": (NullOrUndefined Nothing), "imageTags": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }

-- | Constructs ImageDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageDetail' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "imageDigest" :: NullOrUndefined.NullOrUndefined (ImageDigest) , "imageTags" :: NullOrUndefined.NullOrUndefined (ImageTagList) , "imageSizeInBytes" :: NullOrUndefined.NullOrUndefined (ImageSizeInBytes) , "imagePushedAt" :: NullOrUndefined.NullOrUndefined (PushTimestamp) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "imageDigest" :: NullOrUndefined.NullOrUndefined (ImageDigest) , "imageTags" :: NullOrUndefined.NullOrUndefined (ImageTagList) , "imageSizeInBytes" :: NullOrUndefined.NullOrUndefined (ImageSizeInBytes) , "imagePushedAt" :: NullOrUndefined.NullOrUndefined (PushTimestamp) } ) -> ImageDetail
newImageDetail'  customize = (ImageDetail <<< customize) { "imageDigest": (NullOrUndefined Nothing), "imagePushedAt": (NullOrUndefined Nothing), "imageSizeInBytes": (NullOrUndefined Nothing), "imageTags": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }



newtype ImageDetailList = ImageDetailList (Array ImageDetail)
derive instance newtypeImageDetailList :: Newtype ImageDetailList _
derive instance repGenericImageDetailList :: Generic ImageDetailList _
instance showImageDetailList :: Show ImageDetailList where
  show = genericShow
instance decodeImageDetailList :: Decode ImageDetailList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageDetailList :: Encode ImageDetailList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ImageDigest = ImageDigest String
derive instance newtypeImageDigest :: Newtype ImageDigest _
derive instance repGenericImageDigest :: Generic ImageDigest _
instance showImageDigest :: Show ImageDigest where
  show = genericShow
instance decodeImageDigest :: Decode ImageDigest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageDigest :: Encode ImageDigest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing an Amazon ECR image failure.</p>
newtype ImageFailure = ImageFailure 
  { "imageId" :: NullOrUndefined.NullOrUndefined (ImageIdentifier)
  , "failureCode" :: NullOrUndefined.NullOrUndefined (ImageFailureCode)
  , "failureReason" :: NullOrUndefined.NullOrUndefined (ImageFailureReason)
  }
derive instance newtypeImageFailure :: Newtype ImageFailure _
derive instance repGenericImageFailure :: Generic ImageFailure _
instance showImageFailure :: Show ImageFailure where
  show = genericShow
instance decodeImageFailure :: Decode ImageFailure where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageFailure :: Encode ImageFailure where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ImageFailure from required parameters
newImageFailure :: ImageFailure
newImageFailure  = ImageFailure { "failureCode": (NullOrUndefined Nothing), "failureReason": (NullOrUndefined Nothing), "imageId": (NullOrUndefined Nothing) }

-- | Constructs ImageFailure's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageFailure' :: ( { "imageId" :: NullOrUndefined.NullOrUndefined (ImageIdentifier) , "failureCode" :: NullOrUndefined.NullOrUndefined (ImageFailureCode) , "failureReason" :: NullOrUndefined.NullOrUndefined (ImageFailureReason) } -> {"imageId" :: NullOrUndefined.NullOrUndefined (ImageIdentifier) , "failureCode" :: NullOrUndefined.NullOrUndefined (ImageFailureCode) , "failureReason" :: NullOrUndefined.NullOrUndefined (ImageFailureReason) } ) -> ImageFailure
newImageFailure'  customize = (ImageFailure <<< customize) { "failureCode": (NullOrUndefined Nothing), "failureReason": (NullOrUndefined Nothing), "imageId": (NullOrUndefined Nothing) }



newtype ImageFailureCode = ImageFailureCode String
derive instance newtypeImageFailureCode :: Newtype ImageFailureCode _
derive instance repGenericImageFailureCode :: Generic ImageFailureCode _
instance showImageFailureCode :: Show ImageFailureCode where
  show = genericShow
instance decodeImageFailureCode :: Decode ImageFailureCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageFailureCode :: Encode ImageFailureCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ImageFailureList = ImageFailureList (Array ImageFailure)
derive instance newtypeImageFailureList :: Newtype ImageFailureList _
derive instance repGenericImageFailureList :: Generic ImageFailureList _
instance showImageFailureList :: Show ImageFailureList where
  show = genericShow
instance decodeImageFailureList :: Decode ImageFailureList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageFailureList :: Encode ImageFailureList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ImageFailureReason = ImageFailureReason String
derive instance newtypeImageFailureReason :: Newtype ImageFailureReason _
derive instance repGenericImageFailureReason :: Generic ImageFailureReason _
instance showImageFailureReason :: Show ImageFailureReason where
  show = genericShow
instance decodeImageFailureReason :: Decode ImageFailureReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageFailureReason :: Encode ImageFailureReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object with identifying information for an Amazon ECR image.</p>
newtype ImageIdentifier = ImageIdentifier 
  { "imageDigest" :: NullOrUndefined.NullOrUndefined (ImageDigest)
  , "imageTag" :: NullOrUndefined.NullOrUndefined (ImageTag)
  }
derive instance newtypeImageIdentifier :: Newtype ImageIdentifier _
derive instance repGenericImageIdentifier :: Generic ImageIdentifier _
instance showImageIdentifier :: Show ImageIdentifier where
  show = genericShow
instance decodeImageIdentifier :: Decode ImageIdentifier where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageIdentifier :: Encode ImageIdentifier where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ImageIdentifier from required parameters
newImageIdentifier :: ImageIdentifier
newImageIdentifier  = ImageIdentifier { "imageDigest": (NullOrUndefined Nothing), "imageTag": (NullOrUndefined Nothing) }

-- | Constructs ImageIdentifier's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageIdentifier' :: ( { "imageDigest" :: NullOrUndefined.NullOrUndefined (ImageDigest) , "imageTag" :: NullOrUndefined.NullOrUndefined (ImageTag) } -> {"imageDigest" :: NullOrUndefined.NullOrUndefined (ImageDigest) , "imageTag" :: NullOrUndefined.NullOrUndefined (ImageTag) } ) -> ImageIdentifier
newImageIdentifier'  customize = (ImageIdentifier <<< customize) { "imageDigest": (NullOrUndefined Nothing), "imageTag": (NullOrUndefined Nothing) }



newtype ImageIdentifierList = ImageIdentifierList (Array ImageIdentifier)
derive instance newtypeImageIdentifierList :: Newtype ImageIdentifierList _
derive instance repGenericImageIdentifierList :: Generic ImageIdentifierList _
instance showImageIdentifierList :: Show ImageIdentifierList where
  show = genericShow
instance decodeImageIdentifierList :: Decode ImageIdentifierList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageIdentifierList :: Encode ImageIdentifierList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ImageList = ImageList (Array Image)
derive instance newtypeImageList :: Newtype ImageList _
derive instance repGenericImageList :: Generic ImageList _
instance showImageList :: Show ImageList where
  show = genericShow
instance decodeImageList :: Decode ImageList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageList :: Encode ImageList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ImageManifest = ImageManifest String
derive instance newtypeImageManifest :: Newtype ImageManifest _
derive instance repGenericImageManifest :: Generic ImageManifest _
instance showImageManifest :: Show ImageManifest where
  show = genericShow
instance decodeImageManifest :: Decode ImageManifest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageManifest :: Encode ImageManifest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The image requested does not exist in the specified repository.</p>
newtype ImageNotFoundException = ImageNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeImageNotFoundException :: Newtype ImageNotFoundException _
derive instance repGenericImageNotFoundException :: Generic ImageNotFoundException _
instance showImageNotFoundException :: Show ImageNotFoundException where
  show = genericShow
instance decodeImageNotFoundException :: Decode ImageNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageNotFoundException :: Encode ImageNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ImageNotFoundException from required parameters
newImageNotFoundException :: ImageNotFoundException
newImageNotFoundException  = ImageNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs ImageNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> ImageNotFoundException
newImageNotFoundException'  customize = (ImageNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ImageSizeInBytes = ImageSizeInBytes Number
derive instance newtypeImageSizeInBytes :: Newtype ImageSizeInBytes _
derive instance repGenericImageSizeInBytes :: Generic ImageSizeInBytes _
instance showImageSizeInBytes :: Show ImageSizeInBytes where
  show = genericShow
instance decodeImageSizeInBytes :: Decode ImageSizeInBytes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageSizeInBytes :: Encode ImageSizeInBytes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ImageTag = ImageTag String
derive instance newtypeImageTag :: Newtype ImageTag _
derive instance repGenericImageTag :: Generic ImageTag _
instance showImageTag :: Show ImageTag where
  show = genericShow
instance decodeImageTag :: Decode ImageTag where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageTag :: Encode ImageTag where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ImageTagList = ImageTagList (Array ImageTag)
derive instance newtypeImageTagList :: Newtype ImageTagList _
derive instance repGenericImageTagList :: Generic ImageTagList _
instance showImageTagList :: Show ImageTagList where
  show = genericShow
instance decodeImageTagList :: Decode ImageTagList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImageTagList :: Encode ImageTagList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InitiateLayerUploadRequest = InitiateLayerUploadRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  }
derive instance newtypeInitiateLayerUploadRequest :: Newtype InitiateLayerUploadRequest _
derive instance repGenericInitiateLayerUploadRequest :: Generic InitiateLayerUploadRequest _
instance showInitiateLayerUploadRequest :: Show InitiateLayerUploadRequest where
  show = genericShow
instance decodeInitiateLayerUploadRequest :: Decode InitiateLayerUploadRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInitiateLayerUploadRequest :: Encode InitiateLayerUploadRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InitiateLayerUploadRequest from required parameters
newInitiateLayerUploadRequest :: RepositoryName -> InitiateLayerUploadRequest
newInitiateLayerUploadRequest _repositoryName = InitiateLayerUploadRequest { "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }

-- | Constructs InitiateLayerUploadRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateLayerUploadRequest' :: RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) } ) -> InitiateLayerUploadRequest
newInitiateLayerUploadRequest' _repositoryName customize = (InitiateLayerUploadRequest <<< customize) { "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }



newtype InitiateLayerUploadResponse = InitiateLayerUploadResponse 
  { "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId)
  , "partSize" :: NullOrUndefined.NullOrUndefined (PartSize)
  }
derive instance newtypeInitiateLayerUploadResponse :: Newtype InitiateLayerUploadResponse _
derive instance repGenericInitiateLayerUploadResponse :: Generic InitiateLayerUploadResponse _
instance showInitiateLayerUploadResponse :: Show InitiateLayerUploadResponse where
  show = genericShow
instance decodeInitiateLayerUploadResponse :: Decode InitiateLayerUploadResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInitiateLayerUploadResponse :: Encode InitiateLayerUploadResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InitiateLayerUploadResponse from required parameters
newInitiateLayerUploadResponse :: InitiateLayerUploadResponse
newInitiateLayerUploadResponse  = InitiateLayerUploadResponse { "partSize": (NullOrUndefined Nothing), "uploadId": (NullOrUndefined Nothing) }

-- | Constructs InitiateLayerUploadResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateLayerUploadResponse' :: ( { "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId) , "partSize" :: NullOrUndefined.NullOrUndefined (PartSize) } -> {"uploadId" :: NullOrUndefined.NullOrUndefined (UploadId) , "partSize" :: NullOrUndefined.NullOrUndefined (PartSize) } ) -> InitiateLayerUploadResponse
newInitiateLayerUploadResponse'  customize = (InitiateLayerUploadResponse <<< customize) { "partSize": (NullOrUndefined Nothing), "uploadId": (NullOrUndefined Nothing) }



-- | <p>The layer digest calculation performed by Amazon ECR upon receipt of the image layer does not match the digest specified.</p>
newtype InvalidLayerException = InvalidLayerException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeInvalidLayerException :: Newtype InvalidLayerException _
derive instance repGenericInvalidLayerException :: Generic InvalidLayerException _
instance showInvalidLayerException :: Show InvalidLayerException where
  show = genericShow
instance decodeInvalidLayerException :: Decode InvalidLayerException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidLayerException :: Encode InvalidLayerException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidLayerException from required parameters
newInvalidLayerException :: InvalidLayerException
newInvalidLayerException  = InvalidLayerException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidLayerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidLayerException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> InvalidLayerException
newInvalidLayerException'  customize = (InvalidLayerException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The layer part size is not valid, or the first byte specified is not consecutive to the last byte of a previous layer part upload.</p>
newtype InvalidLayerPartException = InvalidLayerPartException 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId)
  , "lastValidByteReceived" :: NullOrUndefined.NullOrUndefined (PartSize)
  , "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeInvalidLayerPartException :: Newtype InvalidLayerPartException _
derive instance repGenericInvalidLayerPartException :: Generic InvalidLayerPartException _
instance showInvalidLayerPartException :: Show InvalidLayerPartException where
  show = genericShow
instance decodeInvalidLayerPartException :: Decode InvalidLayerPartException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidLayerPartException :: Encode InvalidLayerPartException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidLayerPartException from required parameters
newInvalidLayerPartException :: InvalidLayerPartException
newInvalidLayerPartException  = InvalidLayerPartException { "lastValidByteReceived": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "uploadId": (NullOrUndefined Nothing) }

-- | Constructs InvalidLayerPartException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidLayerPartException' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId) , "lastValidByteReceived" :: NullOrUndefined.NullOrUndefined (PartSize) , "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId) , "lastValidByteReceived" :: NullOrUndefined.NullOrUndefined (PartSize) , "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> InvalidLayerPartException
newInvalidLayerPartException'  customize = (InvalidLayerPartException <<< customize) { "lastValidByteReceived": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "uploadId": (NullOrUndefined Nothing) }



-- | <p>The specified parameter is invalid. Review the available parameters for the API request.</p>
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where
  show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidParameterException :: Encode InvalidParameterException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>An object representing an Amazon ECR image layer.</p>
newtype Layer = Layer 
  { "layerDigest" :: NullOrUndefined.NullOrUndefined (LayerDigest)
  , "layerAvailability" :: NullOrUndefined.NullOrUndefined (LayerAvailability)
  , "layerSize" :: NullOrUndefined.NullOrUndefined (LayerSizeInBytes)
  , "mediaType" :: NullOrUndefined.NullOrUndefined (MediaType)
  }
derive instance newtypeLayer :: Newtype Layer _
derive instance repGenericLayer :: Generic Layer _
instance showLayer :: Show Layer where
  show = genericShow
instance decodeLayer :: Decode Layer where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayer :: Encode Layer where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Layer from required parameters
newLayer :: Layer
newLayer  = Layer { "layerAvailability": (NullOrUndefined Nothing), "layerDigest": (NullOrUndefined Nothing), "layerSize": (NullOrUndefined Nothing), "mediaType": (NullOrUndefined Nothing) }

-- | Constructs Layer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayer' :: ( { "layerDigest" :: NullOrUndefined.NullOrUndefined (LayerDigest) , "layerAvailability" :: NullOrUndefined.NullOrUndefined (LayerAvailability) , "layerSize" :: NullOrUndefined.NullOrUndefined (LayerSizeInBytes) , "mediaType" :: NullOrUndefined.NullOrUndefined (MediaType) } -> {"layerDigest" :: NullOrUndefined.NullOrUndefined (LayerDigest) , "layerAvailability" :: NullOrUndefined.NullOrUndefined (LayerAvailability) , "layerSize" :: NullOrUndefined.NullOrUndefined (LayerSizeInBytes) , "mediaType" :: NullOrUndefined.NullOrUndefined (MediaType) } ) -> Layer
newLayer'  customize = (Layer <<< customize) { "layerAvailability": (NullOrUndefined Nothing), "layerDigest": (NullOrUndefined Nothing), "layerSize": (NullOrUndefined Nothing), "mediaType": (NullOrUndefined Nothing) }



-- | <p>The image layer already exists in the associated repository.</p>
newtype LayerAlreadyExistsException = LayerAlreadyExistsException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeLayerAlreadyExistsException :: Newtype LayerAlreadyExistsException _
derive instance repGenericLayerAlreadyExistsException :: Generic LayerAlreadyExistsException _
instance showLayerAlreadyExistsException :: Show LayerAlreadyExistsException where
  show = genericShow
instance decodeLayerAlreadyExistsException :: Decode LayerAlreadyExistsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerAlreadyExistsException :: Encode LayerAlreadyExistsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LayerAlreadyExistsException from required parameters
newLayerAlreadyExistsException :: LayerAlreadyExistsException
newLayerAlreadyExistsException  = LayerAlreadyExistsException { "message": (NullOrUndefined Nothing) }

-- | Constructs LayerAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayerAlreadyExistsException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> LayerAlreadyExistsException
newLayerAlreadyExistsException'  customize = (LayerAlreadyExistsException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype LayerAvailability = LayerAvailability String
derive instance newtypeLayerAvailability :: Newtype LayerAvailability _
derive instance repGenericLayerAvailability :: Generic LayerAvailability _
instance showLayerAvailability :: Show LayerAvailability where
  show = genericShow
instance decodeLayerAvailability :: Decode LayerAvailability where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerAvailability :: Encode LayerAvailability where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LayerDigest = LayerDigest String
derive instance newtypeLayerDigest :: Newtype LayerDigest _
derive instance repGenericLayerDigest :: Generic LayerDigest _
instance showLayerDigest :: Show LayerDigest where
  show = genericShow
instance decodeLayerDigest :: Decode LayerDigest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerDigest :: Encode LayerDigest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LayerDigestList = LayerDigestList (Array LayerDigest)
derive instance newtypeLayerDigestList :: Newtype LayerDigestList _
derive instance repGenericLayerDigestList :: Generic LayerDigestList _
instance showLayerDigestList :: Show LayerDigestList where
  show = genericShow
instance decodeLayerDigestList :: Decode LayerDigestList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerDigestList :: Encode LayerDigestList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing an Amazon ECR image layer failure.</p>
newtype LayerFailure = LayerFailure 
  { "layerDigest" :: NullOrUndefined.NullOrUndefined (BatchedOperationLayerDigest)
  , "failureCode" :: NullOrUndefined.NullOrUndefined (LayerFailureCode)
  , "failureReason" :: NullOrUndefined.NullOrUndefined (LayerFailureReason)
  }
derive instance newtypeLayerFailure :: Newtype LayerFailure _
derive instance repGenericLayerFailure :: Generic LayerFailure _
instance showLayerFailure :: Show LayerFailure where
  show = genericShow
instance decodeLayerFailure :: Decode LayerFailure where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerFailure :: Encode LayerFailure where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LayerFailure from required parameters
newLayerFailure :: LayerFailure
newLayerFailure  = LayerFailure { "failureCode": (NullOrUndefined Nothing), "failureReason": (NullOrUndefined Nothing), "layerDigest": (NullOrUndefined Nothing) }

-- | Constructs LayerFailure's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayerFailure' :: ( { "layerDigest" :: NullOrUndefined.NullOrUndefined (BatchedOperationLayerDigest) , "failureCode" :: NullOrUndefined.NullOrUndefined (LayerFailureCode) , "failureReason" :: NullOrUndefined.NullOrUndefined (LayerFailureReason) } -> {"layerDigest" :: NullOrUndefined.NullOrUndefined (BatchedOperationLayerDigest) , "failureCode" :: NullOrUndefined.NullOrUndefined (LayerFailureCode) , "failureReason" :: NullOrUndefined.NullOrUndefined (LayerFailureReason) } ) -> LayerFailure
newLayerFailure'  customize = (LayerFailure <<< customize) { "failureCode": (NullOrUndefined Nothing), "failureReason": (NullOrUndefined Nothing), "layerDigest": (NullOrUndefined Nothing) }



newtype LayerFailureCode = LayerFailureCode String
derive instance newtypeLayerFailureCode :: Newtype LayerFailureCode _
derive instance repGenericLayerFailureCode :: Generic LayerFailureCode _
instance showLayerFailureCode :: Show LayerFailureCode where
  show = genericShow
instance decodeLayerFailureCode :: Decode LayerFailureCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerFailureCode :: Encode LayerFailureCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LayerFailureList = LayerFailureList (Array LayerFailure)
derive instance newtypeLayerFailureList :: Newtype LayerFailureList _
derive instance repGenericLayerFailureList :: Generic LayerFailureList _
instance showLayerFailureList :: Show LayerFailureList where
  show = genericShow
instance decodeLayerFailureList :: Decode LayerFailureList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerFailureList :: Encode LayerFailureList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LayerFailureReason = LayerFailureReason String
derive instance newtypeLayerFailureReason :: Newtype LayerFailureReason _
derive instance repGenericLayerFailureReason :: Generic LayerFailureReason _
instance showLayerFailureReason :: Show LayerFailureReason where
  show = genericShow
instance decodeLayerFailureReason :: Decode LayerFailureReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerFailureReason :: Encode LayerFailureReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified layer is not available because it is not associated with an image. Unassociated image layers may be cleaned up at any time.</p>
newtype LayerInaccessibleException = LayerInaccessibleException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeLayerInaccessibleException :: Newtype LayerInaccessibleException _
derive instance repGenericLayerInaccessibleException :: Generic LayerInaccessibleException _
instance showLayerInaccessibleException :: Show LayerInaccessibleException where
  show = genericShow
instance decodeLayerInaccessibleException :: Decode LayerInaccessibleException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerInaccessibleException :: Encode LayerInaccessibleException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LayerInaccessibleException from required parameters
newLayerInaccessibleException :: LayerInaccessibleException
newLayerInaccessibleException  = LayerInaccessibleException { "message": (NullOrUndefined Nothing) }

-- | Constructs LayerInaccessibleException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayerInaccessibleException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> LayerInaccessibleException
newLayerInaccessibleException'  customize = (LayerInaccessibleException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype LayerList = LayerList (Array Layer)
derive instance newtypeLayerList :: Newtype LayerList _
derive instance repGenericLayerList :: Generic LayerList _
instance showLayerList :: Show LayerList where
  show = genericShow
instance decodeLayerList :: Decode LayerList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerList :: Encode LayerList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LayerPartBlob = LayerPartBlob String
derive instance newtypeLayerPartBlob :: Newtype LayerPartBlob _
derive instance repGenericLayerPartBlob :: Generic LayerPartBlob _
instance showLayerPartBlob :: Show LayerPartBlob where
  show = genericShow
instance decodeLayerPartBlob :: Decode LayerPartBlob where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerPartBlob :: Encode LayerPartBlob where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Layer parts must be at least 5 MiB in size.</p>
newtype LayerPartTooSmallException = LayerPartTooSmallException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeLayerPartTooSmallException :: Newtype LayerPartTooSmallException _
derive instance repGenericLayerPartTooSmallException :: Generic LayerPartTooSmallException _
instance showLayerPartTooSmallException :: Show LayerPartTooSmallException where
  show = genericShow
instance decodeLayerPartTooSmallException :: Decode LayerPartTooSmallException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerPartTooSmallException :: Encode LayerPartTooSmallException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LayerPartTooSmallException from required parameters
newLayerPartTooSmallException :: LayerPartTooSmallException
newLayerPartTooSmallException  = LayerPartTooSmallException { "message": (NullOrUndefined Nothing) }

-- | Constructs LayerPartTooSmallException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayerPartTooSmallException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> LayerPartTooSmallException
newLayerPartTooSmallException'  customize = (LayerPartTooSmallException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype LayerSizeInBytes = LayerSizeInBytes Number
derive instance newtypeLayerSizeInBytes :: Newtype LayerSizeInBytes _
derive instance repGenericLayerSizeInBytes :: Generic LayerSizeInBytes _
instance showLayerSizeInBytes :: Show LayerSizeInBytes where
  show = genericShow
instance decodeLayerSizeInBytes :: Decode LayerSizeInBytes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerSizeInBytes :: Encode LayerSizeInBytes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified layers could not be found, or the specified layer is not valid for this repository.</p>
newtype LayersNotFoundException = LayersNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeLayersNotFoundException :: Newtype LayersNotFoundException _
derive instance repGenericLayersNotFoundException :: Generic LayersNotFoundException _
instance showLayersNotFoundException :: Show LayersNotFoundException where
  show = genericShow
instance decodeLayersNotFoundException :: Decode LayersNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayersNotFoundException :: Encode LayersNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LayersNotFoundException from required parameters
newLayersNotFoundException :: LayersNotFoundException
newLayersNotFoundException  = LayersNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs LayersNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayersNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> LayersNotFoundException
newLayersNotFoundException'  customize = (LayersNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The lifecycle policy could not be found, and no policy is set to the repository.</p>
newtype LifecyclePolicyNotFoundException = LifecyclePolicyNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeLifecyclePolicyNotFoundException :: Newtype LifecyclePolicyNotFoundException _
derive instance repGenericLifecyclePolicyNotFoundException :: Generic LifecyclePolicyNotFoundException _
instance showLifecyclePolicyNotFoundException :: Show LifecyclePolicyNotFoundException where
  show = genericShow
instance decodeLifecyclePolicyNotFoundException :: Decode LifecyclePolicyNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyNotFoundException :: Encode LifecyclePolicyNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LifecyclePolicyNotFoundException from required parameters
newLifecyclePolicyNotFoundException :: LifecyclePolicyNotFoundException
newLifecyclePolicyNotFoundException  = LifecyclePolicyNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs LifecyclePolicyNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> LifecyclePolicyNotFoundException
newLifecyclePolicyNotFoundException'  customize = (LifecyclePolicyNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The filter for the lifecycle policy preview.</p>
newtype LifecyclePolicyPreviewFilter = LifecyclePolicyPreviewFilter 
  { "tagStatus" :: NullOrUndefined.NullOrUndefined (TagStatus)
  }
derive instance newtypeLifecyclePolicyPreviewFilter :: Newtype LifecyclePolicyPreviewFilter _
derive instance repGenericLifecyclePolicyPreviewFilter :: Generic LifecyclePolicyPreviewFilter _
instance showLifecyclePolicyPreviewFilter :: Show LifecyclePolicyPreviewFilter where
  show = genericShow
instance decodeLifecyclePolicyPreviewFilter :: Decode LifecyclePolicyPreviewFilter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyPreviewFilter :: Encode LifecyclePolicyPreviewFilter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LifecyclePolicyPreviewFilter from required parameters
newLifecyclePolicyPreviewFilter :: LifecyclePolicyPreviewFilter
newLifecyclePolicyPreviewFilter  = LifecyclePolicyPreviewFilter { "tagStatus": (NullOrUndefined Nothing) }

-- | Constructs LifecyclePolicyPreviewFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyPreviewFilter' :: ( { "tagStatus" :: NullOrUndefined.NullOrUndefined (TagStatus) } -> {"tagStatus" :: NullOrUndefined.NullOrUndefined (TagStatus) } ) -> LifecyclePolicyPreviewFilter
newLifecyclePolicyPreviewFilter'  customize = (LifecyclePolicyPreviewFilter <<< customize) { "tagStatus": (NullOrUndefined Nothing) }



-- | <p>The previous lifecycle policy preview request has not completed. Please try again later.</p>
newtype LifecyclePolicyPreviewInProgressException = LifecyclePolicyPreviewInProgressException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeLifecyclePolicyPreviewInProgressException :: Newtype LifecyclePolicyPreviewInProgressException _
derive instance repGenericLifecyclePolicyPreviewInProgressException :: Generic LifecyclePolicyPreviewInProgressException _
instance showLifecyclePolicyPreviewInProgressException :: Show LifecyclePolicyPreviewInProgressException where
  show = genericShow
instance decodeLifecyclePolicyPreviewInProgressException :: Decode LifecyclePolicyPreviewInProgressException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyPreviewInProgressException :: Encode LifecyclePolicyPreviewInProgressException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LifecyclePolicyPreviewInProgressException from required parameters
newLifecyclePolicyPreviewInProgressException :: LifecyclePolicyPreviewInProgressException
newLifecyclePolicyPreviewInProgressException  = LifecyclePolicyPreviewInProgressException { "message": (NullOrUndefined Nothing) }

-- | Constructs LifecyclePolicyPreviewInProgressException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyPreviewInProgressException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> LifecyclePolicyPreviewInProgressException
newLifecyclePolicyPreviewInProgressException'  customize = (LifecyclePolicyPreviewInProgressException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>There is no dry run for this repository.</p>
newtype LifecyclePolicyPreviewNotFoundException = LifecyclePolicyPreviewNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeLifecyclePolicyPreviewNotFoundException :: Newtype LifecyclePolicyPreviewNotFoundException _
derive instance repGenericLifecyclePolicyPreviewNotFoundException :: Generic LifecyclePolicyPreviewNotFoundException _
instance showLifecyclePolicyPreviewNotFoundException :: Show LifecyclePolicyPreviewNotFoundException where
  show = genericShow
instance decodeLifecyclePolicyPreviewNotFoundException :: Decode LifecyclePolicyPreviewNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyPreviewNotFoundException :: Encode LifecyclePolicyPreviewNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LifecyclePolicyPreviewNotFoundException from required parameters
newLifecyclePolicyPreviewNotFoundException :: LifecyclePolicyPreviewNotFoundException
newLifecyclePolicyPreviewNotFoundException  = LifecyclePolicyPreviewNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs LifecyclePolicyPreviewNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyPreviewNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> LifecyclePolicyPreviewNotFoundException
newLifecyclePolicyPreviewNotFoundException'  customize = (LifecyclePolicyPreviewNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The result of the lifecycle policy preview.</p>
newtype LifecyclePolicyPreviewResult = LifecyclePolicyPreviewResult 
  { "imageTags" :: NullOrUndefined.NullOrUndefined (ImageTagList)
  , "imageDigest" :: NullOrUndefined.NullOrUndefined (ImageDigest)
  , "imagePushedAt" :: NullOrUndefined.NullOrUndefined (PushTimestamp)
  , "action" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyRuleAction)
  , "appliedRulePriority" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyRulePriority)
  }
derive instance newtypeLifecyclePolicyPreviewResult :: Newtype LifecyclePolicyPreviewResult _
derive instance repGenericLifecyclePolicyPreviewResult :: Generic LifecyclePolicyPreviewResult _
instance showLifecyclePolicyPreviewResult :: Show LifecyclePolicyPreviewResult where
  show = genericShow
instance decodeLifecyclePolicyPreviewResult :: Decode LifecyclePolicyPreviewResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyPreviewResult :: Encode LifecyclePolicyPreviewResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LifecyclePolicyPreviewResult from required parameters
newLifecyclePolicyPreviewResult :: LifecyclePolicyPreviewResult
newLifecyclePolicyPreviewResult  = LifecyclePolicyPreviewResult { "action": (NullOrUndefined Nothing), "appliedRulePriority": (NullOrUndefined Nothing), "imageDigest": (NullOrUndefined Nothing), "imagePushedAt": (NullOrUndefined Nothing), "imageTags": (NullOrUndefined Nothing) }

-- | Constructs LifecyclePolicyPreviewResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyPreviewResult' :: ( { "imageTags" :: NullOrUndefined.NullOrUndefined (ImageTagList) , "imageDigest" :: NullOrUndefined.NullOrUndefined (ImageDigest) , "imagePushedAt" :: NullOrUndefined.NullOrUndefined (PushTimestamp) , "action" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyRuleAction) , "appliedRulePriority" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyRulePriority) } -> {"imageTags" :: NullOrUndefined.NullOrUndefined (ImageTagList) , "imageDigest" :: NullOrUndefined.NullOrUndefined (ImageDigest) , "imagePushedAt" :: NullOrUndefined.NullOrUndefined (PushTimestamp) , "action" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyRuleAction) , "appliedRulePriority" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyRulePriority) } ) -> LifecyclePolicyPreviewResult
newLifecyclePolicyPreviewResult'  customize = (LifecyclePolicyPreviewResult <<< customize) { "action": (NullOrUndefined Nothing), "appliedRulePriority": (NullOrUndefined Nothing), "imageDigest": (NullOrUndefined Nothing), "imagePushedAt": (NullOrUndefined Nothing), "imageTags": (NullOrUndefined Nothing) }



newtype LifecyclePolicyPreviewResultList = LifecyclePolicyPreviewResultList (Array LifecyclePolicyPreviewResult)
derive instance newtypeLifecyclePolicyPreviewResultList :: Newtype LifecyclePolicyPreviewResultList _
derive instance repGenericLifecyclePolicyPreviewResultList :: Generic LifecyclePolicyPreviewResultList _
instance showLifecyclePolicyPreviewResultList :: Show LifecyclePolicyPreviewResultList where
  show = genericShow
instance decodeLifecyclePolicyPreviewResultList :: Decode LifecyclePolicyPreviewResultList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyPreviewResultList :: Encode LifecyclePolicyPreviewResultList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LifecyclePolicyPreviewStatus = LifecyclePolicyPreviewStatus String
derive instance newtypeLifecyclePolicyPreviewStatus :: Newtype LifecyclePolicyPreviewStatus _
derive instance repGenericLifecyclePolicyPreviewStatus :: Generic LifecyclePolicyPreviewStatus _
instance showLifecyclePolicyPreviewStatus :: Show LifecyclePolicyPreviewStatus where
  show = genericShow
instance decodeLifecyclePolicyPreviewStatus :: Decode LifecyclePolicyPreviewStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyPreviewStatus :: Encode LifecyclePolicyPreviewStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The summary of the lifecycle policy preview request.</p>
newtype LifecyclePolicyPreviewSummary = LifecyclePolicyPreviewSummary 
  { "expiringImageTotalCount" :: NullOrUndefined.NullOrUndefined (ImageCount)
  }
derive instance newtypeLifecyclePolicyPreviewSummary :: Newtype LifecyclePolicyPreviewSummary _
derive instance repGenericLifecyclePolicyPreviewSummary :: Generic LifecyclePolicyPreviewSummary _
instance showLifecyclePolicyPreviewSummary :: Show LifecyclePolicyPreviewSummary where
  show = genericShow
instance decodeLifecyclePolicyPreviewSummary :: Decode LifecyclePolicyPreviewSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyPreviewSummary :: Encode LifecyclePolicyPreviewSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LifecyclePolicyPreviewSummary from required parameters
newLifecyclePolicyPreviewSummary :: LifecyclePolicyPreviewSummary
newLifecyclePolicyPreviewSummary  = LifecyclePolicyPreviewSummary { "expiringImageTotalCount": (NullOrUndefined Nothing) }

-- | Constructs LifecyclePolicyPreviewSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyPreviewSummary' :: ( { "expiringImageTotalCount" :: NullOrUndefined.NullOrUndefined (ImageCount) } -> {"expiringImageTotalCount" :: NullOrUndefined.NullOrUndefined (ImageCount) } ) -> LifecyclePolicyPreviewSummary
newLifecyclePolicyPreviewSummary'  customize = (LifecyclePolicyPreviewSummary <<< customize) { "expiringImageTotalCount": (NullOrUndefined Nothing) }



-- | <p>The type of action to be taken.</p>
newtype LifecyclePolicyRuleAction = LifecyclePolicyRuleAction 
  { "type" :: NullOrUndefined.NullOrUndefined (ImageActionType)
  }
derive instance newtypeLifecyclePolicyRuleAction :: Newtype LifecyclePolicyRuleAction _
derive instance repGenericLifecyclePolicyRuleAction :: Generic LifecyclePolicyRuleAction _
instance showLifecyclePolicyRuleAction :: Show LifecyclePolicyRuleAction where
  show = genericShow
instance decodeLifecyclePolicyRuleAction :: Decode LifecyclePolicyRuleAction where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyRuleAction :: Encode LifecyclePolicyRuleAction where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LifecyclePolicyRuleAction from required parameters
newLifecyclePolicyRuleAction :: LifecyclePolicyRuleAction
newLifecyclePolicyRuleAction  = LifecyclePolicyRuleAction { "type": (NullOrUndefined Nothing) }

-- | Constructs LifecyclePolicyRuleAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecyclePolicyRuleAction' :: ( { "type" :: NullOrUndefined.NullOrUndefined (ImageActionType) } -> {"type" :: NullOrUndefined.NullOrUndefined (ImageActionType) } ) -> LifecyclePolicyRuleAction
newLifecyclePolicyRuleAction'  customize = (LifecyclePolicyRuleAction <<< customize) { "type": (NullOrUndefined Nothing) }



newtype LifecyclePolicyRulePriority = LifecyclePolicyRulePriority Int
derive instance newtypeLifecyclePolicyRulePriority :: Newtype LifecyclePolicyRulePriority _
derive instance repGenericLifecyclePolicyRulePriority :: Generic LifecyclePolicyRulePriority _
instance showLifecyclePolicyRulePriority :: Show LifecyclePolicyRulePriority where
  show = genericShow
instance decodeLifecyclePolicyRulePriority :: Decode LifecyclePolicyRulePriority where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyRulePriority :: Encode LifecyclePolicyRulePriority where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LifecyclePolicyText = LifecyclePolicyText String
derive instance newtypeLifecyclePolicyText :: Newtype LifecyclePolicyText _
derive instance repGenericLifecyclePolicyText :: Generic LifecyclePolicyText _
instance showLifecyclePolicyText :: Show LifecyclePolicyText where
  show = genericShow
instance decodeLifecyclePolicyText :: Decode LifecyclePolicyText where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecyclePolicyText :: Encode LifecyclePolicyText where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The operation did not succeed because it would have exceeded a service limit for your account. For more information, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/service_limits.html">Amazon ECR Default Service Limits</a> in the Amazon Elastic Container Registry User Guide.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where
  show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitExceededException :: Encode LimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>An object representing a filter on a <a>ListImages</a> operation.</p>
newtype ListImagesFilter = ListImagesFilter 
  { "tagStatus" :: NullOrUndefined.NullOrUndefined (TagStatus)
  }
derive instance newtypeListImagesFilter :: Newtype ListImagesFilter _
derive instance repGenericListImagesFilter :: Generic ListImagesFilter _
instance showListImagesFilter :: Show ListImagesFilter where
  show = genericShow
instance decodeListImagesFilter :: Decode ListImagesFilter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListImagesFilter :: Encode ListImagesFilter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListImagesFilter from required parameters
newListImagesFilter :: ListImagesFilter
newListImagesFilter  = ListImagesFilter { "tagStatus": (NullOrUndefined Nothing) }

-- | Constructs ListImagesFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListImagesFilter' :: ( { "tagStatus" :: NullOrUndefined.NullOrUndefined (TagStatus) } -> {"tagStatus" :: NullOrUndefined.NullOrUndefined (TagStatus) } ) -> ListImagesFilter
newListImagesFilter'  customize = (ListImagesFilter <<< customize) { "tagStatus": (NullOrUndefined Nothing) }



newtype ListImagesRequest = ListImagesRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "filter" :: NullOrUndefined.NullOrUndefined (ListImagesFilter)
  }
derive instance newtypeListImagesRequest :: Newtype ListImagesRequest _
derive instance repGenericListImagesRequest :: Generic ListImagesRequest _
instance showListImagesRequest :: Show ListImagesRequest where
  show = genericShow
instance decodeListImagesRequest :: Decode ListImagesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListImagesRequest :: Encode ListImagesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListImagesRequest from required parameters
newListImagesRequest :: RepositoryName -> ListImagesRequest
newListImagesRequest _repositoryName = ListImagesRequest { "repositoryName": _repositoryName, "filter": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }

-- | Constructs ListImagesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListImagesRequest' :: RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "filter" :: NullOrUndefined.NullOrUndefined (ListImagesFilter) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "filter" :: NullOrUndefined.NullOrUndefined (ListImagesFilter) } ) -> ListImagesRequest
newListImagesRequest' _repositoryName customize = (ListImagesRequest <<< customize) { "repositoryName": _repositoryName, "filter": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }



newtype ListImagesResponse = ListImagesResponse 
  { "imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListImagesResponse :: Newtype ListImagesResponse _
derive instance repGenericListImagesResponse :: Generic ListImagesResponse _
instance showListImagesResponse :: Show ListImagesResponse where
  show = genericShow
instance decodeListImagesResponse :: Decode ListImagesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListImagesResponse :: Encode ListImagesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListImagesResponse from required parameters
newListImagesResponse :: ListImagesResponse
newListImagesResponse  = ListImagesResponse { "imageIds": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListImagesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListImagesResponse' :: ( { "imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"imageIds" :: NullOrUndefined.NullOrUndefined (ImageIdentifierList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListImagesResponse
newListImagesResponse'  customize = (ListImagesResponse <<< customize) { "imageIds": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MediaType = MediaType String
derive instance newtypeMediaType :: Newtype MediaType _
derive instance repGenericMediaType :: Generic MediaType _
instance showMediaType :: Show MediaType where
  show = genericShow
instance decodeMediaType :: Decode MediaType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMediaType :: Encode MediaType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MediaTypeList = MediaTypeList (Array MediaType)
derive instance newtypeMediaTypeList :: Newtype MediaTypeList _
derive instance repGenericMediaTypeList :: Generic MediaTypeList _
instance showMediaTypeList :: Show MediaTypeList where
  show = genericShow
instance decodeMediaTypeList :: Decode MediaTypeList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMediaTypeList :: Encode MediaTypeList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where
  show = genericShow
instance decodeNextToken :: Decode NextToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNextToken :: Encode NextToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PartSize = PartSize Number
derive instance newtypePartSize :: Newtype PartSize _
derive instance repGenericPartSize :: Generic PartSize _
instance showPartSize :: Show PartSize where
  show = genericShow
instance decodePartSize :: Decode PartSize where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePartSize :: Encode PartSize where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ProxyEndpoint = ProxyEndpoint String
derive instance newtypeProxyEndpoint :: Newtype ProxyEndpoint _
derive instance repGenericProxyEndpoint :: Generic ProxyEndpoint _
instance showProxyEndpoint :: Show ProxyEndpoint where
  show = genericShow
instance decodeProxyEndpoint :: Decode ProxyEndpoint where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProxyEndpoint :: Encode ProxyEndpoint where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PushTimestamp = PushTimestamp Types.Timestamp
derive instance newtypePushTimestamp :: Newtype PushTimestamp _
derive instance repGenericPushTimestamp :: Generic PushTimestamp _
instance showPushTimestamp :: Show PushTimestamp where
  show = genericShow
instance decodePushTimestamp :: Decode PushTimestamp where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePushTimestamp :: Encode PushTimestamp where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PutImageRequest = PutImageRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "imageManifest" :: (ImageManifest)
  , "imageTag" :: NullOrUndefined.NullOrUndefined (ImageTag)
  }
derive instance newtypePutImageRequest :: Newtype PutImageRequest _
derive instance repGenericPutImageRequest :: Generic PutImageRequest _
instance showPutImageRequest :: Show PutImageRequest where
  show = genericShow
instance decodePutImageRequest :: Decode PutImageRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutImageRequest :: Encode PutImageRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutImageRequest from required parameters
newPutImageRequest :: ImageManifest -> RepositoryName -> PutImageRequest
newPutImageRequest _imageManifest _repositoryName = PutImageRequest { "imageManifest": _imageManifest, "repositoryName": _repositoryName, "imageTag": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }

-- | Constructs PutImageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutImageRequest' :: ImageManifest -> RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "imageManifest" :: (ImageManifest) , "imageTag" :: NullOrUndefined.NullOrUndefined (ImageTag) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "imageManifest" :: (ImageManifest) , "imageTag" :: NullOrUndefined.NullOrUndefined (ImageTag) } ) -> PutImageRequest
newPutImageRequest' _imageManifest _repositoryName customize = (PutImageRequest <<< customize) { "imageManifest": _imageManifest, "repositoryName": _repositoryName, "imageTag": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }



newtype PutImageResponse = PutImageResponse 
  { "image" :: NullOrUndefined.NullOrUndefined (Image)
  }
derive instance newtypePutImageResponse :: Newtype PutImageResponse _
derive instance repGenericPutImageResponse :: Generic PutImageResponse _
instance showPutImageResponse :: Show PutImageResponse where
  show = genericShow
instance decodePutImageResponse :: Decode PutImageResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutImageResponse :: Encode PutImageResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutImageResponse from required parameters
newPutImageResponse :: PutImageResponse
newPutImageResponse  = PutImageResponse { "image": (NullOrUndefined Nothing) }

-- | Constructs PutImageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutImageResponse' :: ( { "image" :: NullOrUndefined.NullOrUndefined (Image) } -> {"image" :: NullOrUndefined.NullOrUndefined (Image) } ) -> PutImageResponse
newPutImageResponse'  customize = (PutImageResponse <<< customize) { "image": (NullOrUndefined Nothing) }



newtype PutLifecyclePolicyRequest = PutLifecyclePolicyRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "lifecyclePolicyText" :: (LifecyclePolicyText)
  }
derive instance newtypePutLifecyclePolicyRequest :: Newtype PutLifecyclePolicyRequest _
derive instance repGenericPutLifecyclePolicyRequest :: Generic PutLifecyclePolicyRequest _
instance showPutLifecyclePolicyRequest :: Show PutLifecyclePolicyRequest where
  show = genericShow
instance decodePutLifecyclePolicyRequest :: Decode PutLifecyclePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutLifecyclePolicyRequest :: Encode PutLifecyclePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutLifecyclePolicyRequest from required parameters
newPutLifecyclePolicyRequest :: LifecyclePolicyText -> RepositoryName -> PutLifecyclePolicyRequest
newPutLifecyclePolicyRequest _lifecyclePolicyText _repositoryName = PutLifecyclePolicyRequest { "lifecyclePolicyText": _lifecyclePolicyText, "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }

-- | Constructs PutLifecyclePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutLifecyclePolicyRequest' :: LifecyclePolicyText -> RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "lifecyclePolicyText" :: (LifecyclePolicyText) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "lifecyclePolicyText" :: (LifecyclePolicyText) } ) -> PutLifecyclePolicyRequest
newPutLifecyclePolicyRequest' _lifecyclePolicyText _repositoryName customize = (PutLifecyclePolicyRequest <<< customize) { "lifecyclePolicyText": _lifecyclePolicyText, "repositoryName": _repositoryName, "registryId": (NullOrUndefined Nothing) }



newtype PutLifecyclePolicyResponse = PutLifecyclePolicyResponse 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText)
  }
derive instance newtypePutLifecyclePolicyResponse :: Newtype PutLifecyclePolicyResponse _
derive instance repGenericPutLifecyclePolicyResponse :: Generic PutLifecyclePolicyResponse _
instance showPutLifecyclePolicyResponse :: Show PutLifecyclePolicyResponse where
  show = genericShow
instance decodePutLifecyclePolicyResponse :: Decode PutLifecyclePolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutLifecyclePolicyResponse :: Encode PutLifecyclePolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutLifecyclePolicyResponse from required parameters
newPutLifecyclePolicyResponse :: PutLifecyclePolicyResponse
newPutLifecyclePolicyResponse  = PutLifecyclePolicyResponse { "lifecyclePolicyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }

-- | Constructs PutLifecyclePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutLifecyclePolicyResponse' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) } ) -> PutLifecyclePolicyResponse
newPutLifecyclePolicyResponse'  customize = (PutLifecyclePolicyResponse <<< customize) { "lifecyclePolicyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }



newtype RegistryId = RegistryId String
derive instance newtypeRegistryId :: Newtype RegistryId _
derive instance repGenericRegistryId :: Generic RegistryId _
instance showRegistryId :: Show RegistryId where
  show = genericShow
instance decodeRegistryId :: Decode RegistryId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegistryId :: Encode RegistryId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing a repository.</p>
newtype Repository = Repository 
  { "repositoryArn" :: NullOrUndefined.NullOrUndefined (Arn)
  , "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "repositoryUri" :: NullOrUndefined.NullOrUndefined (Url)
  , "createdAt" :: NullOrUndefined.NullOrUndefined (CreationTimestamp)
  }
derive instance newtypeRepository :: Newtype Repository _
derive instance repGenericRepository :: Generic Repository _
instance showRepository :: Show Repository where
  show = genericShow
instance decodeRepository :: Decode Repository where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRepository :: Encode Repository where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Repository from required parameters
newRepository :: Repository
newRepository  = Repository { "createdAt": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryArn": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "repositoryUri": (NullOrUndefined Nothing) }

-- | Constructs Repository's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepository' :: ( { "repositoryArn" :: NullOrUndefined.NullOrUndefined (Arn) , "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "repositoryUri" :: NullOrUndefined.NullOrUndefined (Url) , "createdAt" :: NullOrUndefined.NullOrUndefined (CreationTimestamp) } -> {"repositoryArn" :: NullOrUndefined.NullOrUndefined (Arn) , "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "repositoryUri" :: NullOrUndefined.NullOrUndefined (Url) , "createdAt" :: NullOrUndefined.NullOrUndefined (CreationTimestamp) } ) -> Repository
newRepository'  customize = (Repository <<< customize) { "createdAt": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryArn": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "repositoryUri": (NullOrUndefined Nothing) }



-- | <p>The specified repository already exists in the specified registry.</p>
newtype RepositoryAlreadyExistsException = RepositoryAlreadyExistsException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeRepositoryAlreadyExistsException :: Newtype RepositoryAlreadyExistsException _
derive instance repGenericRepositoryAlreadyExistsException :: Generic RepositoryAlreadyExistsException _
instance showRepositoryAlreadyExistsException :: Show RepositoryAlreadyExistsException where
  show = genericShow
instance decodeRepositoryAlreadyExistsException :: Decode RepositoryAlreadyExistsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRepositoryAlreadyExistsException :: Encode RepositoryAlreadyExistsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RepositoryAlreadyExistsException from required parameters
newRepositoryAlreadyExistsException :: RepositoryAlreadyExistsException
newRepositoryAlreadyExistsException  = RepositoryAlreadyExistsException { "message": (NullOrUndefined Nothing) }

-- | Constructs RepositoryAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepositoryAlreadyExistsException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> RepositoryAlreadyExistsException
newRepositoryAlreadyExistsException'  customize = (RepositoryAlreadyExistsException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype RepositoryList = RepositoryList (Array Repository)
derive instance newtypeRepositoryList :: Newtype RepositoryList _
derive instance repGenericRepositoryList :: Generic RepositoryList _
instance showRepositoryList :: Show RepositoryList where
  show = genericShow
instance decodeRepositoryList :: Decode RepositoryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRepositoryList :: Encode RepositoryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RepositoryName = RepositoryName String
derive instance newtypeRepositoryName :: Newtype RepositoryName _
derive instance repGenericRepositoryName :: Generic RepositoryName _
instance showRepositoryName :: Show RepositoryName where
  show = genericShow
instance decodeRepositoryName :: Decode RepositoryName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRepositoryName :: Encode RepositoryName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RepositoryNameList = RepositoryNameList (Array RepositoryName)
derive instance newtypeRepositoryNameList :: Newtype RepositoryNameList _
derive instance repGenericRepositoryNameList :: Generic RepositoryNameList _
instance showRepositoryNameList :: Show RepositoryNameList where
  show = genericShow
instance decodeRepositoryNameList :: Decode RepositoryNameList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRepositoryNameList :: Encode RepositoryNameList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified repository contains images. To delete a repository that contains images, you must force the deletion with the <code>force</code> parameter.</p>
newtype RepositoryNotEmptyException = RepositoryNotEmptyException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeRepositoryNotEmptyException :: Newtype RepositoryNotEmptyException _
derive instance repGenericRepositoryNotEmptyException :: Generic RepositoryNotEmptyException _
instance showRepositoryNotEmptyException :: Show RepositoryNotEmptyException where
  show = genericShow
instance decodeRepositoryNotEmptyException :: Decode RepositoryNotEmptyException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRepositoryNotEmptyException :: Encode RepositoryNotEmptyException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RepositoryNotEmptyException from required parameters
newRepositoryNotEmptyException :: RepositoryNotEmptyException
newRepositoryNotEmptyException  = RepositoryNotEmptyException { "message": (NullOrUndefined Nothing) }

-- | Constructs RepositoryNotEmptyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepositoryNotEmptyException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> RepositoryNotEmptyException
newRepositoryNotEmptyException'  customize = (RepositoryNotEmptyException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified repository could not be found. Check the spelling of the specified repository and ensure that you are performing operations on the correct registry.</p>
newtype RepositoryNotFoundException = RepositoryNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeRepositoryNotFoundException :: Newtype RepositoryNotFoundException _
derive instance repGenericRepositoryNotFoundException :: Generic RepositoryNotFoundException _
instance showRepositoryNotFoundException :: Show RepositoryNotFoundException where
  show = genericShow
instance decodeRepositoryNotFoundException :: Decode RepositoryNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRepositoryNotFoundException :: Encode RepositoryNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RepositoryNotFoundException from required parameters
newRepositoryNotFoundException :: RepositoryNotFoundException
newRepositoryNotFoundException  = RepositoryNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs RepositoryNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepositoryNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> RepositoryNotFoundException
newRepositoryNotFoundException'  customize = (RepositoryNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified repository and registry combination does not have an associated repository policy.</p>
newtype RepositoryPolicyNotFoundException = RepositoryPolicyNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeRepositoryPolicyNotFoundException :: Newtype RepositoryPolicyNotFoundException _
derive instance repGenericRepositoryPolicyNotFoundException :: Generic RepositoryPolicyNotFoundException _
instance showRepositoryPolicyNotFoundException :: Show RepositoryPolicyNotFoundException where
  show = genericShow
instance decodeRepositoryPolicyNotFoundException :: Decode RepositoryPolicyNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRepositoryPolicyNotFoundException :: Encode RepositoryPolicyNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RepositoryPolicyNotFoundException from required parameters
newRepositoryPolicyNotFoundException :: RepositoryPolicyNotFoundException
newRepositoryPolicyNotFoundException  = RepositoryPolicyNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs RepositoryPolicyNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepositoryPolicyNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> RepositoryPolicyNotFoundException
newRepositoryPolicyNotFoundException'  customize = (RepositoryPolicyNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype RepositoryPolicyText = RepositoryPolicyText String
derive instance newtypeRepositoryPolicyText :: Newtype RepositoryPolicyText _
derive instance repGenericRepositoryPolicyText :: Generic RepositoryPolicyText _
instance showRepositoryPolicyText :: Show RepositoryPolicyText where
  show = genericShow
instance decodeRepositoryPolicyText :: Decode RepositoryPolicyText where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRepositoryPolicyText :: Encode RepositoryPolicyText where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>These errors are usually caused by a server-side issue.</p>
newtype ServerException = ServerException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeServerException :: Newtype ServerException _
derive instance repGenericServerException :: Generic ServerException _
instance showServerException :: Show ServerException where
  show = genericShow
instance decodeServerException :: Decode ServerException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServerException :: Encode ServerException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServerException from required parameters
newServerException :: ServerException
newServerException  = ServerException { "message": (NullOrUndefined Nothing) }

-- | Constructs ServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> ServerException
newServerException'  customize = (ServerException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype SetRepositoryPolicyRequest = SetRepositoryPolicyRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "policyText" :: (RepositoryPolicyText)
  , "force" :: NullOrUndefined.NullOrUndefined (ForceFlag)
  }
derive instance newtypeSetRepositoryPolicyRequest :: Newtype SetRepositoryPolicyRequest _
derive instance repGenericSetRepositoryPolicyRequest :: Generic SetRepositoryPolicyRequest _
instance showSetRepositoryPolicyRequest :: Show SetRepositoryPolicyRequest where
  show = genericShow
instance decodeSetRepositoryPolicyRequest :: Decode SetRepositoryPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetRepositoryPolicyRequest :: Encode SetRepositoryPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetRepositoryPolicyRequest from required parameters
newSetRepositoryPolicyRequest :: RepositoryPolicyText -> RepositoryName -> SetRepositoryPolicyRequest
newSetRepositoryPolicyRequest _policyText _repositoryName = SetRepositoryPolicyRequest { "policyText": _policyText, "repositoryName": _repositoryName, "force": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }

-- | Constructs SetRepositoryPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetRepositoryPolicyRequest' :: RepositoryPolicyText -> RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "policyText" :: (RepositoryPolicyText) , "force" :: NullOrUndefined.NullOrUndefined (ForceFlag) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "policyText" :: (RepositoryPolicyText) , "force" :: NullOrUndefined.NullOrUndefined (ForceFlag) } ) -> SetRepositoryPolicyRequest
newSetRepositoryPolicyRequest' _policyText _repositoryName customize = (SetRepositoryPolicyRequest <<< customize) { "policyText": _policyText, "repositoryName": _repositoryName, "force": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }



newtype SetRepositoryPolicyResponse = SetRepositoryPolicyResponse 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "policyText" :: NullOrUndefined.NullOrUndefined (RepositoryPolicyText)
  }
derive instance newtypeSetRepositoryPolicyResponse :: Newtype SetRepositoryPolicyResponse _
derive instance repGenericSetRepositoryPolicyResponse :: Generic SetRepositoryPolicyResponse _
instance showSetRepositoryPolicyResponse :: Show SetRepositoryPolicyResponse where
  show = genericShow
instance decodeSetRepositoryPolicyResponse :: Decode SetRepositoryPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetRepositoryPolicyResponse :: Encode SetRepositoryPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetRepositoryPolicyResponse from required parameters
newSetRepositoryPolicyResponse :: SetRepositoryPolicyResponse
newSetRepositoryPolicyResponse  = SetRepositoryPolicyResponse { "policyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }

-- | Constructs SetRepositoryPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetRepositoryPolicyResponse' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "policyText" :: NullOrUndefined.NullOrUndefined (RepositoryPolicyText) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "policyText" :: NullOrUndefined.NullOrUndefined (RepositoryPolicyText) } ) -> SetRepositoryPolicyResponse
newSetRepositoryPolicyResponse'  customize = (SetRepositoryPolicyResponse <<< customize) { "policyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing) }



newtype StartLifecyclePolicyPreviewRequest = StartLifecyclePolicyPreviewRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText)
  }
derive instance newtypeStartLifecyclePolicyPreviewRequest :: Newtype StartLifecyclePolicyPreviewRequest _
derive instance repGenericStartLifecyclePolicyPreviewRequest :: Generic StartLifecyclePolicyPreviewRequest _
instance showStartLifecyclePolicyPreviewRequest :: Show StartLifecyclePolicyPreviewRequest where
  show = genericShow
instance decodeStartLifecyclePolicyPreviewRequest :: Decode StartLifecyclePolicyPreviewRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartLifecyclePolicyPreviewRequest :: Encode StartLifecyclePolicyPreviewRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartLifecyclePolicyPreviewRequest from required parameters
newStartLifecyclePolicyPreviewRequest :: RepositoryName -> StartLifecyclePolicyPreviewRequest
newStartLifecyclePolicyPreviewRequest _repositoryName = StartLifecyclePolicyPreviewRequest { "repositoryName": _repositoryName, "lifecyclePolicyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }

-- | Constructs StartLifecyclePolicyPreviewRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartLifecyclePolicyPreviewRequest' :: RepositoryName -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) } ) -> StartLifecyclePolicyPreviewRequest
newStartLifecyclePolicyPreviewRequest' _repositoryName customize = (StartLifecyclePolicyPreviewRequest <<< customize) { "repositoryName": _repositoryName, "lifecyclePolicyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing) }



newtype StartLifecyclePolicyPreviewResponse = StartLifecyclePolicyPreviewResponse 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText)
  , "status" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewStatus)
  }
derive instance newtypeStartLifecyclePolicyPreviewResponse :: Newtype StartLifecyclePolicyPreviewResponse _
derive instance repGenericStartLifecyclePolicyPreviewResponse :: Generic StartLifecyclePolicyPreviewResponse _
instance showStartLifecyclePolicyPreviewResponse :: Show StartLifecyclePolicyPreviewResponse where
  show = genericShow
instance decodeStartLifecyclePolicyPreviewResponse :: Decode StartLifecyclePolicyPreviewResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartLifecyclePolicyPreviewResponse :: Encode StartLifecyclePolicyPreviewResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartLifecyclePolicyPreviewResponse from required parameters
newStartLifecyclePolicyPreviewResponse :: StartLifecyclePolicyPreviewResponse
newStartLifecyclePolicyPreviewResponse  = StartLifecyclePolicyPreviewResponse { "lifecyclePolicyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs StartLifecyclePolicyPreviewResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartLifecyclePolicyPreviewResponse' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) , "status" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewStatus) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "lifecyclePolicyText" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyText) , "status" :: NullOrUndefined.NullOrUndefined (LifecyclePolicyPreviewStatus) } ) -> StartLifecyclePolicyPreviewResponse
newStartLifecyclePolicyPreviewResponse'  customize = (StartLifecyclePolicyPreviewResponse <<< customize) { "lifecyclePolicyText": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



newtype TagStatus = TagStatus String
derive instance newtypeTagStatus :: Newtype TagStatus _
derive instance repGenericTagStatus :: Generic TagStatus _
instance showTagStatus :: Show TagStatus where
  show = genericShow
instance decodeTagStatus :: Decode TagStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagStatus :: Encode TagStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UploadId = UploadId String
derive instance newtypeUploadId :: Newtype UploadId _
derive instance repGenericUploadId :: Generic UploadId _
instance showUploadId :: Show UploadId where
  show = genericShow
instance decodeUploadId :: Decode UploadId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadId :: Encode UploadId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UploadLayerPartRequest = UploadLayerPartRequest 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: (RepositoryName)
  , "uploadId" :: (UploadId)
  , "partFirstByte" :: (PartSize)
  , "partLastByte" :: (PartSize)
  , "layerPartBlob" :: (LayerPartBlob)
  }
derive instance newtypeUploadLayerPartRequest :: Newtype UploadLayerPartRequest _
derive instance repGenericUploadLayerPartRequest :: Generic UploadLayerPartRequest _
instance showUploadLayerPartRequest :: Show UploadLayerPartRequest where
  show = genericShow
instance decodeUploadLayerPartRequest :: Decode UploadLayerPartRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadLayerPartRequest :: Encode UploadLayerPartRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadLayerPartRequest from required parameters
newUploadLayerPartRequest :: LayerPartBlob -> PartSize -> PartSize -> RepositoryName -> UploadId -> UploadLayerPartRequest
newUploadLayerPartRequest _layerPartBlob _partFirstByte _partLastByte _repositoryName _uploadId = UploadLayerPartRequest { "layerPartBlob": _layerPartBlob, "partFirstByte": _partFirstByte, "partLastByte": _partLastByte, "repositoryName": _repositoryName, "uploadId": _uploadId, "registryId": (NullOrUndefined Nothing) }

-- | Constructs UploadLayerPartRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadLayerPartRequest' :: LayerPartBlob -> PartSize -> PartSize -> RepositoryName -> UploadId -> ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "uploadId" :: (UploadId) , "partFirstByte" :: (PartSize) , "partLastByte" :: (PartSize) , "layerPartBlob" :: (LayerPartBlob) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: (RepositoryName) , "uploadId" :: (UploadId) , "partFirstByte" :: (PartSize) , "partLastByte" :: (PartSize) , "layerPartBlob" :: (LayerPartBlob) } ) -> UploadLayerPartRequest
newUploadLayerPartRequest' _layerPartBlob _partFirstByte _partLastByte _repositoryName _uploadId customize = (UploadLayerPartRequest <<< customize) { "layerPartBlob": _layerPartBlob, "partFirstByte": _partFirstByte, "partLastByte": _partLastByte, "repositoryName": _repositoryName, "uploadId": _uploadId, "registryId": (NullOrUndefined Nothing) }



newtype UploadLayerPartResponse = UploadLayerPartResponse 
  { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId)
  , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName)
  , "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId)
  , "lastByteReceived" :: NullOrUndefined.NullOrUndefined (PartSize)
  }
derive instance newtypeUploadLayerPartResponse :: Newtype UploadLayerPartResponse _
derive instance repGenericUploadLayerPartResponse :: Generic UploadLayerPartResponse _
instance showUploadLayerPartResponse :: Show UploadLayerPartResponse where
  show = genericShow
instance decodeUploadLayerPartResponse :: Decode UploadLayerPartResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadLayerPartResponse :: Encode UploadLayerPartResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadLayerPartResponse from required parameters
newUploadLayerPartResponse :: UploadLayerPartResponse
newUploadLayerPartResponse  = UploadLayerPartResponse { "lastByteReceived": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "uploadId": (NullOrUndefined Nothing) }

-- | Constructs UploadLayerPartResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadLayerPartResponse' :: ( { "registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId) , "lastByteReceived" :: NullOrUndefined.NullOrUndefined (PartSize) } -> {"registryId" :: NullOrUndefined.NullOrUndefined (RegistryId) , "repositoryName" :: NullOrUndefined.NullOrUndefined (RepositoryName) , "uploadId" :: NullOrUndefined.NullOrUndefined (UploadId) , "lastByteReceived" :: NullOrUndefined.NullOrUndefined (PartSize) } ) -> UploadLayerPartResponse
newUploadLayerPartResponse'  customize = (UploadLayerPartResponse <<< customize) { "lastByteReceived": (NullOrUndefined Nothing), "registryId": (NullOrUndefined Nothing), "repositoryName": (NullOrUndefined Nothing), "uploadId": (NullOrUndefined Nothing) }



-- | <p>The upload could not be found, or the specified upload id is not valid for this repository.</p>
newtype UploadNotFoundException = UploadNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeUploadNotFoundException :: Newtype UploadNotFoundException _
derive instance repGenericUploadNotFoundException :: Generic UploadNotFoundException _
instance showUploadNotFoundException :: Show UploadNotFoundException where
  show = genericShow
instance decodeUploadNotFoundException :: Decode UploadNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadNotFoundException :: Encode UploadNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadNotFoundException from required parameters
newUploadNotFoundException :: UploadNotFoundException
newUploadNotFoundException  = UploadNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs UploadNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> UploadNotFoundException
newUploadNotFoundException'  customize = (UploadNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Url = Url String
derive instance newtypeUrl :: Newtype Url _
derive instance repGenericUrl :: Generic Url _
instance showUrl :: Show Url where
  show = genericShow
instance decodeUrl :: Decode Url where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUrl :: Encode Url where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

