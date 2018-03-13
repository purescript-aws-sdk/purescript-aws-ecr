## Module AWS.ECR

<p>Amazon Elastic Container Registry (Amazon ECR) is a managed Docker registry service. Customers can use the familiar Docker CLI to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry. Amazon ECR supports private Docker repositories with resource-based permissions using IAM so that specific users or Amazon EC2 instances can access repositories and images. Developers can use the Docker CLI to author and manage images.</p>

#### `batchCheckLayerAvailability`

``` purescript
batchCheckLayerAvailability :: forall eff. BatchCheckLayerAvailabilityRequest -> Aff (exception :: EXCEPTION | eff) BatchCheckLayerAvailabilityResponse
```

<p>Check the availability of multiple image layers in a specified registry and repository.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `batchDeleteImage`

``` purescript
batchDeleteImage :: forall eff. BatchDeleteImageRequest -> Aff (exception :: EXCEPTION | eff) BatchDeleteImageResponse
```

<p>Deletes a list of specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p> <p>You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository.</p> <p>You can completely delete an image (and all of its tags) by specifying the image's digest in your request.</p>

#### `batchGetImage`

``` purescript
batchGetImage :: forall eff. BatchGetImageRequest -> Aff (exception :: EXCEPTION | eff) BatchGetImageResponse
```

<p>Gets detailed information for specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p>

#### `completeLayerUpload`

``` purescript
completeLayerUpload :: forall eff. CompleteLayerUploadRequest -> Aff (exception :: EXCEPTION | eff) CompleteLayerUploadResponse
```

<p>Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a <code>sha256</code> digest of the image layer for data validation purposes.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `createRepository`

``` purescript
createRepository :: forall eff. CreateRepositoryRequest -> Aff (exception :: EXCEPTION | eff) CreateRepositoryResponse
```

<p>Creates an image repository.</p>

#### `deleteLifecyclePolicy`

``` purescript
deleteLifecyclePolicy :: forall eff. DeleteLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) DeleteLifecyclePolicyResponse
```

<p>Deletes the specified lifecycle policy.</p>

#### `deleteRepository`

``` purescript
deleteRepository :: forall eff. DeleteRepositoryRequest -> Aff (exception :: EXCEPTION | eff) DeleteRepositoryResponse
```

<p>Deletes an existing image repository. If a repository contains images, you must use the <code>force</code> option to delete it.</p>

#### `deleteRepositoryPolicy`

``` purescript
deleteRepositoryPolicy :: forall eff. DeleteRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) DeleteRepositoryPolicyResponse
```

<p>Deletes the repository policy from a specified repository.</p>

#### `describeImages`

``` purescript
describeImages :: forall eff. DescribeImagesRequest -> Aff (exception :: EXCEPTION | eff) DescribeImagesResponse
```

<p>Returns metadata about the images in a repository, including image size, image tags, and creation date.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>

#### `describeRepositories`

``` purescript
describeRepositories :: forall eff. DescribeRepositoriesRequest -> Aff (exception :: EXCEPTION | eff) DescribeRepositoriesResponse
```

<p>Describes image repositories in a registry.</p>

#### `getAuthorizationToken`

``` purescript
getAuthorizationToken :: forall eff. GetAuthorizationTokenRequest -> Aff (exception :: EXCEPTION | eff) GetAuthorizationTokenResponse
```

<p>Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the <code>docker</code> CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed.</p> <p>The <code>authorizationToken</code> returned for each registry specified is a base64 encoded string that can be decoded and used in a <code>docker login</code> command to authenticate to a registry. The AWS CLI offers an <code>aws ecr get-login</code> command that simplifies the login process.</p>

#### `getDownloadUrlForLayer`

``` purescript
getDownloadUrlForLayer :: forall eff. GetDownloadUrlForLayerRequest -> Aff (exception :: EXCEPTION | eff) GetDownloadUrlForLayerResponse
```

<p>Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `getLifecyclePolicy`

``` purescript
getLifecyclePolicy :: forall eff. GetLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) GetLifecyclePolicyResponse
```

<p>Retrieves the specified lifecycle policy.</p>

#### `getLifecyclePolicyPreview`

``` purescript
getLifecyclePolicyPreview :: forall eff. GetLifecyclePolicyPreviewRequest -> Aff (exception :: EXCEPTION | eff) GetLifecyclePolicyPreviewResponse
```

<p>Retrieves the results of the specified lifecycle policy preview request.</p>

#### `getRepositoryPolicy`

``` purescript
getRepositoryPolicy :: forall eff. GetRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetRepositoryPolicyResponse
```

<p>Retrieves the repository policy for a specified repository.</p>

#### `initiateLayerUpload`

``` purescript
initiateLayerUpload :: forall eff. InitiateLayerUploadRequest -> Aff (exception :: EXCEPTION | eff) InitiateLayerUploadResponse
```

<p>Notify Amazon ECR that you intend to upload an image layer.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `listImages`

``` purescript
listImages :: forall eff. ListImagesRequest -> Aff (exception :: EXCEPTION | eff) ListImagesResponse
```

<p>Lists all the image IDs for a given repository.</p> <p>You can filter images based on whether or not they are tagged by setting the <code>tagStatus</code> parameter to <code>TAGGED</code> or <code>UNTAGGED</code>. For example, you can filter your results to return only <code>UNTAGGED</code> images and then pipe that result to a <a>BatchDeleteImage</a> operation to delete them. Or, you can filter your results to return only <code>TAGGED</code> images to list all of the tags in your repository.</p>

#### `putImage`

``` purescript
putImage :: forall eff. PutImageRequest -> Aff (exception :: EXCEPTION | eff) PutImageResponse
```

<p>Creates or updates the image manifest and tags associated with an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `putLifecyclePolicy`

``` purescript
putLifecyclePolicy :: forall eff. PutLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) PutLifecyclePolicyResponse
```

<p>Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html">Lifecycle Policy Template</a>.</p>

#### `setRepositoryPolicy`

``` purescript
setRepositoryPolicy :: forall eff. SetRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) SetRepositoryPolicyResponse
```

<p>Applies a repository policy on a specified repository to control access permissions.</p>

#### `startLifecyclePolicyPreview`

``` purescript
startLifecyclePolicyPreview :: forall eff. StartLifecyclePolicyPreviewRequest -> Aff (exception :: EXCEPTION | eff) StartLifecyclePolicyPreviewResponse
```

<p>Starts a preview of the specified lifecycle policy. This allows you to see the results before creating the lifecycle policy.</p>

#### `uploadLayerPart`

``` purescript
uploadLayerPart :: forall eff. UploadLayerPartRequest -> Aff (exception :: EXCEPTION | eff) UploadLayerPartResponse
```

<p>Uploads an image layer part to Amazon ECR.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `Arn`

``` purescript
newtype Arn
  = Arn String
```

##### Instances
``` purescript
Newtype Arn _
Generic Arn _
Show Arn
Decode Arn
Encode Arn
```

#### `AuthorizationData`

``` purescript
newtype AuthorizationData
  = AuthorizationData { authorizationToken :: NullOrUndefined (Base64), expiresAt :: NullOrUndefined (ExpirationTimestamp), proxyEndpoint :: NullOrUndefined (ProxyEndpoint) }
```

<p>An object representing authorization data for an Amazon ECR registry.</p>

##### Instances
``` purescript
Newtype AuthorizationData _
Generic AuthorizationData _
Show AuthorizationData
Decode AuthorizationData
Encode AuthorizationData
```

#### `newAuthorizationData`

``` purescript
newAuthorizationData :: AuthorizationData
```

Constructs AuthorizationData from required parameters

#### `newAuthorizationData'`

``` purescript
newAuthorizationData' :: ({ authorizationToken :: NullOrUndefined (Base64), expiresAt :: NullOrUndefined (ExpirationTimestamp), proxyEndpoint :: NullOrUndefined (ProxyEndpoint) } -> { authorizationToken :: NullOrUndefined (Base64), expiresAt :: NullOrUndefined (ExpirationTimestamp), proxyEndpoint :: NullOrUndefined (ProxyEndpoint) }) -> AuthorizationData
```

Constructs AuthorizationData's fields from required parameters

#### `AuthorizationDataList`

``` purescript
newtype AuthorizationDataList
  = AuthorizationDataList (Array AuthorizationData)
```

##### Instances
``` purescript
Newtype AuthorizationDataList _
Generic AuthorizationDataList _
Show AuthorizationDataList
Decode AuthorizationDataList
Encode AuthorizationDataList
```

#### `Base64`

``` purescript
newtype Base64
  = Base64 String
```

##### Instances
``` purescript
Newtype Base64 _
Generic Base64 _
Show Base64
Decode Base64
Encode Base64
```

#### `BatchCheckLayerAvailabilityRequest`

``` purescript
newtype BatchCheckLayerAvailabilityRequest
  = BatchCheckLayerAvailabilityRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, layerDigests :: BatchedOperationLayerDigestList }
```

##### Instances
``` purescript
Newtype BatchCheckLayerAvailabilityRequest _
Generic BatchCheckLayerAvailabilityRequest _
Show BatchCheckLayerAvailabilityRequest
Decode BatchCheckLayerAvailabilityRequest
Encode BatchCheckLayerAvailabilityRequest
```

#### `newBatchCheckLayerAvailabilityRequest`

``` purescript
newBatchCheckLayerAvailabilityRequest :: BatchedOperationLayerDigestList -> RepositoryName -> BatchCheckLayerAvailabilityRequest
```

Constructs BatchCheckLayerAvailabilityRequest from required parameters

#### `newBatchCheckLayerAvailabilityRequest'`

``` purescript
newBatchCheckLayerAvailabilityRequest' :: BatchedOperationLayerDigestList -> RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, layerDigests :: BatchedOperationLayerDigestList } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, layerDigests :: BatchedOperationLayerDigestList }) -> BatchCheckLayerAvailabilityRequest
```

Constructs BatchCheckLayerAvailabilityRequest's fields from required parameters

#### `BatchCheckLayerAvailabilityResponse`

``` purescript
newtype BatchCheckLayerAvailabilityResponse
  = BatchCheckLayerAvailabilityResponse { layers :: NullOrUndefined (LayerList), failures :: NullOrUndefined (LayerFailureList) }
```

##### Instances
``` purescript
Newtype BatchCheckLayerAvailabilityResponse _
Generic BatchCheckLayerAvailabilityResponse _
Show BatchCheckLayerAvailabilityResponse
Decode BatchCheckLayerAvailabilityResponse
Encode BatchCheckLayerAvailabilityResponse
```

#### `newBatchCheckLayerAvailabilityResponse`

``` purescript
newBatchCheckLayerAvailabilityResponse :: BatchCheckLayerAvailabilityResponse
```

Constructs BatchCheckLayerAvailabilityResponse from required parameters

#### `newBatchCheckLayerAvailabilityResponse'`

``` purescript
newBatchCheckLayerAvailabilityResponse' :: ({ layers :: NullOrUndefined (LayerList), failures :: NullOrUndefined (LayerFailureList) } -> { layers :: NullOrUndefined (LayerList), failures :: NullOrUndefined (LayerFailureList) }) -> BatchCheckLayerAvailabilityResponse
```

Constructs BatchCheckLayerAvailabilityResponse's fields from required parameters

#### `BatchDeleteImageRequest`

``` purescript
newtype BatchDeleteImageRequest
  = BatchDeleteImageRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList }
```

<p>Deletes specified images within a specified repository. Images are specified with either the <code>imageTag</code> or <code>imageDigest</code>.</p>

##### Instances
``` purescript
Newtype BatchDeleteImageRequest _
Generic BatchDeleteImageRequest _
Show BatchDeleteImageRequest
Decode BatchDeleteImageRequest
Encode BatchDeleteImageRequest
```

#### `newBatchDeleteImageRequest`

``` purescript
newBatchDeleteImageRequest :: ImageIdentifierList -> RepositoryName -> BatchDeleteImageRequest
```

Constructs BatchDeleteImageRequest from required parameters

#### `newBatchDeleteImageRequest'`

``` purescript
newBatchDeleteImageRequest' :: ImageIdentifierList -> RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList }) -> BatchDeleteImageRequest
```

Constructs BatchDeleteImageRequest's fields from required parameters

#### `BatchDeleteImageResponse`

``` purescript
newtype BatchDeleteImageResponse
  = BatchDeleteImageResponse { imageIds :: NullOrUndefined (ImageIdentifierList), failures :: NullOrUndefined (ImageFailureList) }
```

