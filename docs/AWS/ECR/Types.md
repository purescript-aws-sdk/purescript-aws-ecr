## Module AWS.ECR.Types

#### `options`

``` purescript
options :: Options
```

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
  = AuthorizationData { authorizationToken :: Maybe (Base64), expiresAt :: Maybe (ExpirationTimestamp), proxyEndpoint :: Maybe (ProxyEndpoint) }
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
newAuthorizationData' :: ({ authorizationToken :: Maybe (Base64), expiresAt :: Maybe (ExpirationTimestamp), proxyEndpoint :: Maybe (ProxyEndpoint) } -> { authorizationToken :: Maybe (Base64), expiresAt :: Maybe (ExpirationTimestamp), proxyEndpoint :: Maybe (ProxyEndpoint) }) -> AuthorizationData
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
  = BatchCheckLayerAvailabilityRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, layerDigests :: BatchedOperationLayerDigestList }
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
newBatchCheckLayerAvailabilityRequest' :: BatchedOperationLayerDigestList -> RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, layerDigests :: BatchedOperationLayerDigestList } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, layerDigests :: BatchedOperationLayerDigestList }) -> BatchCheckLayerAvailabilityRequest
```

Constructs BatchCheckLayerAvailabilityRequest's fields from required parameters

#### `BatchCheckLayerAvailabilityResponse`

``` purescript
newtype BatchCheckLayerAvailabilityResponse
  = BatchCheckLayerAvailabilityResponse { layers :: Maybe (LayerList), failures :: Maybe (LayerFailureList) }
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
newBatchCheckLayerAvailabilityResponse' :: ({ layers :: Maybe (LayerList), failures :: Maybe (LayerFailureList) } -> { layers :: Maybe (LayerList), failures :: Maybe (LayerFailureList) }) -> BatchCheckLayerAvailabilityResponse
```

Constructs BatchCheckLayerAvailabilityResponse's fields from required parameters

#### `BatchDeleteImageRequest`

``` purescript
newtype BatchDeleteImageRequest
  = BatchDeleteImageRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList }
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
newBatchDeleteImageRequest' :: ImageIdentifierList -> RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList }) -> BatchDeleteImageRequest
```

Constructs BatchDeleteImageRequest's fields from required parameters

#### `BatchDeleteImageResponse`

``` purescript
newtype BatchDeleteImageResponse
  = BatchDeleteImageResponse { imageIds :: Maybe (ImageIdentifierList), failures :: Maybe (ImageFailureList) }
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
newBatchDeleteImageResponse' :: ({ imageIds :: Maybe (ImageIdentifierList), failures :: Maybe (ImageFailureList) } -> { imageIds :: Maybe (ImageIdentifierList), failures :: Maybe (ImageFailureList) }) -> BatchDeleteImageResponse
```

Constructs BatchDeleteImageResponse's fields from required parameters

#### `BatchGetImageRequest`

``` purescript
newtype BatchGetImageRequest
  = BatchGetImageRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList, acceptedMediaTypes :: Maybe (MediaTypeList) }
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
newBatchGetImageRequest' :: ImageIdentifierList -> RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList, acceptedMediaTypes :: Maybe (MediaTypeList) } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: ImageIdentifierList, acceptedMediaTypes :: Maybe (MediaTypeList) }) -> BatchGetImageRequest
```

Constructs BatchGetImageRequest's fields from required parameters

#### `BatchGetImageResponse`

``` purescript
newtype BatchGetImageResponse
  = BatchGetImageResponse { images :: Maybe (ImageList), failures :: Maybe (ImageFailureList) }
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
newBatchGetImageResponse' :: ({ images :: Maybe (ImageList), failures :: Maybe (ImageFailureList) } -> { images :: Maybe (ImageList), failures :: Maybe (ImageFailureList) }) -> BatchGetImageResponse
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
  = CompleteLayerUploadRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, layerDigests :: LayerDigestList }
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
newCompleteLayerUploadRequest' :: LayerDigestList -> RepositoryName -> UploadId -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, layerDigests :: LayerDigestList } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, layerDigests :: LayerDigestList }) -> CompleteLayerUploadRequest
```

Constructs CompleteLayerUploadRequest's fields from required parameters

#### `CompleteLayerUploadResponse`

``` purescript
newtype CompleteLayerUploadResponse
  = CompleteLayerUploadResponse { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), uploadId :: Maybe (UploadId), layerDigest :: Maybe (LayerDigest) }
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
newCompleteLayerUploadResponse' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), uploadId :: Maybe (UploadId), layerDigest :: Maybe (LayerDigest) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), uploadId :: Maybe (UploadId), layerDigest :: Maybe (LayerDigest) }) -> CompleteLayerUploadResponse
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
  = CreateRepositoryResponse { repository :: Maybe (Repository) }
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
newCreateRepositoryResponse' :: ({ repository :: Maybe (Repository) } -> { repository :: Maybe (Repository) }) -> CreateRepositoryResponse
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
  = DeleteLifecyclePolicyRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName }
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
newDeleteLifecyclePolicyRequest' :: RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName }) -> DeleteLifecyclePolicyRequest
```

Constructs DeleteLifecyclePolicyRequest's fields from required parameters

#### `DeleteLifecyclePolicyResponse`

``` purescript
newtype DeleteLifecyclePolicyResponse
  = DeleteLifecyclePolicyResponse { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), lastEvaluatedAt :: Maybe (EvaluationTimestamp) }
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
newDeleteLifecyclePolicyResponse' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), lastEvaluatedAt :: Maybe (EvaluationTimestamp) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), lastEvaluatedAt :: Maybe (EvaluationTimestamp) }) -> DeleteLifecyclePolicyResponse
```

Constructs DeleteLifecyclePolicyResponse's fields from required parameters

#### `DeleteRepositoryPolicyRequest`

``` purescript
newtype DeleteRepositoryPolicyRequest
  = DeleteRepositoryPolicyRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName }
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
newDeleteRepositoryPolicyRequest' :: RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName }) -> DeleteRepositoryPolicyRequest
```

Constructs DeleteRepositoryPolicyRequest's fields from required parameters

#### `DeleteRepositoryPolicyResponse`

``` purescript
newtype DeleteRepositoryPolicyResponse
  = DeleteRepositoryPolicyResponse { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), policyText :: Maybe (RepositoryPolicyText) }
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
newDeleteRepositoryPolicyResponse' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), policyText :: Maybe (RepositoryPolicyText) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), policyText :: Maybe (RepositoryPolicyText) }) -> DeleteRepositoryPolicyResponse
```

Constructs DeleteRepositoryPolicyResponse's fields from required parameters

#### `DeleteRepositoryRequest`

``` purescript
newtype DeleteRepositoryRequest
  = DeleteRepositoryRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, force :: Maybe (ForceFlag) }
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
newDeleteRepositoryRequest' :: RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, force :: Maybe (ForceFlag) } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, force :: Maybe (ForceFlag) }) -> DeleteRepositoryRequest
```

Constructs DeleteRepositoryRequest's fields from required parameters

#### `DeleteRepositoryResponse`

``` purescript
newtype DeleteRepositoryResponse
  = DeleteRepositoryResponse { repository :: Maybe (Repository) }
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
newDeleteRepositoryResponse' :: ({ repository :: Maybe (Repository) } -> { repository :: Maybe (Repository) }) -> DeleteRepositoryResponse
```

Constructs DeleteRepositoryResponse's fields from required parameters

#### `DescribeImagesFilter`

``` purescript
newtype DescribeImagesFilter
  = DescribeImagesFilter { tagStatus :: Maybe (TagStatus) }
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
newDescribeImagesFilter' :: ({ tagStatus :: Maybe (TagStatus) } -> { tagStatus :: Maybe (TagStatus) }) -> DescribeImagesFilter
```

Constructs DescribeImagesFilter's fields from required parameters

#### `DescribeImagesRequest`

``` purescript
newtype DescribeImagesRequest
  = DescribeImagesRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: Maybe (ImageIdentifierList), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), filter :: Maybe (DescribeImagesFilter) }
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
newDescribeImagesRequest' :: RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: Maybe (ImageIdentifierList), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), filter :: Maybe (DescribeImagesFilter) } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: Maybe (ImageIdentifierList), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), filter :: Maybe (DescribeImagesFilter) }) -> DescribeImagesRequest
```

Constructs DescribeImagesRequest's fields from required parameters

#### `DescribeImagesResponse`

``` purescript
newtype DescribeImagesResponse
  = DescribeImagesResponse { imageDetails :: Maybe (ImageDetailList), nextToken :: Maybe (NextToken) }
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
newDescribeImagesResponse' :: ({ imageDetails :: Maybe (ImageDetailList), nextToken :: Maybe (NextToken) } -> { imageDetails :: Maybe (ImageDetailList), nextToken :: Maybe (NextToken) }) -> DescribeImagesResponse
```

Constructs DescribeImagesResponse's fields from required parameters

#### `DescribeRepositoriesRequest`

``` purescript
newtype DescribeRepositoriesRequest
  = DescribeRepositoriesRequest { registryId :: Maybe (RegistryId), repositoryNames :: Maybe (RepositoryNameList), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }
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
newDescribeRepositoriesRequest' :: ({ registryId :: Maybe (RegistryId), repositoryNames :: Maybe (RepositoryNameList), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) } -> { registryId :: Maybe (RegistryId), repositoryNames :: Maybe (RepositoryNameList), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }) -> DescribeRepositoriesRequest
```

Constructs DescribeRepositoriesRequest's fields from required parameters

#### `DescribeRepositoriesResponse`

``` purescript
newtype DescribeRepositoriesResponse
  = DescribeRepositoriesResponse { repositories :: Maybe (RepositoryList), nextToken :: Maybe (NextToken) }
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
newDescribeRepositoriesResponse' :: ({ repositories :: Maybe (RepositoryList), nextToken :: Maybe (NextToken) } -> { repositories :: Maybe (RepositoryList), nextToken :: Maybe (NextToken) }) -> DescribeRepositoriesResponse
```

Constructs DescribeRepositoriesResponse's fields from required parameters

#### `EmptyUploadException`

``` purescript
newtype EmptyUploadException
  = EmptyUploadException { message :: Maybe (ExceptionMessage) }
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
newEmptyUploadException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> EmptyUploadException
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
  = GetAuthorizationTokenRequest { registryIds :: Maybe (GetAuthorizationTokenRegistryIdList) }
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
newGetAuthorizationTokenRequest' :: ({ registryIds :: Maybe (GetAuthorizationTokenRegistryIdList) } -> { registryIds :: Maybe (GetAuthorizationTokenRegistryIdList) }) -> GetAuthorizationTokenRequest
```

Constructs GetAuthorizationTokenRequest's fields from required parameters

#### `GetAuthorizationTokenResponse`

``` purescript
newtype GetAuthorizationTokenResponse
  = GetAuthorizationTokenResponse { authorizationData :: Maybe (AuthorizationDataList) }
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
newGetAuthorizationTokenResponse' :: ({ authorizationData :: Maybe (AuthorizationDataList) } -> { authorizationData :: Maybe (AuthorizationDataList) }) -> GetAuthorizationTokenResponse
```

Constructs GetAuthorizationTokenResponse's fields from required parameters

#### `GetDownloadUrlForLayerRequest`

``` purescript
newtype GetDownloadUrlForLayerRequest
  = GetDownloadUrlForLayerRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, layerDigest :: LayerDigest }
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
newGetDownloadUrlForLayerRequest' :: LayerDigest -> RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, layerDigest :: LayerDigest } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, layerDigest :: LayerDigest }) -> GetDownloadUrlForLayerRequest
```

Constructs GetDownloadUrlForLayerRequest's fields from required parameters

#### `GetDownloadUrlForLayerResponse`

``` purescript
newtype GetDownloadUrlForLayerResponse
  = GetDownloadUrlForLayerResponse { downloadUrl :: Maybe (Url), layerDigest :: Maybe (LayerDigest) }
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
newGetDownloadUrlForLayerResponse' :: ({ downloadUrl :: Maybe (Url), layerDigest :: Maybe (LayerDigest) } -> { downloadUrl :: Maybe (Url), layerDigest :: Maybe (LayerDigest) }) -> GetDownloadUrlForLayerResponse
```

Constructs GetDownloadUrlForLayerResponse's fields from required parameters

#### `GetLifecyclePolicyPreviewRequest`

``` purescript
newtype GetLifecyclePolicyPreviewRequest
  = GetLifecyclePolicyPreviewRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: Maybe (ImageIdentifierList), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), filter :: Maybe (LifecyclePolicyPreviewFilter) }
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
newGetLifecyclePolicyPreviewRequest' :: RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: Maybe (ImageIdentifierList), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), filter :: Maybe (LifecyclePolicyPreviewFilter) } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageIds :: Maybe (ImageIdentifierList), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), filter :: Maybe (LifecyclePolicyPreviewFilter) }) -> GetLifecyclePolicyPreviewRequest
```

Constructs GetLifecyclePolicyPreviewRequest's fields from required parameters

#### `GetLifecyclePolicyPreviewResponse`

``` purescript
newtype GetLifecyclePolicyPreviewResponse
  = GetLifecyclePolicyPreviewResponse { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), status :: Maybe (LifecyclePolicyPreviewStatus), nextToken :: Maybe (NextToken), previewResults :: Maybe (LifecyclePolicyPreviewResultList), summary :: Maybe (LifecyclePolicyPreviewSummary) }
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
newGetLifecyclePolicyPreviewResponse' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), status :: Maybe (LifecyclePolicyPreviewStatus), nextToken :: Maybe (NextToken), previewResults :: Maybe (LifecyclePolicyPreviewResultList), summary :: Maybe (LifecyclePolicyPreviewSummary) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), status :: Maybe (LifecyclePolicyPreviewStatus), nextToken :: Maybe (NextToken), previewResults :: Maybe (LifecyclePolicyPreviewResultList), summary :: Maybe (LifecyclePolicyPreviewSummary) }) -> GetLifecyclePolicyPreviewResponse
```

Constructs GetLifecyclePolicyPreviewResponse's fields from required parameters

#### `GetLifecyclePolicyRequest`

``` purescript
newtype GetLifecyclePolicyRequest
  = GetLifecyclePolicyRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName }
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
newGetLifecyclePolicyRequest' :: RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName }) -> GetLifecyclePolicyRequest
```

Constructs GetLifecyclePolicyRequest's fields from required parameters

#### `GetLifecyclePolicyResponse`

``` purescript
newtype GetLifecyclePolicyResponse
  = GetLifecyclePolicyResponse { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), lastEvaluatedAt :: Maybe (EvaluationTimestamp) }
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
newGetLifecyclePolicyResponse' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), lastEvaluatedAt :: Maybe (EvaluationTimestamp) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), lastEvaluatedAt :: Maybe (EvaluationTimestamp) }) -> GetLifecyclePolicyResponse
```

Constructs GetLifecyclePolicyResponse's fields from required parameters

#### `GetRepositoryPolicyRequest`

``` purescript
newtype GetRepositoryPolicyRequest
  = GetRepositoryPolicyRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName }
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
newGetRepositoryPolicyRequest' :: RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName }) -> GetRepositoryPolicyRequest
```

Constructs GetRepositoryPolicyRequest's fields from required parameters

#### `GetRepositoryPolicyResponse`

``` purescript
newtype GetRepositoryPolicyResponse
  = GetRepositoryPolicyResponse { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), policyText :: Maybe (RepositoryPolicyText) }
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
newGetRepositoryPolicyResponse' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), policyText :: Maybe (RepositoryPolicyText) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), policyText :: Maybe (RepositoryPolicyText) }) -> GetRepositoryPolicyResponse
```

Constructs GetRepositoryPolicyResponse's fields from required parameters

#### `Image`

``` purescript
newtype Image
  = Image { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), imageId :: Maybe (ImageIdentifier), imageManifest :: Maybe (ImageManifest) }
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
newImage' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), imageId :: Maybe (ImageIdentifier), imageManifest :: Maybe (ImageManifest) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), imageId :: Maybe (ImageIdentifier), imageManifest :: Maybe (ImageManifest) }) -> Image
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
  = ImageAlreadyExistsException { message :: Maybe (ExceptionMessage) }
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
newImageAlreadyExistsException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> ImageAlreadyExistsException
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
  = ImageDetail { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), imageDigest :: Maybe (ImageDigest), imageTags :: Maybe (ImageTagList), imageSizeInBytes :: Maybe (ImageSizeInBytes), imagePushedAt :: Maybe (PushTimestamp) }
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
newImageDetail' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), imageDigest :: Maybe (ImageDigest), imageTags :: Maybe (ImageTagList), imageSizeInBytes :: Maybe (ImageSizeInBytes), imagePushedAt :: Maybe (PushTimestamp) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), imageDigest :: Maybe (ImageDigest), imageTags :: Maybe (ImageTagList), imageSizeInBytes :: Maybe (ImageSizeInBytes), imagePushedAt :: Maybe (PushTimestamp) }) -> ImageDetail
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
  = ImageFailure { imageId :: Maybe (ImageIdentifier), failureCode :: Maybe (ImageFailureCode), failureReason :: Maybe (ImageFailureReason) }
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
newImageFailure' :: ({ imageId :: Maybe (ImageIdentifier), failureCode :: Maybe (ImageFailureCode), failureReason :: Maybe (ImageFailureReason) } -> { imageId :: Maybe (ImageIdentifier), failureCode :: Maybe (ImageFailureCode), failureReason :: Maybe (ImageFailureReason) }) -> ImageFailure
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
  = ImageIdentifier { imageDigest :: Maybe (ImageDigest), imageTag :: Maybe (ImageTag) }
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
newImageIdentifier' :: ({ imageDigest :: Maybe (ImageDigest), imageTag :: Maybe (ImageTag) } -> { imageDigest :: Maybe (ImageDigest), imageTag :: Maybe (ImageTag) }) -> ImageIdentifier
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
  = ImageNotFoundException { message :: Maybe (ExceptionMessage) }
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
newImageNotFoundException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> ImageNotFoundException
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
  = InitiateLayerUploadRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName }
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
newInitiateLayerUploadRequest' :: RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName }) -> InitiateLayerUploadRequest
```

Constructs InitiateLayerUploadRequest's fields from required parameters

#### `InitiateLayerUploadResponse`

``` purescript
newtype InitiateLayerUploadResponse
  = InitiateLayerUploadResponse { uploadId :: Maybe (UploadId), partSize :: Maybe (PartSize) }
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
newInitiateLayerUploadResponse' :: ({ uploadId :: Maybe (UploadId), partSize :: Maybe (PartSize) } -> { uploadId :: Maybe (UploadId), partSize :: Maybe (PartSize) }) -> InitiateLayerUploadResponse
```

Constructs InitiateLayerUploadResponse's fields from required parameters

#### `InvalidLayerException`

``` purescript
newtype InvalidLayerException
  = InvalidLayerException { message :: Maybe (ExceptionMessage) }
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
newInvalidLayerException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> InvalidLayerException
```

Constructs InvalidLayerException's fields from required parameters

#### `InvalidLayerPartException`

``` purescript
newtype InvalidLayerPartException
  = InvalidLayerPartException { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), uploadId :: Maybe (UploadId), lastValidByteReceived :: Maybe (PartSize), message :: Maybe (ExceptionMessage) }
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
newInvalidLayerPartException' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), uploadId :: Maybe (UploadId), lastValidByteReceived :: Maybe (PartSize), message :: Maybe (ExceptionMessage) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), uploadId :: Maybe (UploadId), lastValidByteReceived :: Maybe (PartSize), message :: Maybe (ExceptionMessage) }) -> InvalidLayerPartException
```

Constructs InvalidLayerPartException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: Maybe (ExceptionMessage) }
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
newInvalidParameterException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `Layer`

``` purescript
newtype Layer
  = Layer { layerDigest :: Maybe (LayerDigest), layerAvailability :: Maybe (LayerAvailability), layerSize :: Maybe (LayerSizeInBytes), mediaType :: Maybe (MediaType) }
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
newLayer' :: ({ layerDigest :: Maybe (LayerDigest), layerAvailability :: Maybe (LayerAvailability), layerSize :: Maybe (LayerSizeInBytes), mediaType :: Maybe (MediaType) } -> { layerDigest :: Maybe (LayerDigest), layerAvailability :: Maybe (LayerAvailability), layerSize :: Maybe (LayerSizeInBytes), mediaType :: Maybe (MediaType) }) -> Layer
```

Constructs Layer's fields from required parameters

#### `LayerAlreadyExistsException`

``` purescript
newtype LayerAlreadyExistsException
  = LayerAlreadyExistsException { message :: Maybe (ExceptionMessage) }
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
newLayerAlreadyExistsException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> LayerAlreadyExistsException
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
  = LayerFailure { layerDigest :: Maybe (BatchedOperationLayerDigest), failureCode :: Maybe (LayerFailureCode), failureReason :: Maybe (LayerFailureReason) }
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
newLayerFailure' :: ({ layerDigest :: Maybe (BatchedOperationLayerDigest), failureCode :: Maybe (LayerFailureCode), failureReason :: Maybe (LayerFailureReason) } -> { layerDigest :: Maybe (BatchedOperationLayerDigest), failureCode :: Maybe (LayerFailureCode), failureReason :: Maybe (LayerFailureReason) }) -> LayerFailure
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
  = LayerInaccessibleException { message :: Maybe (ExceptionMessage) }
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
newLayerInaccessibleException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> LayerInaccessibleException
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
  = LayerPartTooSmallException { message :: Maybe (ExceptionMessage) }
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
newLayerPartTooSmallException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> LayerPartTooSmallException
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
  = LayersNotFoundException { message :: Maybe (ExceptionMessage) }
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
newLayersNotFoundException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> LayersNotFoundException
```

Constructs LayersNotFoundException's fields from required parameters

#### `LifecyclePolicyNotFoundException`

``` purescript
newtype LifecyclePolicyNotFoundException
  = LifecyclePolicyNotFoundException { message :: Maybe (ExceptionMessage) }
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
newLifecyclePolicyNotFoundException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> LifecyclePolicyNotFoundException
```

Constructs LifecyclePolicyNotFoundException's fields from required parameters

#### `LifecyclePolicyPreviewFilter`

``` purescript
newtype LifecyclePolicyPreviewFilter
  = LifecyclePolicyPreviewFilter { tagStatus :: Maybe (TagStatus) }
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
newLifecyclePolicyPreviewFilter' :: ({ tagStatus :: Maybe (TagStatus) } -> { tagStatus :: Maybe (TagStatus) }) -> LifecyclePolicyPreviewFilter
```

Constructs LifecyclePolicyPreviewFilter's fields from required parameters

#### `LifecyclePolicyPreviewInProgressException`

``` purescript
newtype LifecyclePolicyPreviewInProgressException
  = LifecyclePolicyPreviewInProgressException { message :: Maybe (ExceptionMessage) }
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
newLifecyclePolicyPreviewInProgressException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> LifecyclePolicyPreviewInProgressException
```

Constructs LifecyclePolicyPreviewInProgressException's fields from required parameters

#### `LifecyclePolicyPreviewNotFoundException`

``` purescript
newtype LifecyclePolicyPreviewNotFoundException
  = LifecyclePolicyPreviewNotFoundException { message :: Maybe (ExceptionMessage) }
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
newLifecyclePolicyPreviewNotFoundException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> LifecyclePolicyPreviewNotFoundException
```

Constructs LifecyclePolicyPreviewNotFoundException's fields from required parameters

#### `LifecyclePolicyPreviewResult`

``` purescript
newtype LifecyclePolicyPreviewResult
  = LifecyclePolicyPreviewResult { imageTags :: Maybe (ImageTagList), imageDigest :: Maybe (ImageDigest), imagePushedAt :: Maybe (PushTimestamp), action :: Maybe (LifecyclePolicyRuleAction), appliedRulePriority :: Maybe (LifecyclePolicyRulePriority) }
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
newLifecyclePolicyPreviewResult' :: ({ imageTags :: Maybe (ImageTagList), imageDigest :: Maybe (ImageDigest), imagePushedAt :: Maybe (PushTimestamp), action :: Maybe (LifecyclePolicyRuleAction), appliedRulePriority :: Maybe (LifecyclePolicyRulePriority) } -> { imageTags :: Maybe (ImageTagList), imageDigest :: Maybe (ImageDigest), imagePushedAt :: Maybe (PushTimestamp), action :: Maybe (LifecyclePolicyRuleAction), appliedRulePriority :: Maybe (LifecyclePolicyRulePriority) }) -> LifecyclePolicyPreviewResult
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
  = LifecyclePolicyPreviewSummary { expiringImageTotalCount :: Maybe (ImageCount) }
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
newLifecyclePolicyPreviewSummary' :: ({ expiringImageTotalCount :: Maybe (ImageCount) } -> { expiringImageTotalCount :: Maybe (ImageCount) }) -> LifecyclePolicyPreviewSummary
```

Constructs LifecyclePolicyPreviewSummary's fields from required parameters

#### `LifecyclePolicyRuleAction`

``` purescript
newtype LifecyclePolicyRuleAction
  = LifecyclePolicyRuleAction { "type" :: Maybe (ImageActionType) }
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
newLifecyclePolicyRuleAction' :: ({ "type" :: Maybe (ImageActionType) } -> { "type" :: Maybe (ImageActionType) }) -> LifecyclePolicyRuleAction
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
  = LimitExceededException { message :: Maybe (ExceptionMessage) }
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
newLimitExceededException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListImagesFilter`

``` purescript
newtype ListImagesFilter
  = ListImagesFilter { tagStatus :: Maybe (TagStatus) }
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
newListImagesFilter' :: ({ tagStatus :: Maybe (TagStatus) } -> { tagStatus :: Maybe (TagStatus) }) -> ListImagesFilter
```

Constructs ListImagesFilter's fields from required parameters

#### `ListImagesRequest`

``` purescript
newtype ListImagesRequest
  = ListImagesRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), filter :: Maybe (ListImagesFilter) }
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
newListImagesRequest' :: RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), filter :: Maybe (ListImagesFilter) } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), filter :: Maybe (ListImagesFilter) }) -> ListImagesRequest
```

Constructs ListImagesRequest's fields from required parameters

#### `ListImagesResponse`

``` purescript
newtype ListImagesResponse
  = ListImagesResponse { imageIds :: Maybe (ImageIdentifierList), nextToken :: Maybe (NextToken) }
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
newListImagesResponse' :: ({ imageIds :: Maybe (ImageIdentifierList), nextToken :: Maybe (NextToken) } -> { imageIds :: Maybe (ImageIdentifierList), nextToken :: Maybe (NextToken) }) -> ListImagesResponse
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
  = PutImageRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageManifest :: ImageManifest, imageTag :: Maybe (ImageTag) }
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
newPutImageRequest' :: ImageManifest -> RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageManifest :: ImageManifest, imageTag :: Maybe (ImageTag) } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, imageManifest :: ImageManifest, imageTag :: Maybe (ImageTag) }) -> PutImageRequest
```

Constructs PutImageRequest's fields from required parameters

#### `PutImageResponse`

``` purescript
newtype PutImageResponse
  = PutImageResponse { image :: Maybe (Image) }
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
newPutImageResponse' :: ({ image :: Maybe (Image) } -> { image :: Maybe (Image) }) -> PutImageResponse
```

Constructs PutImageResponse's fields from required parameters

#### `PutLifecyclePolicyRequest`

``` purescript
newtype PutLifecyclePolicyRequest
  = PutLifecyclePolicyRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: LifecyclePolicyText }
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
newPutLifecyclePolicyRequest' :: LifecyclePolicyText -> RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: LifecyclePolicyText } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: LifecyclePolicyText }) -> PutLifecyclePolicyRequest
```

Constructs PutLifecyclePolicyRequest's fields from required parameters

#### `PutLifecyclePolicyResponse`

``` purescript
newtype PutLifecyclePolicyResponse
  = PutLifecyclePolicyResponse { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText) }
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
newPutLifecyclePolicyResponse' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText) }) -> PutLifecyclePolicyResponse
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
  = Repository { repositoryArn :: Maybe (Arn), registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), repositoryUri :: Maybe (Url), createdAt :: Maybe (CreationTimestamp) }
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
newRepository' :: ({ repositoryArn :: Maybe (Arn), registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), repositoryUri :: Maybe (Url), createdAt :: Maybe (CreationTimestamp) } -> { repositoryArn :: Maybe (Arn), registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), repositoryUri :: Maybe (Url), createdAt :: Maybe (CreationTimestamp) }) -> Repository
```

Constructs Repository's fields from required parameters

#### `RepositoryAlreadyExistsException`

``` purescript
newtype RepositoryAlreadyExistsException
  = RepositoryAlreadyExistsException { message :: Maybe (ExceptionMessage) }
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
newRepositoryAlreadyExistsException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> RepositoryAlreadyExistsException
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
  = RepositoryNotEmptyException { message :: Maybe (ExceptionMessage) }
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
newRepositoryNotEmptyException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> RepositoryNotEmptyException
```

Constructs RepositoryNotEmptyException's fields from required parameters

#### `RepositoryNotFoundException`

``` purescript
newtype RepositoryNotFoundException
  = RepositoryNotFoundException { message :: Maybe (ExceptionMessage) }
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
newRepositoryNotFoundException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> RepositoryNotFoundException
```

Constructs RepositoryNotFoundException's fields from required parameters

#### `RepositoryPolicyNotFoundException`

``` purescript
newtype RepositoryPolicyNotFoundException
  = RepositoryPolicyNotFoundException { message :: Maybe (ExceptionMessage) }
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
newRepositoryPolicyNotFoundException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> RepositoryPolicyNotFoundException
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
  = ServerException { message :: Maybe (ExceptionMessage) }
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
newServerException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> ServerException
```

Constructs ServerException's fields from required parameters

#### `SetRepositoryPolicyRequest`

``` purescript
newtype SetRepositoryPolicyRequest
  = SetRepositoryPolicyRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, policyText :: RepositoryPolicyText, force :: Maybe (ForceFlag) }
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
newSetRepositoryPolicyRequest' :: RepositoryPolicyText -> RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, policyText :: RepositoryPolicyText, force :: Maybe (ForceFlag) } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, policyText :: RepositoryPolicyText, force :: Maybe (ForceFlag) }) -> SetRepositoryPolicyRequest
```

Constructs SetRepositoryPolicyRequest's fields from required parameters

#### `SetRepositoryPolicyResponse`

``` purescript
newtype SetRepositoryPolicyResponse
  = SetRepositoryPolicyResponse { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), policyText :: Maybe (RepositoryPolicyText) }
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
newSetRepositoryPolicyResponse' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), policyText :: Maybe (RepositoryPolicyText) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), policyText :: Maybe (RepositoryPolicyText) }) -> SetRepositoryPolicyResponse
```

Constructs SetRepositoryPolicyResponse's fields from required parameters

#### `StartLifecyclePolicyPreviewRequest`

``` purescript
newtype StartLifecyclePolicyPreviewRequest
  = StartLifecyclePolicyPreviewRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: Maybe (LifecyclePolicyText) }
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
newStartLifecyclePolicyPreviewRequest' :: RepositoryName -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: Maybe (LifecyclePolicyText) } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, lifecyclePolicyText :: Maybe (LifecyclePolicyText) }) -> StartLifecyclePolicyPreviewRequest
```

Constructs StartLifecyclePolicyPreviewRequest's fields from required parameters

#### `StartLifecyclePolicyPreviewResponse`

``` purescript
newtype StartLifecyclePolicyPreviewResponse
  = StartLifecyclePolicyPreviewResponse { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), status :: Maybe (LifecyclePolicyPreviewStatus) }
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
newStartLifecyclePolicyPreviewResponse' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), status :: Maybe (LifecyclePolicyPreviewStatus) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), lifecyclePolicyText :: Maybe (LifecyclePolicyText), status :: Maybe (LifecyclePolicyPreviewStatus) }) -> StartLifecyclePolicyPreviewResponse
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
  = UploadLayerPartRequest { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, partFirstByte :: PartSize, partLastByte :: PartSize, layerPartBlob :: LayerPartBlob }
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
newUploadLayerPartRequest' :: LayerPartBlob -> PartSize -> PartSize -> RepositoryName -> UploadId -> ({ registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, partFirstByte :: PartSize, partLastByte :: PartSize, layerPartBlob :: LayerPartBlob } -> { registryId :: Maybe (RegistryId), repositoryName :: RepositoryName, uploadId :: UploadId, partFirstByte :: PartSize, partLastByte :: PartSize, layerPartBlob :: LayerPartBlob }) -> UploadLayerPartRequest
```

Constructs UploadLayerPartRequest's fields from required parameters

#### `UploadLayerPartResponse`

``` purescript
newtype UploadLayerPartResponse
  = UploadLayerPartResponse { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), uploadId :: Maybe (UploadId), lastByteReceived :: Maybe (PartSize) }
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
newUploadLayerPartResponse' :: ({ registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), uploadId :: Maybe (UploadId), lastByteReceived :: Maybe (PartSize) } -> { registryId :: Maybe (RegistryId), repositoryName :: Maybe (RepositoryName), uploadId :: Maybe (UploadId), lastByteReceived :: Maybe (PartSize) }) -> UploadLayerPartResponse
```

Constructs UploadLayerPartResponse's fields from required parameters

#### `UploadNotFoundException`

``` purescript
newtype UploadNotFoundException
  = UploadNotFoundException { message :: Maybe (ExceptionMessage) }
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
newUploadNotFoundException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> UploadNotFoundException
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


