## Module AWS.ECR.Requests

#### `batchCheckLayerAvailability`

``` purescript
batchCheckLayerAvailability :: forall eff. Service -> BatchCheckLayerAvailabilityRequest -> Aff (exception :: EXCEPTION | eff) BatchCheckLayerAvailabilityResponse
```

<p>Check the availability of multiple image layers in a specified registry and repository.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `batchDeleteImage`

``` purescript
batchDeleteImage :: forall eff. Service -> BatchDeleteImageRequest -> Aff (exception :: EXCEPTION | eff) BatchDeleteImageResponse
```

<p>Deletes a list of specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p> <p>You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository.</p> <p>You can completely delete an image (and all of its tags) by specifying the image's digest in your request.</p>

#### `batchGetImage`

``` purescript
batchGetImage :: forall eff. Service -> BatchGetImageRequest -> Aff (exception :: EXCEPTION | eff) BatchGetImageResponse
```

<p>Gets detailed information for specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p>

#### `completeLayerUpload`

``` purescript
completeLayerUpload :: forall eff. Service -> CompleteLayerUploadRequest -> Aff (exception :: EXCEPTION | eff) CompleteLayerUploadResponse
```

<p>Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a <code>sha256</code> digest of the image layer for data validation purposes.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `createRepository`

``` purescript
createRepository :: forall eff. Service -> CreateRepositoryRequest -> Aff (exception :: EXCEPTION | eff) CreateRepositoryResponse
```

<p>Creates an image repository.</p>

#### `deleteLifecyclePolicy`

``` purescript
deleteLifecyclePolicy :: forall eff. Service -> DeleteLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) DeleteLifecyclePolicyResponse
```

<p>Deletes the specified lifecycle policy.</p>

#### `deleteRepository`

``` purescript
deleteRepository :: forall eff. Service -> DeleteRepositoryRequest -> Aff (exception :: EXCEPTION | eff) DeleteRepositoryResponse
```

<p>Deletes an existing image repository. If a repository contains images, you must use the <code>force</code> option to delete it.</p>

#### `deleteRepositoryPolicy`

``` purescript
deleteRepositoryPolicy :: forall eff. Service -> DeleteRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) DeleteRepositoryPolicyResponse
```

<p>Deletes the repository policy from a specified repository.</p>

#### `describeImages`

``` purescript
describeImages :: forall eff. Service -> DescribeImagesRequest -> Aff (exception :: EXCEPTION | eff) DescribeImagesResponse
```

<p>Returns metadata about the images in a repository, including image size, image tags, and creation date.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>

#### `describeRepositories`

``` purescript
describeRepositories :: forall eff. Service -> DescribeRepositoriesRequest -> Aff (exception :: EXCEPTION | eff) DescribeRepositoriesResponse
```

<p>Describes image repositories in a registry.</p>

#### `getAuthorizationToken`

``` purescript
getAuthorizationToken :: forall eff. Service -> GetAuthorizationTokenRequest -> Aff (exception :: EXCEPTION | eff) GetAuthorizationTokenResponse
```

<p>Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the <code>docker</code> CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed.</p> <p>The <code>authorizationToken</code> returned for each registry specified is a base64 encoded string that can be decoded and used in a <code>docker login</code> command to authenticate to a registry. The AWS CLI offers an <code>aws ecr get-login</code> command that simplifies the login process.</p>

#### `getDownloadUrlForLayer`

``` purescript
getDownloadUrlForLayer :: forall eff. Service -> GetDownloadUrlForLayerRequest -> Aff (exception :: EXCEPTION | eff) GetDownloadUrlForLayerResponse
```

<p>Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `getLifecyclePolicy`

``` purescript
getLifecyclePolicy :: forall eff. Service -> GetLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) GetLifecyclePolicyResponse
```

<p>Retrieves the specified lifecycle policy.</p>

#### `getLifecyclePolicyPreview`

``` purescript
getLifecyclePolicyPreview :: forall eff. Service -> GetLifecyclePolicyPreviewRequest -> Aff (exception :: EXCEPTION | eff) GetLifecyclePolicyPreviewResponse
```

<p>Retrieves the results of the specified lifecycle policy preview request.</p>

#### `getRepositoryPolicy`

``` purescript
getRepositoryPolicy :: forall eff. Service -> GetRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetRepositoryPolicyResponse
```

<p>Retrieves the repository policy for a specified repository.</p>

#### `initiateLayerUpload`

``` purescript
initiateLayerUpload :: forall eff. Service -> InitiateLayerUploadRequest -> Aff (exception :: EXCEPTION | eff) InitiateLayerUploadResponse
```

<p>Notify Amazon ECR that you intend to upload an image layer.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `listImages`

``` purescript
listImages :: forall eff. Service -> ListImagesRequest -> Aff (exception :: EXCEPTION | eff) ListImagesResponse
```

<p>Lists all the image IDs for a given repository.</p> <p>You can filter images based on whether or not they are tagged by setting the <code>tagStatus</code> parameter to <code>TAGGED</code> or <code>UNTAGGED</code>. For example, you can filter your results to return only <code>UNTAGGED</code> images and then pipe that result to a <a>BatchDeleteImage</a> operation to delete them. Or, you can filter your results to return only <code>TAGGED</code> images to list all of the tags in your repository.</p>

#### `putImage`

``` purescript
putImage :: forall eff. Service -> PutImageRequest -> Aff (exception :: EXCEPTION | eff) PutImageResponse
```

<p>Creates or updates the image manifest and tags associated with an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

#### `putLifecyclePolicy`

``` purescript
putLifecyclePolicy :: forall eff. Service -> PutLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) PutLifecyclePolicyResponse
```

<p>Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html">Lifecycle Policy Template</a>.</p>

#### `setRepositoryPolicy`

``` purescript
setRepositoryPolicy :: forall eff. Service -> SetRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) SetRepositoryPolicyResponse
```

<p>Applies a repository policy on a specified repository to control access permissions.</p>

#### `startLifecyclePolicyPreview`

``` purescript
startLifecyclePolicyPreview :: forall eff. Service -> StartLifecyclePolicyPreviewRequest -> Aff (exception :: EXCEPTION | eff) StartLifecyclePolicyPreviewResponse
```

<p>Starts a preview of the specified lifecycle policy. This allows you to see the results before creating the lifecycle policy.</p>

#### `uploadLayerPart`

``` purescript
uploadLayerPart :: forall eff. Service -> UploadLayerPartRequest -> Aff (exception :: EXCEPTION | eff) UploadLayerPartResponse
```

<p>Uploads an image layer part to Amazon ECR.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>