##### Instances
``` purescript
Newtype BatchDeleteImageResponse _
Generic BatchDeleteImageResponse _
Show BatchDeleteImageResponse
Decode BatchDeleteImageResponse
Encode BatchDeleteImageResponse
```

#### `newBatchDeleteImageResponse`

``` purescript
newBatchDeleteImageResponse :: BatchDeleteImageResponse
```

Constructs BatchDeleteImageResponse from required parameters

#### `newBatchDeleteImageResponse'`

``` purescript
newBatchDeleteImageResponse' :: ({ imageIds :: NullOrUndefined (ImageIdentifierList), failures :: NullOrUndefined (ImageFailureList) } -> { imageIds :: NullOrUndefined (ImageIdentifierList), failures :: NullOrUndefined (ImageFailureList) }) -> BatchDeleteImageResponse
```

Constructs BatchDeleteImageResponse's fields from required parameters

#### `BatchGetImageRequest`

``` purescript
newtype BatchGetImageRequest
  = BatchGetImageRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList, acceptedMediaTypes :: NullOrUndefined (MediaTypeList) }
```

##### Instances
``` purescript
Newtype BatchGetImageRequest _
Generic BatchGetImageRequest _
Show BatchGetImageRequest
Decode BatchGetImageRequest
Encode BatchGetImageRequest
```

#### `newBatchGetImageRequest`

``` purescript
newBatchGetImageRequest :: ImageIdentifierList -> RepositoryName -> BatchGetImageRequest
```

Constructs BatchGetImageRequest from required parameters

#### `newBatchGetImageRequest'`

``` purescript
newBatchGetImageRequest' :: ImageIdentifierList -> RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList, acceptedMediaTypes :: NullOrUndefined (MediaTypeList) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList, acceptedMediaTypes :: NullOrUndefined (MediaTypeList) }) -> BatchGetImageRequest
```

Constructs BatchGetImageRequest's fields from required parameters

#### `BatchGetImageResponse`

``` purescript
newtype BatchGetImageResponse
  = BatchGetImageResponse { images :: NullOrUndefined (ImageList), failures :: NullOrUndefined (ImageFailureList) }
```

##### Instances
``` purescript
Newtype BatchGetImageResponse _
Generic BatchGetImageResponse _
Show BatchGetImageResponse
Decode BatchGetImageResponse
Encode BatchGetImageResponse
```

#### `newBatchGetImageResponse`

``` purescript
newBatchGetImageResponse :: BatchGetImageResponse
```

Constructs BatchGetImageResponse from required parameters

#### `newBatchGetImageResponse'`

``` purescript
newBatchGetImageResponse' :: ({ images :: NullOrUndefined (ImageList), failures :: NullOrUndefined (ImageFailureList) } -> { images :: NullOrUndefined (ImageList), failures :: NullOrUndefined (ImageFailureList) }) -> BatchGetImageResponse
```

Constructs BatchGetImageResponse's fields from required parameters

#### `BatchedOperationLayerDigest`

``` purescript
newtype BatchedOperationLayerDigest
  = BatchedOperationLayerDigest String
```

##### Instances
``` purescript
Newtype BatchedOperationLayerDigest _
Generic BatchedOperationLayerDigest _
Show BatchedOperationLayerDigest
Decode BatchedOperationLayerDigest
Encode BatchedOperationLayerDigest
```

#### `BatchedOperationLayerDigestList`

``` purescript
newtype BatchedOperationLayerDigestList
  = BatchedOperationLayerDigestList (Array BatchedOperationLayerDigest)
```

##### Instances
``` purescript
Newtype BatchedOperationLayerDigestList _
Generic BatchedOperationLayerDigestList _
Show BatchedOperationLayerDigestList
Decode BatchedOperationLayerDigestList
Encode BatchedOperationLayerDigestList
```

#### `CompleteLayerUploadRequest`

``` purescript
newtype CompleteLayerUploadRequest
  = CompleteLayerUploadRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, layerDigests :: LayerDigestList }
```

##### Instances
``` purescript
Newtype CompleteLayerUploadRequest _
Generic CompleteLayerUploadRequest _
Show CompleteLayerUploadRequest
Decode CompleteLayerUploadRequest
Encode CompleteLayerUploadRequest
```

#### `newCompleteLayerUploadRequest`

``` purescript
newCompleteLayerUploadRequest :: LayerDigestList -> RepositoryName -> UploadId -> CompleteLayerUploadRequest
```

Constructs CompleteLayerUploadRequest from required parameters

#### `newCompleteLayerUploadRequest'`

``` purescript
newCompleteLayerUploadRequest' :: LayerDigestList -> RepositoryName -> UploadId -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, layerDigests :: LayerDigestList } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, layerDigests :: LayerDigestList }) -> CompleteLayerUploadRequest
```

Constructs CompleteLayerUploadRequest's fields from required parameters

#### `CompleteLayerUploadResponse`

``` purescript
newtype CompleteLayerUploadResponse
  = CompleteLayerUploadResponse { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), uploadId :: NullOrUndefined (UploadId), layerDigest :: NullOrUndefined (LayerDigest) }
```

##### Instances
``` purescript
Newtype CompleteLayerUploadResponse _
Generic CompleteLayerUploadResponse _
Show CompleteLayerUploadResponse
Decode CompleteLayerUploadResponse
Encode CompleteLayerUploadResponse
```

#### `newCompleteLayerUploadResponse`

``` purescript
newCompleteLayerUploadResponse :: CompleteLayerUploadResponse
```

Constructs CompleteLayerUploadResponse from required parameters

#### `newCompleteLayerUploadResponse'`

``` purescript
newCompleteLayerUploadResponse' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), uploadId :: NullOrUndefined (UploadId), layerDigest :: NullOrUndefined (LayerDigest) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), uploadId :: NullOrUndefined (UploadId), layerDigest :: NullOrUndefined (LayerDigest) }) -> CompleteLayerUploadResponse
```

Constructs CompleteLayerUploadResponse's fields from required parameters

#### `CreateRepositoryRequest`

``` purescript
newtype CreateRepositoryRequest
  = CreateRepositoryRequest { repositoryName :: RepositoryName }
```

##### Instances
``` purescript
Newtype CreateRepositoryRequest _
Generic CreateRepositoryRequest _
Show CreateRepositoryRequest
Decode CreateRepositoryRequest
Encode CreateRepositoryRequest
```

#### `newCreateRepositoryRequest`

``` purescript
newCreateRepositoryRequest :: RepositoryName -> CreateRepositoryRequest
```

Constructs CreateRepositoryRequest from required parameters

#### `newCreateRepositoryRequest'`

``` purescript
newCreateRepositoryRequest' :: RepositoryName -> ({ repositoryName :: RepositoryName } -> { repositoryName :: RepositoryName }) -> CreateRepositoryRequest
```

Constructs CreateRepositoryRequest's fields from required parameters

#### `CreateRepositoryResponse`

``` purescript
newtype CreateRepositoryResponse
  = CreateRepositoryResponse { repository :: NullOrUndefined (Repository) }
```

##### Instances
``` purescript
Newtype CreateRepositoryResponse _
Generic CreateRepositoryResponse _
Show CreateRepositoryResponse
Decode CreateRepositoryResponse
Encode CreateRepositoryResponse
```

#### `newCreateRepositoryResponse`

``` purescript
newCreateRepositoryResponse :: CreateRepositoryResponse
```

Constructs CreateRepositoryResponse from required parameters

#### `newCreateRepositoryResponse'`

``` purescript
newCreateRepositoryResponse' :: ({ repository :: NullOrUndefined (Repository) } -> { repository :: NullOrUndefined (Repository) }) -> CreateRepositoryResponse
```

Constructs CreateRepositoryResponse's fields from required parameters

#### `CreationTimestamp`

``` purescript
newtype CreationTimestamp
  = CreationTimestamp Timestamp
```

##### Instances
``` purescript
Newtype CreationTimestamp _
Generic CreationTimestamp _
Show CreationTimestamp
Decode CreationTimestamp
Encode CreationTimestamp
```

#### `DeleteLifecyclePolicyRequest`

``` purescript
newtype DeleteLifecyclePolicyRequest
  = DeleteLifecyclePolicyRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName }
```

##### Instances
``` purescript
Newtype DeleteLifecyclePolicyRequest _
Generic DeleteLifecyclePolicyRequest _
Show DeleteLifecyclePolicyRequest
Decode DeleteLifecyclePolicyRequest
Encode DeleteLifecyclePolicyRequest
```

#### `newDeleteLifecyclePolicyRequest`

``` purescript
newDeleteLifecyclePolicyRequest :: RepositoryName -> DeleteLifecyclePolicyRequest
```

Constructs DeleteLifecyclePolicyRequest from required parameters

#### `newDeleteLifecyclePolicyRequest'`

``` purescript
newDeleteLifecyclePolicyRequest' :: RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName }) -> DeleteLifecyclePolicyRequest
```

Constructs DeleteLifecyclePolicyRequest's fields from required parameters

#### `DeleteLifecyclePolicyResponse`

``` purescript
newtype DeleteLifecyclePolicyResponse
  = DeleteLifecyclePolicyResponse { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), lastEvaluatedAt :: NullOrUndefined (EvaluationTimestamp) }
```

##### Instances
``` purescript
Newtype DeleteLifecyclePolicyResponse _
Generic DeleteLifecyclePolicyResponse _
Show DeleteLifecyclePolicyResponse
Decode DeleteLifecyclePolicyResponse
Encode DeleteLifecyclePolicyResponse
```

#### `newDeleteLifecyclePolicyResponse`

``` purescript
newDeleteLifecyclePolicyResponse :: DeleteLifecyclePolicyResponse
```

Constructs DeleteLifecyclePolicyResponse from required parameters

#### `newDeleteLifecyclePolicyResponse'`

``` purescript
newDeleteLifecyclePolicyResponse' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), lastEvaluatedAt :: NullOrUndefined (EvaluationTimestamp) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), lastEvaluatedAt :: NullOrUndefined (EvaluationTimestamp) }) -> DeleteLifecyclePolicyResponse
```

Constructs DeleteLifecyclePolicyResponse's fields from required parameters

#### `DeleteRepositoryPolicyRequest`

``` purescript
newtype DeleteRepositoryPolicyRequest
  = DeleteRepositoryPolicyRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName }
```

##### Instances
``` purescript
Newtype DeleteRepositoryPolicyRequest _
Generic DeleteRepositoryPolicyRequest _
Show DeleteRepositoryPolicyRequest
Decode DeleteRepositoryPolicyRequest
Encode DeleteRepositoryPolicyRequest
```

#### `newDeleteRepositoryPolicyRequest`

``` purescript
newDeleteRepositoryPolicyRequest :: RepositoryName -> DeleteRepositoryPolicyRequest
```

Constructs DeleteRepositoryPolicyRequest from required parameters

#### `newDeleteRepositoryPolicyRequest'`

``` purescript
newDeleteRepositoryPolicyRequest' :: RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName }) -> DeleteRepositoryPolicyRequest
```

Constructs DeleteRepositoryPolicyRequest's fields from required parameters

#### `DeleteRepositoryPolicyResponse`

``` purescript
newtype DeleteRepositoryPolicyResponse
  = DeleteRepositoryPolicyResponse { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), policyText :: NullOrUndefined (RepositoryPolicyText) }
```

##### Instances
``` purescript
Newtype DeleteRepositoryPolicyResponse _
Generic DeleteRepositoryPolicyResponse _
Show DeleteRepositoryPolicyResponse
Decode DeleteRepositoryPolicyResponse
Encode DeleteRepositoryPolicyResponse
```

#### `newDeleteRepositoryPolicyResponse`

``` purescript
newDeleteRepositoryPolicyResponse :: DeleteRepositoryPolicyResponse
```

Constructs DeleteRepositoryPolicyResponse from required parameters

#### `newDeleteRepositoryPolicyResponse'`

``` purescript
newDeleteRepositoryPolicyResponse' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), policyText :: NullOrUndefined (RepositoryPolicyText) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), policyText :: NullOrUndefined (RepositoryPolicyText) }) -> DeleteRepositoryPolicyResponse
```

Constructs DeleteRepositoryPolicyResponse's fields from required parameters

#### `DeleteRepositoryRequest`

``` purescript
newtype DeleteRepositoryRequest
  = DeleteRepositoryRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, force :: NullOrUndefined (ForceFlag) }
```

##### Instances
``` purescript
Newtype DeleteRepositoryRequest _
Generic DeleteRepositoryRequest _
Show DeleteRepositoryRequest
Decode DeleteRepositoryRequest
Encode DeleteRepositoryRequest
```

#### `newDeleteRepositoryRequest`

``` purescript
newDeleteRepositoryRequest :: RepositoryName -> DeleteRepositoryRequest
```

Constructs DeleteRepositoryRequest from required parameters

#### `newDeleteRepositoryRequest'`

``` purescript
newDeleteRepositoryRequest' :: RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, force :: NullOrUndefined (ForceFlag) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, force :: NullOrUndefined (ForceFlag) }) -> DeleteRepositoryRequest
```

Constructs DeleteRepositoryRequest's fields from required parameters

#### `DeleteRepositoryResponse`

``` purescript
newtype DeleteRepositoryResponse
  = DeleteRepositoryResponse { repository :: NullOrUndefined (Repository) }
```

##### Instances
``` purescript
Newtype DeleteRepositoryResponse _
Generic DeleteRepositoryResponse _
Show DeleteRepositoryResponse
Decode DeleteRepositoryResponse
Encode DeleteRepositoryResponse
```

#### `newDeleteRepositoryResponse`

``` purescript
newDeleteRepositoryResponse :: DeleteRepositoryResponse
```

Constructs DeleteRepositoryResponse from required parameters

#### `newDeleteRepositoryResponse'`

``` purescript
newDeleteRepositoryResponse' :: ({ repository :: NullOrUndefined (Repository) } -> { repository :: NullOrUndefined (Repository) }) -> DeleteRepositoryResponse
```

Constructs DeleteRepositoryResponse's fields from required parameters

#### `DescribeImagesFilter`

``` purescript
newtype DescribeImagesFilter
  = DescribeImagesFilter { tagStatus :: NullOrUndefined (TagStatus) }
```

<p>An object representing a filter on a <a>DescribeImages</a> operation.</p>

##### Instances
``` purescript
Newtype DescribeImagesFilter _
Generic DescribeImagesFilter _
Show DescribeImagesFilter
Decode DescribeImagesFilter
Encode DescribeImagesFilter
```

#### `newDescribeImagesFilter`

``` purescript
newDescribeImagesFilter :: DescribeImagesFilter
```

Constructs DescribeImagesFilter from required parameters

#### `newDescribeImagesFilter'`

``` purescript
newDescribeImagesFilter' :: ({ tagStatus :: NullOrUndefined (TagStatus) } -> { tagStatus :: NullOrUndefined (TagStatus) }) -> DescribeImagesFilter
```

Constructs DescribeImagesFilter's fields from required parameters

#### `DescribeImagesRequest`

``` purescript
newtype DescribeImagesRequest
  = DescribeImagesRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: NullOrUndefined (ImageIdentifierList), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults), filter :: NullOrUndefined (DescribeImagesFilter) }
```

##### Instances
``` purescript
Newtype DescribeImagesRequest _
Generic DescribeImagesRequest _
Show DescribeImagesRequest
Decode DescribeImagesRequest
Encode DescribeImagesRequest
```

#### `newDescribeImagesRequest`

``` purescript
newDescribeImagesRequest :: RepositoryName -> DescribeImagesRequest
```

Constructs DescribeImagesRequest from required parameters

#### `newDescribeImagesRequest'`

``` purescript
newDescribeImagesRequest' :: RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: NullOrUndefined (ImageIdentifierList), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults), filter :: NullOrUndefined (DescribeImagesFilter) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: NullOrUndefined (ImageIdentifierList), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults), filter :: NullOrUndefined (DescribeImagesFilter) }) -> DescribeImagesRequest
```

Constructs DescribeImagesRequest's fields from required parameters

#### `DescribeImagesResponse`

``` purescript
newtype DescribeImagesResponse
  = DescribeImagesResponse { imageDetails :: NullOrUndefined (ImageDetailList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeImagesResponse _
Generic DescribeImagesResponse _
Show DescribeImagesResponse
Decode DescribeImagesResponse
Encode DescribeImagesResponse
```

#### `newDescribeImagesResponse`

``` purescript
newDescribeImagesResponse :: DescribeImagesResponse
```

Constructs DescribeImagesResponse from required parameters

#### `newDescribeImagesResponse'`

``` purescript
newDescribeImagesResponse' :: ({ imageDetails :: NullOrUndefined (ImageDetailList), nextToken :: NullOrUndefined (NextToken) } -> { imageDetails :: NullOrUndefined (ImageDetailList), nextToken :: NullOrUndefined (NextToken) }) -> DescribeImagesResponse
```

Constructs DescribeImagesResponse's fields from required parameters

#### `DescribeRepositoriesRequest`

``` purescript
newtype DescribeRepositoriesRequest
  = DescribeRepositoriesRequest { registryId :: NullOrUndefined (RegistryId), repositoryNames :: NullOrUndefined (RepositoryNameList), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) }
```

##### Instances
``` purescript
Newtype DescribeRepositoriesRequest _
Generic DescribeRepositoriesRequest _
Show DescribeRepositoriesRequest
Decode DescribeRepositoriesRequest
Encode DescribeRepositoriesRequest
```

#### `newDescribeRepositoriesRequest`

``` purescript
newDescribeRepositoriesRequest :: DescribeRepositoriesRequest
```

Constructs DescribeRepositoriesRequest from required parameters

#### `newDescribeRepositoriesRequest'`

``` purescript
newDescribeRepositoriesRequest' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryNames :: NullOrUndefined (RepositoryNameList), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) } -> { registryId :: NullOrUndefined (RegistryId), repositoryNames :: NullOrUndefined (RepositoryNameList), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) }) -> DescribeRepositoriesRequest
```

Constructs DescribeRepositoriesRequest's fields from required parameters

#### `DescribeRepositoriesResponse`

``` purescript
newtype DescribeRepositoriesResponse
  = DescribeRepositoriesResponse { repositories :: NullOrUndefined (RepositoryList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeRepositoriesResponse _
Generic DescribeRepositoriesResponse _
Show DescribeRepositoriesResponse
Decode DescribeRepositoriesResponse
Encode DescribeRepositoriesResponse
```

#### `newDescribeRepositoriesResponse`

``` purescript
newDescribeRepositoriesResponse :: DescribeRepositoriesResponse
```

Constructs DescribeRepositoriesResponse from required parameters

#### `newDescribeRepositoriesResponse'`

``` purescript
newDescribeRepositoriesResponse' :: ({ repositories :: NullOrUndefined (RepositoryList), nextToken :: NullOrUndefined (NextToken) } -> { repositories :: NullOrUndefined (RepositoryList), nextToken :: NullOrUndefined (NextToken) }) -> DescribeRepositoriesResponse
```

Constructs DescribeRepositoriesResponse's fields from required parameters

#### `EmptyUploadException`

``` purescript
newtype EmptyUploadException
  = EmptyUploadException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The specified layer upload does not contain any layer parts.</p>

##### Instances
``` purescript
Newtype EmptyUploadException _
Generic EmptyUploadException _
Show EmptyUploadException
Decode EmptyUploadException
Encode EmptyUploadException
```

#### `newEmptyUploadException`

``` purescript
newEmptyUploadException :: EmptyUploadException
```

Constructs EmptyUploadException from required parameters

#### `newEmptyUploadException'`

``` purescript
newEmptyUploadException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> EmptyUploadException
```

Constructs EmptyUploadException's fields from required parameters

#### `EvaluationTimestamp`

``` purescript
newtype EvaluationTimestamp
  = EvaluationTimestamp Timestamp
```

##### Instances
``` purescript
Newtype EvaluationTimestamp _
Generic EvaluationTimestamp _
Show EvaluationTimestamp
Decode EvaluationTimestamp
Encode EvaluationTimestamp
```

#### `ExceptionMessage`

``` purescript
newtype ExceptionMessage
  = ExceptionMessage String
```

##### Instances
``` purescript
Newtype ExceptionMessage _
Generic ExceptionMessage _
Show ExceptionMessage
Decode ExceptionMessage
Encode ExceptionMessage
```

#### `ExpirationTimestamp`

``` purescript
newtype ExpirationTimestamp
  = ExpirationTimestamp Timestamp
```

##### Instances
``` purescript
Newtype ExpirationTimestamp _
Generic ExpirationTimestamp _
Show ExpirationTimestamp
Decode ExpirationTimestamp
Encode ExpirationTimestamp
```

#### `ForceFlag`

``` purescript
newtype ForceFlag
  = ForceFlag Boolean
```

##### Instances
``` purescript
Newtype ForceFlag _
Generic ForceFlag _
Show ForceFlag
Decode ForceFlag
Encode ForceFlag
```

#### `GetAuthorizationTokenRegistryIdList`

``` purescript
newtype GetAuthorizationTokenRegistryIdList
  = GetAuthorizationTokenRegistryIdList (Array RegistryId)
```

##### Instances
``` purescript
Newtype GetAuthorizationTokenRegistryIdList _
Generic GetAuthorizationTokenRegistryIdList _
Show GetAuthorizationTokenRegistryIdList
Decode GetAuthorizationTokenRegistryIdList
Encode GetAuthorizationTokenRegistryIdList
```

#### `GetAuthorizationTokenRequest`

``` purescript
newtype GetAuthorizationTokenRequest
  = GetAuthorizationTokenRequest { registryIds :: NullOrUndefined (GetAuthorizationTokenRegistryIdList) }
```

##### Instances
``` purescript
Newtype GetAuthorizationTokenRequest _
Generic GetAuthorizationTokenRequest _
Show GetAuthorizationTokenRequest
Decode GetAuthorizationTokenRequest
Encode GetAuthorizationTokenRequest
```

#### `newGetAuthorizationTokenRequest`

``` purescript
newGetAuthorizationTokenRequest :: GetAuthorizationTokenRequest
```

Constructs GetAuthorizationTokenRequest from required parameters

#### `newGetAuthorizationTokenRequest'`

``` purescript
newGetAuthorizationTokenRequest' :: ({ registryIds :: NullOrUndefined (GetAuthorizationTokenRegistryIdList) } -> { registryIds :: NullOrUndefined (GetAuthorizationTokenRegistryIdList) }) -> GetAuthorizationTokenRequest
```

Constructs GetAuthorizationTokenRequest's fields from required parameters

#### `GetAuthorizationTokenResponse`

``` purescript
newtype GetAuthorizationTokenResponse
  = GetAuthorizationTokenResponse { authorizationData :: NullOrUndefined (AuthorizationDataList) }
```

##### Instances
``` purescript
Newtype GetAuthorizationTokenResponse _
Generic GetAuthorizationTokenResponse _
Show GetAuthorizationTokenResponse
Decode GetAuthorizationTokenResponse
Encode GetAuthorizationTokenResponse
```

#### `newGetAuthorizationTokenResponse`

``` purescript
newGetAuthorizationTokenResponse :: GetAuthorizationTokenResponse
```

Constructs GetAuthorizationTokenResponse from required parameters

#### `newGetAuthorizationTokenResponse'`

``` purescript
newGetAuthorizationTokenResponse' :: ({ authorizationData :: NullOrUndefined (AuthorizationDataList) } -> { authorizationData :: NullOrUndefined (AuthorizationDataList) }) -> GetAuthorizationTokenResponse
```

Constructs GetAuthorizationTokenResponse's fields from required parameters

#### `GetDownloadUrlForLayerRequest`

``` purescript
newtype GetDownloadUrlForLayerRequest
  = GetDownloadUrlForLayerRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, layerDigest :: LayerDigest }
```

##### Instances
``` purescript
Newtype GetDownloadUrlForLayerRequest _
Generic GetDownloadUrlForLayerRequest _
Show GetDownloadUrlForLayerRequest
Decode GetDownloadUrlForLayerRequest
Encode GetDownloadUrlForLayerRequest
```

#### `newGetDownloadUrlForLayerRequest`

``` purescript
newGetDownloadUrlForLayerRequest :: LayerDigest -> RepositoryName -> GetDownloadUrlForLayerRequest
```

Constructs GetDownloadUrlForLayerRequest from required parameters

#### `newGetDownloadUrlForLayerRequest'`

``` purescript
newGetDownloadUrlForLayerRequest' :: LayerDigest -> RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, layerDigest :: LayerDigest } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, layerDigest :: LayerDigest }) -> GetDownloadUrlForLayerRequest
```

Constructs GetDownloadUrlForLayerRequest's fields from required parameters

#### `GetDownloadUrlForLayerResponse`

``` purescript
newtype GetDownloadUrlForLayerResponse
  = GetDownloadUrlForLayerResponse { downloadUrl :: NullOrUndefined (Url), layerDigest :: NullOrUndefined (LayerDigest) }
```

##### Instances
``` purescript
Newtype GetDownloadUrlForLayerResponse _
Generic GetDownloadUrlForLayerResponse _
Show GetDownloadUrlForLayerResponse
Decode GetDownloadUrlForLayerResponse
Encode GetDownloadUrlForLayerResponse
```

#### `newGetDownloadUrlForLayerResponse`

``` purescript
newGetDownloadUrlForLayerResponse :: GetDownloadUrlForLayerResponse
```

Constructs GetDownloadUrlForLayerResponse from required parameters

#### `newGetDownloadUrlForLayerResponse'`

``` purescript
newGetDownloadUrlForLayerResponse' :: ({ downloadUrl :: NullOrUndefined (Url), layerDigest :: NullOrUndefined (LayerDigest) } -> { downloadUrl :: NullOrUndefined (Url), layerDigest :: NullOrUndefined (LayerDigest) }) -> GetDownloadUrlForLayerResponse
```

Constructs GetDownloadUrlForLayerResponse's fields from required parameters

#### `GetLifecyclePolicyPreviewRequest`

``` purescript
newtype GetLifecyclePolicyPreviewRequest
  = GetLifecyclePolicyPreviewRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: NullOrUndefined (ImageIdentifierList), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults), filter :: NullOrUndefined (LifecyclePolicyPreviewFilter) }
```

##### Instances
``` purescript
Newtype GetLifecyclePolicyPreviewRequest _
Generic GetLifecyclePolicyPreviewRequest _
Show GetLifecyclePolicyPreviewRequest
Decode GetLifecyclePolicyPreviewRequest
Encode GetLifecyclePolicyPreviewRequest
```

#### `newGetLifecyclePolicyPreviewRequest`

``` purescript
newGetLifecyclePolicyPreviewRequest :: RepositoryName -> GetLifecyclePolicyPreviewRequest
```

Constructs GetLifecyclePolicyPreviewRequest from required parameters

#### `newGetLifecyclePolicyPreviewRequest'`

``` purescript
newGetLifecyclePolicyPreviewRequest' :: RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: NullOrUndefined (ImageIdentifierList), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults), filter :: NullOrUndefined (LifecyclePolicyPreviewFilter) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageIds :: NullOrUndefined (ImageIdentifierList), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults), filter :: NullOrUndefined (LifecyclePolicyPreviewFilter) }) -> GetLifecyclePolicyPreviewRequest
```

Constructs GetLifecyclePolicyPreviewRequest's fields from required parameters

#### `GetLifecyclePolicyPreviewResponse`

``` purescript
newtype GetLifecyclePolicyPreviewResponse
  = GetLifecyclePolicyPreviewResponse { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), status :: NullOrUndefined (LifecyclePolicyPreviewStatus), nextToken :: NullOrUndefined (NextToken), previewResults :: NullOrUndefined (LifecyclePolicyPreviewResultList), summary :: NullOrUndefined (LifecyclePolicyPreviewSummary) }
```

##### Instances
``` purescript
Newtype GetLifecyclePolicyPreviewResponse _
Generic GetLifecyclePolicyPreviewResponse _
Show GetLifecyclePolicyPreviewResponse
Decode GetLifecyclePolicyPreviewResponse
Encode GetLifecyclePolicyPreviewResponse
```

#### `newGetLifecyclePolicyPreviewResponse`

``` purescript
newGetLifecyclePolicyPreviewResponse :: GetLifecyclePolicyPreviewResponse
```

Constructs GetLifecyclePolicyPreviewResponse from required parameters

#### `newGetLifecyclePolicyPreviewResponse'`

``` purescript
newGetLifecyclePolicyPreviewResponse' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), status :: NullOrUndefined (LifecyclePolicyPreviewStatus), nextToken :: NullOrUndefined (NextToken), previewResults :: NullOrUndefined (LifecyclePolicyPreviewResultList), summary :: NullOrUndefined (LifecyclePolicyPreviewSummary) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), status :: NullOrUndefined (LifecyclePolicyPreviewStatus), nextToken :: NullOrUndefined (NextToken), previewResults :: NullOrUndefined (LifecyclePolicyPreviewResultList), summary :: NullOrUndefined (LifecyclePolicyPreviewSummary) }) -> GetLifecyclePolicyPreviewResponse
```

Constructs GetLifecyclePolicyPreviewResponse's fields from required parameters

#### `GetLifecyclePolicyRequest`

``` purescript
newtype GetLifecyclePolicyRequest
  = GetLifecyclePolicyRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName }
```

##### Instances
``` purescript
Newtype GetLifecyclePolicyRequest _
Generic GetLifecyclePolicyRequest _
Show GetLifecyclePolicyRequest
Decode GetLifecyclePolicyRequest
Encode GetLifecyclePolicyRequest
```

#### `newGetLifecyclePolicyRequest`

``` purescript
newGetLifecyclePolicyRequest :: RepositoryName -> GetLifecyclePolicyRequest
```

Constructs GetLifecyclePolicyRequest from required parameters

#### `newGetLifecyclePolicyRequest'`

``` purescript
newGetLifecyclePolicyRequest' :: RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName }) -> GetLifecyclePolicyRequest
```

Constructs GetLifecyclePolicyRequest's fields from required parameters

#### `GetLifecyclePolicyResponse`

``` purescript
newtype GetLifecyclePolicyResponse
  = GetLifecyclePolicyResponse { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), lastEvaluatedAt :: NullOrUndefined (EvaluationTimestamp) }
```

##### Instances
``` purescript
Newtype GetLifecyclePolicyResponse _
Generic GetLifecyclePolicyResponse _
Show GetLifecyclePolicyResponse
Decode GetLifecyclePolicyResponse
Encode GetLifecyclePolicyResponse
```

#### `newGetLifecyclePolicyResponse`

``` purescript
newGetLifecyclePolicyResponse :: GetLifecyclePolicyResponse
```

Constructs GetLifecyclePolicyResponse from required parameters

#### `newGetLifecyclePolicyResponse'`

``` purescript
newGetLifecyclePolicyResponse' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), lastEvaluatedAt :: NullOrUndefined (EvaluationTimestamp) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), lastEvaluatedAt :: NullOrUndefined (EvaluationTimestamp) }) -> GetLifecyclePolicyResponse
```

Constructs GetLifecyclePolicyResponse's fields from required parameters

#### `GetRepositoryPolicyRequest`

``` purescript
newtype GetRepositoryPolicyRequest
  = GetRepositoryPolicyRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName }
```

##### Instances
``` purescript
Newtype GetRepositoryPolicyRequest _
Generic GetRepositoryPolicyRequest _
Show GetRepositoryPolicyRequest
Decode GetRepositoryPolicyRequest
Encode GetRepositoryPolicyRequest
```

#### `newGetRepositoryPolicyRequest`

``` purescript
newGetRepositoryPolicyRequest :: RepositoryName -> GetRepositoryPolicyRequest
```

Constructs GetRepositoryPolicyRequest from required parameters

#### `newGetRepositoryPolicyRequest'`

``` purescript
newGetRepositoryPolicyRequest' :: RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName }) -> GetRepositoryPolicyRequest
```

Constructs GetRepositoryPolicyRequest's fields from required parameters

#### `GetRepositoryPolicyResponse`

``` purescript
newtype GetRepositoryPolicyResponse
  = GetRepositoryPolicyResponse { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), policyText :: NullOrUndefined (RepositoryPolicyText) }
```

##### Instances
``` purescript
Newtype GetRepositoryPolicyResponse _
Generic GetRepositoryPolicyResponse _
Show GetRepositoryPolicyResponse
Decode GetRepositoryPolicyResponse
Encode GetRepositoryPolicyResponse
```

#### `newGetRepositoryPolicyResponse`

``` purescript
newGetRepositoryPolicyResponse :: GetRepositoryPolicyResponse
```

Constructs GetRepositoryPolicyResponse from required parameters

#### `newGetRepositoryPolicyResponse'`

``` purescript
newGetRepositoryPolicyResponse' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), policyText :: NullOrUndefined (RepositoryPolicyText) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), policyText :: NullOrUndefined (RepositoryPolicyText) }) -> GetRepositoryPolicyResponse
```

Constructs GetRepositoryPolicyResponse's fields from required parameters

#### `Image`

``` purescript
newtype Image
  = Image { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), imageId :: NullOrUndefined (ImageIdentifier), imageManifest :: NullOrUndefined (ImageManifest) }
```

<p>An object representing an Amazon ECR image.</p>

##### Instances
``` purescript
Newtype Image _
Generic Image _
Show Image
Decode Image
Encode Image
```

#### `newImage`

``` purescript
newImage :: Image
```

Constructs Image from required parameters

#### `newImage'`

``` purescript
newImage' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), imageId :: NullOrUndefined (ImageIdentifier), imageManifest :: NullOrUndefined (ImageManifest) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), imageId :: NullOrUndefined (ImageIdentifier), imageManifest :: NullOrUndefined (ImageManifest) }) -> Image
```

Constructs Image's fields from required parameters

#### `ImageActionType`

``` purescript
newtype ImageActionType
  = ImageActionType String
```

##### Instances
``` purescript
Newtype ImageActionType _
Generic ImageActionType _
Show ImageActionType
Decode ImageActionType
Encode ImageActionType
```

#### `ImageAlreadyExistsException`

``` purescript
newtype ImageAlreadyExistsException
  = ImageAlreadyExistsException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The specified image has already been pushed, and there were no changes to the manifest or image tag after the last push.</p>

##### Instances
``` purescript
Newtype ImageAlreadyExistsException _
Generic ImageAlreadyExistsException _
Show ImageAlreadyExistsException
Decode ImageAlreadyExistsException
Encode ImageAlreadyExistsException
```

#### `newImageAlreadyExistsException`

``` purescript
newImageAlreadyExistsException :: ImageAlreadyExistsException
```

Constructs ImageAlreadyExistsException from required parameters

#### `newImageAlreadyExistsException'`

``` purescript
newImageAlreadyExistsException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> ImageAlreadyExistsException
```

Constructs ImageAlreadyExistsException's fields from required parameters

#### `ImageCount`

``` purescript
newtype ImageCount
  = ImageCount Int
```

##### Instances
``` purescript
Newtype ImageCount _
Generic ImageCount _
Show ImageCount
Decode ImageCount
Encode ImageCount
```

#### `ImageDetail`

``` purescript
newtype ImageDetail
  = ImageDetail { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), imageDigest :: NullOrUndefined (ImageDigest), imageTags :: NullOrUndefined (ImageTagList), imageSizeInBytes :: NullOrUndefined (ImageSizeInBytes), imagePushedAt :: NullOrUndefined (PushTimestamp) }
```

<p>An object that describes an image returned by a <a>DescribeImages</a> operation.</p>

##### Instances
``` purescript
Newtype ImageDetail _
Generic ImageDetail _
Show ImageDetail
Decode ImageDetail
Encode ImageDetail
```

#### `newImageDetail`

``` purescript
newImageDetail :: ImageDetail
```

Constructs ImageDetail from required parameters

#### `newImageDetail'`

``` purescript
newImageDetail' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), imageDigest :: NullOrUndefined (ImageDigest), imageTags :: NullOrUndefined (ImageTagList), imageSizeInBytes :: NullOrUndefined (ImageSizeInBytes), imagePushedAt :: NullOrUndefined (PushTimestamp) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), imageDigest :: NullOrUndefined (ImageDigest), imageTags :: NullOrUndefined (ImageTagList), imageSizeInBytes :: NullOrUndefined (ImageSizeInBytes), imagePushedAt :: NullOrUndefined (PushTimestamp) }) -> ImageDetail
```

Constructs ImageDetail's fields from required parameters

#### `ImageDetailList`

``` purescript
newtype ImageDetailList
  = ImageDetailList (Array ImageDetail)
```

##### Instances
``` purescript
Newtype ImageDetailList _
Generic ImageDetailList _
Show ImageDetailList
Decode ImageDetailList
Encode ImageDetailList
```

#### `ImageDigest`

``` purescript
newtype ImageDigest
  = ImageDigest String
```

##### Instances
``` purescript
Newtype ImageDigest _
Generic ImageDigest _
Show ImageDigest
Decode ImageDigest
Encode ImageDigest
```

#### `ImageFailure`

``` purescript
newtype ImageFailure
  = ImageFailure { imageId :: NullOrUndefined (ImageIdentifier), failureCode :: NullOrUndefined (ImageFailureCode), failureReason :: NullOrUndefined (ImageFailureReason) }
```

<p>An object representing an Amazon ECR image failure.</p>

##### Instances
``` purescript
Newtype ImageFailure _
Generic ImageFailure _
Show ImageFailure
Decode ImageFailure
Encode ImageFailure
```

#### `newImageFailure`

``` purescript
newImageFailure :: ImageFailure
```

Constructs ImageFailure from required parameters

#### `newImageFailure'`

``` purescript
newImageFailure' :: ({ imageId :: NullOrUndefined (ImageIdentifier), failureCode :: NullOrUndefined (ImageFailureCode), failureReason :: NullOrUndefined (ImageFailureReason) } -> { imageId :: NullOrUndefined (ImageIdentifier), failureCode :: NullOrUndefined (ImageFailureCode), failureReason :: NullOrUndefined (ImageFailureReason) }) -> ImageFailure
```

Constructs ImageFailure's fields from required parameters

#### `ImageFailureCode`

``` purescript
newtype ImageFailureCode
  = ImageFailureCode String
```

##### Instances
``` purescript
Newtype ImageFailureCode _
Generic ImageFailureCode _
Show ImageFailureCode
Decode ImageFailureCode
Encode ImageFailureCode
```

#### `ImageFailureList`

``` purescript
newtype ImageFailureList
  = ImageFailureList (Array ImageFailure)
```

##### Instances
``` purescript
Newtype ImageFailureList _
Generic ImageFailureList _
Show ImageFailureList
Decode ImageFailureList
Encode ImageFailureList
```

#### `ImageFailureReason`

``` purescript
newtype ImageFailureReason
  = ImageFailureReason String
```

##### Instances
``` purescript
Newtype ImageFailureReason _
Generic ImageFailureReason _
Show ImageFailureReason
Decode ImageFailureReason
Encode ImageFailureReason
```

#### `ImageIdentifier`

``` purescript
newtype ImageIdentifier
  = ImageIdentifier { imageDigest :: NullOrUndefined (ImageDigest), imageTag :: NullOrUndefined (ImageTag) }
```

<p>An object with identifying information for an Amazon ECR image.</p>

##### Instances
``` purescript
Newtype ImageIdentifier _
Generic ImageIdentifier _
Show ImageIdentifier
Decode ImageIdentifier
Encode ImageIdentifier
```

#### `newImageIdentifier`

``` purescript
newImageIdentifier :: ImageIdentifier
```

Constructs ImageIdentifier from required parameters

#### `newImageIdentifier'`

``` purescript
newImageIdentifier' :: ({ imageDigest :: NullOrUndefined (ImageDigest), imageTag :: NullOrUndefined (ImageTag) } -> { imageDigest :: NullOrUndefined (ImageDigest), imageTag :: NullOrUndefined (ImageTag) }) -> ImageIdentifier
```

Constructs ImageIdentifier's fields from required parameters

#### `ImageIdentifierList`

``` purescript
newtype ImageIdentifierList
  = ImageIdentifierList (Array ImageIdentifier)
```

##### Instances
``` purescript
Newtype ImageIdentifierList _
Generic ImageIdentifierList _
Show ImageIdentifierList
Decode ImageIdentifierList
Encode ImageIdentifierList
```

#### `ImageList`

``` purescript
newtype ImageList
  = ImageList (Array Image)
```

##### Instances
``` purescript
Newtype ImageList _
Generic ImageList _
Show ImageList
Decode ImageList
Encode ImageList
```

#### `ImageManifest`

``` purescript
newtype ImageManifest
  = ImageManifest String
```

##### Instances
``` purescript
Newtype ImageManifest _
Generic ImageManifest _
Show ImageManifest
Decode ImageManifest
Encode ImageManifest
```

#### `ImageNotFoundException`

``` purescript
newtype ImageNotFoundException
  = ImageNotFoundException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The image requested does not exist in the specified repository.</p>

##### Instances
``` purescript
Newtype ImageNotFoundException _
Generic ImageNotFoundException _
Show ImageNotFoundException
Decode ImageNotFoundException
Encode ImageNotFoundException
```

#### `newImageNotFoundException`

``` purescript
newImageNotFoundException :: ImageNotFoundException
```

Constructs ImageNotFoundException from required parameters

#### `newImageNotFoundException'`

``` purescript
newImageNotFoundException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> ImageNotFoundException
```

Constructs ImageNotFoundException's fields from required parameters

#### `ImageSizeInBytes`

``` purescript
newtype ImageSizeInBytes
  = ImageSizeInBytes Number
```

##### Instances
``` purescript
Newtype ImageSizeInBytes _
Generic ImageSizeInBytes _
Show ImageSizeInBytes
Decode ImageSizeInBytes
Encode ImageSizeInBytes
```

#### `ImageTag`

``` purescript
newtype ImageTag
  = ImageTag String
```

##### Instances
``` purescript
Newtype ImageTag _
Generic ImageTag _
Show ImageTag
Decode ImageTag
Encode ImageTag
```

#### `ImageTagList`

``` purescript
newtype ImageTagList
  = ImageTagList (Array ImageTag)
```

##### Instances
``` purescript
Newtype ImageTagList _
Generic ImageTagList _
Show ImageTagList
Decode ImageTagList
Encode ImageTagList
```

#### `InitiateLayerUploadRequest`

``` purescript
newtype InitiateLayerUploadRequest
  = InitiateLayerUploadRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName }
```

##### Instances
``` purescript
Newtype InitiateLayerUploadRequest _
Generic InitiateLayerUploadRequest _
Show InitiateLayerUploadRequest
Decode InitiateLayerUploadRequest
Encode InitiateLayerUploadRequest
```

#### `newInitiateLayerUploadRequest`

``` purescript
newInitiateLayerUploadRequest :: RepositoryName -> InitiateLayerUploadRequest
```

Constructs InitiateLayerUploadRequest from required parameters

#### `newInitiateLayerUploadRequest'`

``` purescript
newInitiateLayerUploadRequest' :: RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName }) -> InitiateLayerUploadRequest
```

Constructs InitiateLayerUploadRequest's fields from required parameters

#### `InitiateLayerUploadResponse`

``` purescript
newtype InitiateLayerUploadResponse
  = InitiateLayerUploadResponse { uploadId :: NullOrUndefined (UploadId), partSize :: NullOrUndefined (PartSize) }
```

##### Instances
``` purescript
Newtype InitiateLayerUploadResponse _
Generic InitiateLayerUploadResponse _
Show InitiateLayerUploadResponse
Decode InitiateLayerUploadResponse
Encode InitiateLayerUploadResponse
```

#### `newInitiateLayerUploadResponse`

``` purescript
newInitiateLayerUploadResponse :: InitiateLayerUploadResponse
```

Constructs InitiateLayerUploadResponse from required parameters

#### `newInitiateLayerUploadResponse'`

``` purescript
newInitiateLayerUploadResponse' :: ({ uploadId :: NullOrUndefined (UploadId), partSize :: NullOrUndefined (PartSize) } -> { uploadId :: NullOrUndefined (UploadId), partSize :: NullOrUndefined (PartSize) }) -> InitiateLayerUploadResponse
```

Constructs InitiateLayerUploadResponse's fields from required parameters

#### `InvalidLayerException`

``` purescript
newtype InvalidLayerException
  = InvalidLayerException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The layer digest calculation performed by Amazon ECR upon receipt of the image layer does not match the digest specified.</p>

##### Instances
``` purescript
Newtype InvalidLayerException _
Generic InvalidLayerException _
Show InvalidLayerException
Decode InvalidLayerException
Encode InvalidLayerException
```

#### `newInvalidLayerException`

``` purescript
newInvalidLayerException :: InvalidLayerException
```

Constructs InvalidLayerException from required parameters

#### `newInvalidLayerException'`

``` purescript
newInvalidLayerException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> InvalidLayerException
```

Constructs InvalidLayerException's fields from required parameters

#### `InvalidLayerPartException`

``` purescript
newtype InvalidLayerPartException
  = InvalidLayerPartException { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), uploadId :: NullOrUndefined (UploadId), lastValidByteReceived :: NullOrUndefined (PartSize), message :: NullOrUndefined (ExceptionMessage) }
```

<p>The layer part size is not valid, or the first byte specified is not consecutive to the last byte of a previous layer part upload.</p>

##### Instances
``` purescript
Newtype InvalidLayerPartException _
Generic InvalidLayerPartException _
Show InvalidLayerPartException
Decode InvalidLayerPartException
Encode InvalidLayerPartException
```

#### `newInvalidLayerPartException`

``` purescript
newInvalidLayerPartException :: InvalidLayerPartException
```

Constructs InvalidLayerPartException from required parameters

#### `newInvalidLayerPartException'`

``` purescript
newInvalidLayerPartException' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), uploadId :: NullOrUndefined (UploadId), lastValidByteReceived :: NullOrUndefined (PartSize), message :: NullOrUndefined (ExceptionMessage) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), uploadId :: NullOrUndefined (UploadId), lastValidByteReceived :: NullOrUndefined (PartSize), message :: NullOrUndefined (ExceptionMessage) }) -> InvalidLayerPartException
```

Constructs InvalidLayerPartException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The specified parameter is invalid. Review the available parameters for the API request.</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `Layer`

``` purescript
newtype Layer
  = Layer { layerDigest :: NullOrUndefined (LayerDigest), layerAvailability :: NullOrUndefined (LayerAvailability), layerSize :: NullOrUndefined (LayerSizeInBytes), mediaType :: NullOrUndefined (MediaType) }
```

<p>An object representing an Amazon ECR image layer.</p>

##### Instances
``` purescript
Newtype Layer _
Generic Layer _
Show Layer
Decode Layer
Encode Layer
```

#### `newLayer`

``` purescript
newLayer :: Layer
```

Constructs Layer from required parameters

#### `newLayer'`

``` purescript
newLayer' :: ({ layerDigest :: NullOrUndefined (LayerDigest), layerAvailability :: NullOrUndefined (LayerAvailability), layerSize :: NullOrUndefined (LayerSizeInBytes), mediaType :: NullOrUndefined (MediaType) } -> { layerDigest :: NullOrUndefined (LayerDigest), layerAvailability :: NullOrUndefined (LayerAvailability), layerSize :: NullOrUndefined (LayerSizeInBytes), mediaType :: NullOrUndefined (MediaType) }) -> Layer
```

Constructs Layer's fields from required parameters

#### `LayerAlreadyExistsException`

``` purescript
newtype LayerAlreadyExistsException
  = LayerAlreadyExistsException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The image layer already exists in the associated repository.</p>

##### Instances
``` purescript
Newtype LayerAlreadyExistsException _
Generic LayerAlreadyExistsException _
Show LayerAlreadyExistsException
Decode LayerAlreadyExistsException
Encode LayerAlreadyExistsException
```

#### `newLayerAlreadyExistsException`

``` purescript
newLayerAlreadyExistsException :: LayerAlreadyExistsException
```

Constructs LayerAlreadyExistsException from required parameters

#### `newLayerAlreadyExistsException'`

``` purescript
newLayerAlreadyExistsException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> LayerAlreadyExistsException
```

Constructs LayerAlreadyExistsException's fields from required parameters

#### `LayerAvailability`

``` purescript
newtype LayerAvailability
  = LayerAvailability String
```

##### Instances
``` purescript
Newtype LayerAvailability _
Generic LayerAvailability _
Show LayerAvailability
Decode LayerAvailability
Encode LayerAvailability
```

#### `LayerDigest`

``` purescript
newtype LayerDigest
  = LayerDigest String
```

##### Instances
``` purescript
Newtype LayerDigest _
Generic LayerDigest _
Show LayerDigest
Decode LayerDigest
Encode LayerDigest
```

#### `LayerDigestList`

``` purescript
newtype LayerDigestList
  = LayerDigestList (Array LayerDigest)
```

##### Instances
``` purescript
Newtype LayerDigestList _
Generic LayerDigestList _
Show LayerDigestList
Decode LayerDigestList
Encode LayerDigestList
```

#### `LayerFailure`

``` purescript
newtype LayerFailure
  = LayerFailure { layerDigest :: NullOrUndefined (BatchedOperationLayerDigest), failureCode :: NullOrUndefined (LayerFailureCode), failureReason :: NullOrUndefined (LayerFailureReason) }
```

<p>An object representing an Amazon ECR image layer failure.</p>

##### Instances
``` purescript
Newtype LayerFailure _
Generic LayerFailure _
Show LayerFailure
Decode LayerFailure
Encode LayerFailure
```

#### `newLayerFailure`

``` purescript
newLayerFailure :: LayerFailure
```

Constructs LayerFailure from required parameters

#### `newLayerFailure'`

``` purescript
newLayerFailure' :: ({ layerDigest :: NullOrUndefined (BatchedOperationLayerDigest), failureCode :: NullOrUndefined (LayerFailureCode), failureReason :: NullOrUndefined (LayerFailureReason) } -> { layerDigest :: NullOrUndefined (BatchedOperationLayerDigest), failureCode :: NullOrUndefined (LayerFailureCode), failureReason :: NullOrUndefined (LayerFailureReason) }) -> LayerFailure
```

Constructs LayerFailure's fields from required parameters

#### `LayerFailureCode`

``` purescript
newtype LayerFailureCode
  = LayerFailureCode String
```

##### Instances
``` purescript
Newtype LayerFailureCode _
Generic LayerFailureCode _
Show LayerFailureCode
Decode LayerFailureCode
Encode LayerFailureCode
```

#### `LayerFailureList`

``` purescript
newtype LayerFailureList
  = LayerFailureList (Array LayerFailure)
```

##### Instances
``` purescript
Newtype LayerFailureList _
Generic LayerFailureList _
Show LayerFailureList
Decode LayerFailureList
Encode LayerFailureList
```

#### `LayerFailureReason`

``` purescript
newtype LayerFailureReason
  = LayerFailureReason String
```

##### Instances
``` purescript
Newtype LayerFailureReason _
Generic LayerFailureReason _
Show LayerFailureReason
Decode LayerFailureReason
Encode LayerFailureReason
```

#### `LayerInaccessibleException`

``` purescript
newtype LayerInaccessibleException
  = LayerInaccessibleException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The specified layer is not available because it is not associated with an image. Unassociated image layers may be cleaned up at any time.</p>

##### Instances
``` purescript
Newtype LayerInaccessibleException _
Generic LayerInaccessibleException _
Show LayerInaccessibleException
Decode LayerInaccessibleException
Encode LayerInaccessibleException
```

#### `newLayerInaccessibleException`

``` purescript
newLayerInaccessibleException :: LayerInaccessibleException
```

Constructs LayerInaccessibleException from required parameters

#### `newLayerInaccessibleException'`

``` purescript
newLayerInaccessibleException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> LayerInaccessibleException
```

Constructs LayerInaccessibleException's fields from required parameters

#### `LayerList`

``` purescript
newtype LayerList
  = LayerList (Array Layer)
```

##### Instances
``` purescript
Newtype LayerList _
Generic LayerList _
Show LayerList
Decode LayerList
Encode LayerList
```

#### `LayerPartBlob`

``` purescript
newtype LayerPartBlob
  = LayerPartBlob String
```

##### Instances
``` purescript
Newtype LayerPartBlob _
Generic LayerPartBlob _
Show LayerPartBlob
Decode LayerPartBlob
Encode LayerPartBlob
```

#### `LayerPartTooSmallException`

``` purescript
newtype LayerPartTooSmallException
  = LayerPartTooSmallException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>Layer parts must be at least 5 MiB in size.</p>

##### Instances
``` purescript
Newtype LayerPartTooSmallException _
Generic LayerPartTooSmallException _
Show LayerPartTooSmallException
Decode LayerPartTooSmallException
Encode LayerPartTooSmallException
```

#### `newLayerPartTooSmallException`

``` purescript
newLayerPartTooSmallException :: LayerPartTooSmallException
```

Constructs LayerPartTooSmallException from required parameters

#### `newLayerPartTooSmallException'`

``` purescript
newLayerPartTooSmallException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> LayerPartTooSmallException
```

Constructs LayerPartTooSmallException's fields from required parameters

#### `LayerSizeInBytes`

``` purescript
newtype LayerSizeInBytes
  = LayerSizeInBytes Number
```

##### Instances
``` purescript
Newtype LayerSizeInBytes _
Generic LayerSizeInBytes _
Show LayerSizeInBytes
Decode LayerSizeInBytes
Encode LayerSizeInBytes
```

#### `LayersNotFoundException`

``` purescript
newtype LayersNotFoundException
  = LayersNotFoundException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The specified layers could not be found, or the specified layer is not valid for this repository.</p>

##### Instances
``` purescript
Newtype LayersNotFoundException _
Generic LayersNotFoundException _
Show LayersNotFoundException
Decode LayersNotFoundException
Encode LayersNotFoundException
```

#### `newLayersNotFoundException`

``` purescript
newLayersNotFoundException :: LayersNotFoundException
```

Constructs LayersNotFoundException from required parameters

#### `newLayersNotFoundException'`

``` purescript
newLayersNotFoundException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> LayersNotFoundException
```

Constructs LayersNotFoundException's fields from required parameters

#### `LifecyclePolicyNotFoundException`

``` purescript
newtype LifecyclePolicyNotFoundException
  = LifecyclePolicyNotFoundException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The lifecycle policy could not be found, and no policy is set to the repository.</p>

##### Instances
``` purescript
Newtype LifecyclePolicyNotFoundException _
Generic LifecyclePolicyNotFoundException _
Show LifecyclePolicyNotFoundException
Decode LifecyclePolicyNotFoundException
Encode LifecyclePolicyNotFoundException
```

#### `newLifecyclePolicyNotFoundException`

``` purescript
newLifecyclePolicyNotFoundException :: LifecyclePolicyNotFoundException
```

Constructs LifecyclePolicyNotFoundException from required parameters

#### `newLifecyclePolicyNotFoundException'`

``` purescript
newLifecyclePolicyNotFoundException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> LifecyclePolicyNotFoundException
```

Constructs LifecyclePolicyNotFoundException's fields from required parameters

#### `LifecyclePolicyPreviewFilter`

``` purescript
newtype LifecyclePolicyPreviewFilter
  = LifecyclePolicyPreviewFilter { tagStatus :: NullOrUndefined (TagStatus) }
```

<p>The filter for the lifecycle policy preview.</p>

##### Instances
``` purescript
Newtype LifecyclePolicyPreviewFilter _
Generic LifecyclePolicyPreviewFilter _
Show LifecyclePolicyPreviewFilter
Decode LifecyclePolicyPreviewFilter
Encode LifecyclePolicyPreviewFilter
```

#### `newLifecyclePolicyPreviewFilter`

``` purescript
newLifecyclePolicyPreviewFilter :: LifecyclePolicyPreviewFilter
```

Constructs LifecyclePolicyPreviewFilter from required parameters

#### `newLifecyclePolicyPreviewFilter'`

``` purescript
newLifecyclePolicyPreviewFilter' :: ({ tagStatus :: NullOrUndefined (TagStatus) } -> { tagStatus :: NullOrUndefined (TagStatus) }) -> LifecyclePolicyPreviewFilter
```

Constructs LifecyclePolicyPreviewFilter's fields from required parameters

#### `LifecyclePolicyPreviewInProgressException`

``` purescript
newtype LifecyclePolicyPreviewInProgressException
  = LifecyclePolicyPreviewInProgressException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The previous lifecycle policy preview request has not completed. Please try again later.</p>

##### Instances
``` purescript
Newtype LifecyclePolicyPreviewInProgressException _
Generic LifecyclePolicyPreviewInProgressException _
Show LifecyclePolicyPreviewInProgressException
Decode LifecyclePolicyPreviewInProgressException
Encode LifecyclePolicyPreviewInProgressException
```

#### `newLifecyclePolicyPreviewInProgressException`

``` purescript
newLifecyclePolicyPreviewInProgressException :: LifecyclePolicyPreviewInProgressException
```

Constructs LifecyclePolicyPreviewInProgressException from required parameters

#### `newLifecyclePolicyPreviewInProgressException'`

``` purescript
newLifecyclePolicyPreviewInProgressException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> LifecyclePolicyPreviewInProgressException
```

Constructs LifecyclePolicyPreviewInProgressException's fields from required parameters

#### `LifecyclePolicyPreviewNotFoundException`

``` purescript
newtype LifecyclePolicyPreviewNotFoundException
  = LifecyclePolicyPreviewNotFoundException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>There is no dry run for this repository.</p>

##### Instances
``` purescript
Newtype LifecyclePolicyPreviewNotFoundException _
Generic LifecyclePolicyPreviewNotFoundException _
Show LifecyclePolicyPreviewNotFoundException
Decode LifecyclePolicyPreviewNotFoundException
Encode LifecyclePolicyPreviewNotFoundException
```

#### `newLifecyclePolicyPreviewNotFoundException`

``` purescript
newLifecyclePolicyPreviewNotFoundException :: LifecyclePolicyPreviewNotFoundException
```

Constructs LifecyclePolicyPreviewNotFoundException from required parameters

#### `newLifecyclePolicyPreviewNotFoundException'`

``` purescript
newLifecyclePolicyPreviewNotFoundException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> LifecyclePolicyPreviewNotFoundException
```

Constructs LifecyclePolicyPreviewNotFoundException's fields from required parameters

#### `LifecyclePolicyPreviewResult`

``` purescript
newtype LifecyclePolicyPreviewResult
  = LifecyclePolicyPreviewResult { imageTags :: NullOrUndefined (ImageTagList), imageDigest :: NullOrUndefined (ImageDigest), imagePushedAt :: NullOrUndefined (PushTimestamp), action :: NullOrUndefined (LifecyclePolicyRuleAction), appliedRulePriority :: NullOrUndefined (LifecyclePolicyRulePriority) }
```

<p>The result of the lifecycle policy preview.</p>

##### Instances
``` purescript
Newtype LifecyclePolicyPreviewResult _
Generic LifecyclePolicyPreviewResult _
Show LifecyclePolicyPreviewResult
Decode LifecyclePolicyPreviewResult
Encode LifecyclePolicyPreviewResult
```

#### `newLifecyclePolicyPreviewResult`

``` purescript
newLifecyclePolicyPreviewResult :: LifecyclePolicyPreviewResult
```

Constructs LifecyclePolicyPreviewResult from required parameters

#### `newLifecyclePolicyPreviewResult'`

``` purescript
newLifecyclePolicyPreviewResult' :: ({ imageTags :: NullOrUndefined (ImageTagList), imageDigest :: NullOrUndefined (ImageDigest), imagePushedAt :: NullOrUndefined (PushTimestamp), action :: NullOrUndefined (LifecyclePolicyRuleAction), appliedRulePriority :: NullOrUndefined (LifecyclePolicyRulePriority) } -> { imageTags :: NullOrUndefined (ImageTagList), imageDigest :: NullOrUndefined (ImageDigest), imagePushedAt :: NullOrUndefined (PushTimestamp), action :: NullOrUndefined (LifecyclePolicyRuleAction), appliedRulePriority :: NullOrUndefined (LifecyclePolicyRulePriority) }) -> LifecyclePolicyPreviewResult
```

Constructs LifecyclePolicyPreviewResult's fields from required parameters

#### `LifecyclePolicyPreviewResultList`

``` purescript
newtype LifecyclePolicyPreviewResultList
  = LifecyclePolicyPreviewResultList (Array LifecyclePolicyPreviewResult)
```

##### Instances
``` purescript
Newtype LifecyclePolicyPreviewResultList _
Generic LifecyclePolicyPreviewResultList _
Show LifecyclePolicyPreviewResultList
Decode LifecyclePolicyPreviewResultList
Encode LifecyclePolicyPreviewResultList
```

#### `LifecyclePolicyPreviewStatus`

``` purescript
newtype LifecyclePolicyPreviewStatus
  = LifecyclePolicyPreviewStatus String
```

##### Instances
``` purescript
Newtype LifecyclePolicyPreviewStatus _
Generic LifecyclePolicyPreviewStatus _
Show LifecyclePolicyPreviewStatus
Decode LifecyclePolicyPreviewStatus
Encode LifecyclePolicyPreviewStatus
```

#### `LifecyclePolicyPreviewSummary`

``` purescript
newtype LifecyclePolicyPreviewSummary
  = LifecyclePolicyPreviewSummary { expiringImageTotalCount :: NullOrUndefined (ImageCount) }
```

<p>The summary of the lifecycle policy preview request.</p>

##### Instances
``` purescript
Newtype LifecyclePolicyPreviewSummary _
Generic LifecyclePolicyPreviewSummary _
Show LifecyclePolicyPreviewSummary
Decode LifecyclePolicyPreviewSummary
Encode LifecyclePolicyPreviewSummary
```

#### `newLifecyclePolicyPreviewSummary`

``` purescript
newLifecyclePolicyPreviewSummary :: LifecyclePolicyPreviewSummary
```

Constructs LifecyclePolicyPreviewSummary from required parameters

#### `newLifecyclePolicyPreviewSummary'`

``` purescript
newLifecyclePolicyPreviewSummary' :: ({ expiringImageTotalCount :: NullOrUndefined (ImageCount) } -> { expiringImageTotalCount :: NullOrUndefined (ImageCount) }) -> LifecyclePolicyPreviewSummary
```

Constructs LifecyclePolicyPreviewSummary's fields from required parameters

#### `LifecyclePolicyRuleAction`

``` purescript
newtype LifecyclePolicyRuleAction
  = LifecyclePolicyRuleAction { "type" :: NullOrUndefined (ImageActionType) }
```

<p>The type of action to be taken.</p>

##### Instances
``` purescript
Newtype LifecyclePolicyRuleAction _
Generic LifecyclePolicyRuleAction _
Show LifecyclePolicyRuleAction
Decode LifecyclePolicyRuleAction
Encode LifecyclePolicyRuleAction
```

#### `newLifecyclePolicyRuleAction`

``` purescript
newLifecyclePolicyRuleAction :: LifecyclePolicyRuleAction
```

Constructs LifecyclePolicyRuleAction from required parameters

#### `newLifecyclePolicyRuleAction'`

``` purescript
newLifecyclePolicyRuleAction' :: ({ "type" :: NullOrUndefined (ImageActionType) } -> { "type" :: NullOrUndefined (ImageActionType) }) -> LifecyclePolicyRuleAction
```

Constructs LifecyclePolicyRuleAction's fields from required parameters

#### `LifecyclePolicyRulePriority`

``` purescript
newtype LifecyclePolicyRulePriority
  = LifecyclePolicyRulePriority Int
```

##### Instances
``` purescript
Newtype LifecyclePolicyRulePriority _
Generic LifecyclePolicyRulePriority _
Show LifecyclePolicyRulePriority
Decode LifecyclePolicyRulePriority
Encode LifecyclePolicyRulePriority
```

#### `LifecyclePolicyText`

``` purescript
newtype LifecyclePolicyText
  = LifecyclePolicyText String
```

##### Instances
``` purescript
Newtype LifecyclePolicyText _
Generic LifecyclePolicyText _
Show LifecyclePolicyText
Decode LifecyclePolicyText
Encode LifecyclePolicyText
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The operation did not succeed because it would have exceeded a service limit for your account. For more information, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/service_limits.html">Amazon ECR Default Service Limits</a> in the Amazon Elastic Container Registry User Guide.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListImagesFilter`

``` purescript
newtype ListImagesFilter
  = ListImagesFilter { tagStatus :: NullOrUndefined (TagStatus) }
```

<p>An object representing a filter on a <a>ListImages</a> operation.</p>

##### Instances
``` purescript
Newtype ListImagesFilter _
Generic ListImagesFilter _
Show ListImagesFilter
Decode ListImagesFilter
Encode ListImagesFilter
```

#### `newListImagesFilter`

``` purescript
newListImagesFilter :: ListImagesFilter
```

Constructs ListImagesFilter from required parameters

#### `newListImagesFilter'`

``` purescript
newListImagesFilter' :: ({ tagStatus :: NullOrUndefined (TagStatus) } -> { tagStatus :: NullOrUndefined (TagStatus) }) -> ListImagesFilter
```

Constructs ListImagesFilter's fields from required parameters

#### `ListImagesRequest`

``` purescript
newtype ListImagesRequest
  = ListImagesRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults), filter :: NullOrUndefined (ListImagesFilter) }
```

##### Instances
``` purescript
Newtype ListImagesRequest _
Generic ListImagesRequest _
Show ListImagesRequest
Decode ListImagesRequest
Encode ListImagesRequest
```

#### `newListImagesRequest`

``` purescript
newListImagesRequest :: RepositoryName -> ListImagesRequest
```

Constructs ListImagesRequest from required parameters

#### `newListImagesRequest'`

``` purescript
newListImagesRequest' :: RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults), filter :: NullOrUndefined (ListImagesFilter) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults), filter :: NullOrUndefined (ListImagesFilter) }) -> ListImagesRequest
```

Constructs ListImagesRequest's fields from required parameters

#### `ListImagesResponse`

``` purescript
newtype ListImagesResponse
  = ListImagesResponse { imageIds :: NullOrUndefined (ImageIdentifierList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListImagesResponse _
Generic ListImagesResponse _
Show ListImagesResponse
Decode ListImagesResponse
Encode ListImagesResponse
```

#### `newListImagesResponse`

``` purescript
newListImagesResponse :: ListImagesResponse
```

Constructs ListImagesResponse from required parameters

#### `newListImagesResponse'`

``` purescript
newListImagesResponse' :: ({ imageIds :: NullOrUndefined (ImageIdentifierList), nextToken :: NullOrUndefined (NextToken) } -> { imageIds :: NullOrUndefined (ImageIdentifierList), nextToken :: NullOrUndefined (NextToken) }) -> ListImagesResponse
```

Constructs ListImagesResponse's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MediaType`

``` purescript
newtype MediaType
  = MediaType String
```

##### Instances
``` purescript
Newtype MediaType _
Generic MediaType _
Show MediaType
Decode MediaType
Encode MediaType
```

#### `MediaTypeList`

``` purescript
newtype MediaTypeList
  = MediaTypeList (Array MediaType)
```

##### Instances
``` purescript
Newtype MediaTypeList _
Generic MediaTypeList _
Show MediaTypeList
Decode MediaTypeList
Encode MediaTypeList
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `PartSize`

``` purescript
newtype PartSize
  = PartSize Number
```

##### Instances
``` purescript
Newtype PartSize _
Generic PartSize _
Show PartSize
Decode PartSize
Encode PartSize
```

#### `ProxyEndpoint`

``` purescript
newtype ProxyEndpoint
  = ProxyEndpoint String
```

##### Instances
``` purescript
Newtype ProxyEndpoint _
Generic ProxyEndpoint _
Show ProxyEndpoint
Decode ProxyEndpoint
Encode ProxyEndpoint
```

#### `PushTimestamp`

``` purescript
newtype PushTimestamp
  = PushTimestamp Timestamp
```

##### Instances
``` purescript
Newtype PushTimestamp _
Generic PushTimestamp _
Show PushTimestamp
Decode PushTimestamp
Encode PushTimestamp
```

#### `PutImageRequest`

``` purescript
newtype PutImageRequest
  = PutImageRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageManifest :: ImageManifest, imageTag :: NullOrUndefined (ImageTag) }
```

##### Instances
``` purescript
Newtype PutImageRequest _
Generic PutImageRequest _
Show PutImageRequest
Decode PutImageRequest
Encode PutImageRequest
```

#### `newPutImageRequest`

``` purescript
newPutImageRequest :: ImageManifest -> RepositoryName -> PutImageRequest
```

Constructs PutImageRequest from required parameters

#### `newPutImageRequest'`

``` purescript
newPutImageRequest' :: ImageManifest -> RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageManifest :: ImageManifest, imageTag :: NullOrUndefined (ImageTag) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, imageManifest :: ImageManifest, imageTag :: NullOrUndefined (ImageTag) }) -> PutImageRequest
```

Constructs PutImageRequest's fields from required parameters

#### `PutImageResponse`

``` purescript
newtype PutImageResponse
  = PutImageResponse { image :: NullOrUndefined (Image) }
```

##### Instances
``` purescript
Newtype PutImageResponse _
Generic PutImageResponse _
Show PutImageResponse
Decode PutImageResponse
Encode PutImageResponse
```

#### `newPutImageResponse`

``` purescript
newPutImageResponse :: PutImageResponse
```

Constructs PutImageResponse from required parameters

#### `newPutImageResponse'`

``` purescript
newPutImageResponse' :: ({ image :: NullOrUndefined (Image) } -> { image :: NullOrUndefined (Image) }) -> PutImageResponse
```

Constructs PutImageResponse's fields from required parameters

#### `PutLifecyclePolicyRequest`

``` purescript
newtype PutLifecyclePolicyRequest
  = PutLifecyclePolicyRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: LifecyclePolicyText }
```

##### Instances
``` purescript
Newtype PutLifecyclePolicyRequest _
Generic PutLifecyclePolicyRequest _
Show PutLifecyclePolicyRequest
Decode PutLifecyclePolicyRequest
Encode PutLifecyclePolicyRequest
```

#### `newPutLifecyclePolicyRequest`

``` purescript
newPutLifecyclePolicyRequest :: LifecyclePolicyText -> RepositoryName -> PutLifecyclePolicyRequest
```

Constructs PutLifecyclePolicyRequest from required parameters

#### `newPutLifecyclePolicyRequest'`

``` purescript
newPutLifecyclePolicyRequest' :: LifecyclePolicyText -> RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: LifecyclePolicyText } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: LifecyclePolicyText }) -> PutLifecyclePolicyRequest
```

Constructs PutLifecyclePolicyRequest's fields from required parameters

#### `PutLifecyclePolicyResponse`

``` purescript
newtype PutLifecyclePolicyResponse
  = PutLifecyclePolicyResponse { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText) }
```

##### Instances
``` purescript
Newtype PutLifecyclePolicyResponse _
Generic PutLifecyclePolicyResponse _
Show PutLifecyclePolicyResponse
Decode PutLifecyclePolicyResponse
Encode PutLifecyclePolicyResponse
```

#### `newPutLifecyclePolicyResponse`

``` purescript
newPutLifecyclePolicyResponse :: PutLifecyclePolicyResponse
```

Constructs PutLifecyclePolicyResponse from required parameters

#### `newPutLifecyclePolicyResponse'`

``` purescript
newPutLifecyclePolicyResponse' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText) }) -> PutLifecyclePolicyResponse
```

Constructs PutLifecyclePolicyResponse's fields from required parameters

#### `RegistryId`

``` purescript
newtype RegistryId
  = RegistryId String
```

##### Instances
``` purescript
Newtype RegistryId _
Generic RegistryId _
Show RegistryId
Decode RegistryId
Encode RegistryId
```

#### `Repository`

``` purescript
newtype Repository
  = Repository { repositoryArn :: NullOrUndefined (Arn), registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), repositoryUri :: NullOrUndefined (Url), createdAt :: NullOrUndefined (CreationTimestamp) }
```

<p>An object representing a repository.</p>

##### Instances
``` purescript
Newtype Repository _
Generic Repository _
Show Repository
Decode Repository
Encode Repository
```

#### `newRepository`

``` purescript
newRepository :: Repository
```

Constructs Repository from required parameters

#### `newRepository'`

``` purescript
newRepository' :: ({ repositoryArn :: NullOrUndefined (Arn), registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), repositoryUri :: NullOrUndefined (Url), createdAt :: NullOrUndefined (CreationTimestamp) } -> { repositoryArn :: NullOrUndefined (Arn), registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), repositoryUri :: NullOrUndefined (Url), createdAt :: NullOrUndefined (CreationTimestamp) }) -> Repository
```

Constructs Repository's fields from required parameters

#### `RepositoryAlreadyExistsException`

``` purescript
newtype RepositoryAlreadyExistsException
  = RepositoryAlreadyExistsException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The specified repository already exists in the specified registry.</p>

##### Instances
``` purescript
Newtype RepositoryAlreadyExistsException _
Generic RepositoryAlreadyExistsException _
Show RepositoryAlreadyExistsException
Decode RepositoryAlreadyExistsException
Encode RepositoryAlreadyExistsException
```

#### `newRepositoryAlreadyExistsException`

``` purescript
newRepositoryAlreadyExistsException :: RepositoryAlreadyExistsException
```

Constructs RepositoryAlreadyExistsException from required parameters

#### `newRepositoryAlreadyExistsException'`

``` purescript
newRepositoryAlreadyExistsException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> RepositoryAlreadyExistsException
```

Constructs RepositoryAlreadyExistsException's fields from required parameters

#### `RepositoryList`

``` purescript
newtype RepositoryList
  = RepositoryList (Array Repository)
```

##### Instances
``` purescript
Newtype RepositoryList _
Generic RepositoryList _
Show RepositoryList
Decode RepositoryList
Encode RepositoryList
```

#### `RepositoryName`

``` purescript
newtype RepositoryName
  = RepositoryName String
```

##### Instances
``` purescript
Newtype RepositoryName _
Generic RepositoryName _
Show RepositoryName
Decode RepositoryName
Encode RepositoryName
```

#### `RepositoryNameList`

``` purescript
newtype RepositoryNameList
  = RepositoryNameList (Array RepositoryName)
```

##### Instances
``` purescript
Newtype RepositoryNameList _
Generic RepositoryNameList _
Show RepositoryNameList
Decode RepositoryNameList
Encode RepositoryNameList
```

#### `RepositoryNotEmptyException`

``` purescript
newtype RepositoryNotEmptyException
  = RepositoryNotEmptyException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The specified repository contains images. To delete a repository that contains images, you must force the deletion with the <code>force</code> parameter.</p>

##### Instances
``` purescript
Newtype RepositoryNotEmptyException _
Generic RepositoryNotEmptyException _
Show RepositoryNotEmptyException
Decode RepositoryNotEmptyException
Encode RepositoryNotEmptyException
```

#### `newRepositoryNotEmptyException`

``` purescript
newRepositoryNotEmptyException :: RepositoryNotEmptyException
```

Constructs RepositoryNotEmptyException from required parameters

#### `newRepositoryNotEmptyException'`

``` purescript
newRepositoryNotEmptyException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> RepositoryNotEmptyException
```

Constructs RepositoryNotEmptyException's fields from required parameters

#### `RepositoryNotFoundException`

``` purescript
newtype RepositoryNotFoundException
  = RepositoryNotFoundException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The specified repository could not be found. Check the spelling of the specified repository and ensure that you are performing operations on the correct registry.</p>

##### Instances
``` purescript
Newtype RepositoryNotFoundException _
Generic RepositoryNotFoundException _
Show RepositoryNotFoundException
Decode RepositoryNotFoundException
Encode RepositoryNotFoundException
```

#### `newRepositoryNotFoundException`

``` purescript
newRepositoryNotFoundException :: RepositoryNotFoundException
```

Constructs RepositoryNotFoundException from required parameters

#### `newRepositoryNotFoundException'`

``` purescript
newRepositoryNotFoundException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> RepositoryNotFoundException
```

Constructs RepositoryNotFoundException's fields from required parameters

#### `RepositoryPolicyNotFoundException`

``` purescript
newtype RepositoryPolicyNotFoundException
  = RepositoryPolicyNotFoundException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The specified repository and registry combination does not have an associated repository policy.</p>

##### Instances
``` purescript
Newtype RepositoryPolicyNotFoundException _
Generic RepositoryPolicyNotFoundException _
Show RepositoryPolicyNotFoundException
Decode RepositoryPolicyNotFoundException
Encode RepositoryPolicyNotFoundException
```

#### `newRepositoryPolicyNotFoundException`

``` purescript
newRepositoryPolicyNotFoundException :: RepositoryPolicyNotFoundException
```

Constructs RepositoryPolicyNotFoundException from required parameters

#### `newRepositoryPolicyNotFoundException'`

``` purescript
newRepositoryPolicyNotFoundException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> RepositoryPolicyNotFoundException
```

Constructs RepositoryPolicyNotFoundException's fields from required parameters

#### `RepositoryPolicyText`

``` purescript
newtype RepositoryPolicyText
  = RepositoryPolicyText String
```

##### Instances
``` purescript
Newtype RepositoryPolicyText _
Generic RepositoryPolicyText _
Show RepositoryPolicyText
Decode RepositoryPolicyText
Encode RepositoryPolicyText
```

#### `ServerException`

``` purescript
newtype ServerException
  = ServerException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>These errors are usually caused by a server-side issue.</p>

##### Instances
``` purescript
Newtype ServerException _
Generic ServerException _
Show ServerException
Decode ServerException
Encode ServerException
```

#### `newServerException`

``` purescript
newServerException :: ServerException
```

Constructs ServerException from required parameters

#### `newServerException'`

``` purescript
newServerException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> ServerException
```

Constructs ServerException's fields from required parameters

#### `SetRepositoryPolicyRequest`

``` purescript
newtype SetRepositoryPolicyRequest
  = SetRepositoryPolicyRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, policyText :: RepositoryPolicyText, force :: NullOrUndefined (ForceFlag) }
```

##### Instances
``` purescript
Newtype SetRepositoryPolicyRequest _
Generic SetRepositoryPolicyRequest _
Show SetRepositoryPolicyRequest
Decode SetRepositoryPolicyRequest
Encode SetRepositoryPolicyRequest
```

#### `newSetRepositoryPolicyRequest`

``` purescript
newSetRepositoryPolicyRequest :: RepositoryPolicyText -> RepositoryName -> SetRepositoryPolicyRequest
```

Constructs SetRepositoryPolicyRequest from required parameters

#### `newSetRepositoryPolicyRequest'`

``` purescript
newSetRepositoryPolicyRequest' :: RepositoryPolicyText -> RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, policyText :: RepositoryPolicyText, force :: NullOrUndefined (ForceFlag) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, policyText :: RepositoryPolicyText, force :: NullOrUndefined (ForceFlag) }) -> SetRepositoryPolicyRequest
```

Constructs SetRepositoryPolicyRequest's fields from required parameters

#### `SetRepositoryPolicyResponse`

``` purescript
newtype SetRepositoryPolicyResponse
  = SetRepositoryPolicyResponse { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), policyText :: NullOrUndefined (RepositoryPolicyText) }
```

##### Instances
``` purescript
Newtype SetRepositoryPolicyResponse _
Generic SetRepositoryPolicyResponse _
Show SetRepositoryPolicyResponse
Decode SetRepositoryPolicyResponse
Encode SetRepositoryPolicyResponse
```

#### `newSetRepositoryPolicyResponse`

``` purescript
newSetRepositoryPolicyResponse :: SetRepositoryPolicyResponse
```

Constructs SetRepositoryPolicyResponse from required parameters

#### `newSetRepositoryPolicyResponse'`

``` purescript
newSetRepositoryPolicyResponse' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), policyText :: NullOrUndefined (RepositoryPolicyText) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), policyText :: NullOrUndefined (RepositoryPolicyText) }) -> SetRepositoryPolicyResponse
```

Constructs SetRepositoryPolicyResponse's fields from required parameters

#### `StartLifecyclePolicyPreviewRequest`

``` purescript
newtype StartLifecyclePolicyPreviewRequest
  = StartLifecyclePolicyPreviewRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText) }
```

##### Instances
``` purescript
Newtype StartLifecyclePolicyPreviewRequest _
Generic StartLifecyclePolicyPreviewRequest _
Show StartLifecyclePolicyPreviewRequest
Decode StartLifecyclePolicyPreviewRequest
Encode StartLifecyclePolicyPreviewRequest
```

#### `newStartLifecyclePolicyPreviewRequest`

``` purescript
newStartLifecyclePolicyPreviewRequest :: RepositoryName -> StartLifecyclePolicyPreviewRequest
```

Constructs StartLifecyclePolicyPreviewRequest from required parameters

#### `newStartLifecyclePolicyPreviewRequest'`

``` purescript
newStartLifecyclePolicyPreviewRequest' :: RepositoryName -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText) }) -> StartLifecyclePolicyPreviewRequest
```

Constructs StartLifecyclePolicyPreviewRequest's fields from required parameters

#### `StartLifecyclePolicyPreviewResponse`

``` purescript
newtype StartLifecyclePolicyPreviewResponse
  = StartLifecyclePolicyPreviewResponse { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), status :: NullOrUndefined (LifecyclePolicyPreviewStatus) }
```

##### Instances
``` purescript
Newtype StartLifecyclePolicyPreviewResponse _
Generic StartLifecyclePolicyPreviewResponse _
Show StartLifecyclePolicyPreviewResponse
Decode StartLifecyclePolicyPreviewResponse
Encode StartLifecyclePolicyPreviewResponse
```

#### `newStartLifecyclePolicyPreviewResponse`

``` purescript
newStartLifecyclePolicyPreviewResponse :: StartLifecyclePolicyPreviewResponse
```

Constructs StartLifecyclePolicyPreviewResponse from required parameters

#### `newStartLifecyclePolicyPreviewResponse'`

``` purescript
newStartLifecyclePolicyPreviewResponse' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), status :: NullOrUndefined (LifecyclePolicyPreviewStatus) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), lifecyclePolicyText :: NullOrUndefined (LifecyclePolicyText), status :: NullOrUndefined (LifecyclePolicyPreviewStatus) }) -> StartLifecyclePolicyPreviewResponse
```

Constructs StartLifecyclePolicyPreviewResponse's fields from required parameters

#### `TagStatus`

``` purescript
newtype TagStatus
  = TagStatus String
```

##### Instances
``` purescript
Newtype TagStatus _
Generic TagStatus _
Show TagStatus
Decode TagStatus
Encode TagStatus
```

#### `UploadId`

``` purescript
newtype UploadId
  = UploadId String
```

##### Instances
``` purescript
Newtype UploadId _
Generic UploadId _
Show UploadId
Decode UploadId
Encode UploadId
```

#### `UploadLayerPartRequest`

``` purescript
newtype UploadLayerPartRequest
  = UploadLayerPartRequest { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, partFirstByte :: PartSize, partLastByte :: PartSize, layerPartBlob :: LayerPartBlob }
```

##### Instances
``` purescript
Newtype UploadLayerPartRequest _
Generic UploadLayerPartRequest _
Show UploadLayerPartRequest
Decode UploadLayerPartRequest
Encode UploadLayerPartRequest
```

#### `newUploadLayerPartRequest`

``` purescript
newUploadLayerPartRequest :: LayerPartBlob -> PartSize -> PartSize -> RepositoryName -> UploadId -> UploadLayerPartRequest
```

Constructs UploadLayerPartRequest from required parameters

#### `newUploadLayerPartRequest'`

``` purescript
newUploadLayerPartRequest' :: LayerPartBlob -> PartSize -> PartSize -> RepositoryName -> UploadId -> ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, partFirstByte :: PartSize, partLastByte :: PartSize, layerPartBlob :: LayerPartBlob } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, partFirstByte :: PartSize, partLastByte :: PartSize, layerPartBlob :: LayerPartBlob }) -> UploadLayerPartRequest
```

Constructs UploadLayerPartRequest's fields from required parameters

#### `UploadLayerPartResponse`

``` purescript
newtype UploadLayerPartResponse
  = UploadLayerPartResponse { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), uploadId :: NullOrUndefined (UploadId), lastByteReceived :: NullOrUndefined (PartSize) }
```

##### Instances
``` purescript
Newtype UploadLayerPartResponse _
Generic UploadLayerPartResponse _
Show UploadLayerPartResponse
Decode UploadLayerPartResponse
Encode UploadLayerPartResponse
```

#### `newUploadLayerPartResponse`

``` purescript
newUploadLayerPartResponse :: UploadLayerPartResponse
```

Constructs UploadLayerPartResponse from required parameters

#### `newUploadLayerPartResponse'`

``` purescript
newUploadLayerPartResponse' :: ({ registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), uploadId :: NullOrUndefined (UploadId), lastByteReceived :: NullOrUndefined (PartSize) } -> { registryId :: NullOrUndefined (RegistryId), repositoryName :: NullOrUndefined (RepositoryName), uploadId :: NullOrUndefined (UploadId), lastByteReceived :: NullOrUndefined (PartSize) }) -> UploadLayerPartResponse
```

Constructs UploadLayerPartResponse's fields from required parameters

#### `UploadNotFoundException`

``` purescript
newtype UploadNotFoundException
  = UploadNotFoundException { message :: NullOrUndefined (ExceptionMessage) }
```

<p>The upload could not be found, or the specified upload id is not valid for this repository.</p>

##### Instances
``` purescript
Newtype UploadNotFoundException _
Generic UploadNotFoundException _
Show UploadNotFoundException
Decode UploadNotFoundException
Encode UploadNotFoundException
```

#### `newUploadNotFoundException`

``` purescript
newUploadNotFoundException :: UploadNotFoundException
```

Constructs UploadNotFoundException from required parameters

#### `newUploadNotFoundException'`

``` purescript
newUploadNotFoundException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> UploadNotFoundException
```

Constructs UploadNotFoundException's fields from required parameters

#### `Url`

``` purescript
newtype Url
  = Url String
```

##### Instances
``` purescript
Newtype Url _
Generic Url _
Show Url
Decode Url
Encode Url
```


