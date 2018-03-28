
module AWS.ECR.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.ECR as ECR
import AWS.ECR.Types as ECRTypes


-- | <p>Check the availability of multiple image layers in a specified registry and repository.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
batchCheckLayerAvailability :: forall eff. ECR.Service -> ECRTypes.BatchCheckLayerAvailabilityRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.BatchCheckLayerAvailabilityResponse
batchCheckLayerAvailability (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchCheckLayerAvailability"


-- | <p>Deletes a list of specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p> <p>You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository.</p> <p>You can completely delete an image (and all of its tags) by specifying the image's digest in your request.</p>
batchDeleteImage :: forall eff. ECR.Service -> ECRTypes.BatchDeleteImageRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.BatchDeleteImageResponse
batchDeleteImage (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchDeleteImage"


-- | <p>Gets detailed information for specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p>
batchGetImage :: forall eff. ECR.Service -> ECRTypes.BatchGetImageRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.BatchGetImageResponse
batchGetImage (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchGetImage"


-- | <p>Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a <code>sha256</code> digest of the image layer for data validation purposes.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
completeLayerUpload :: forall eff. ECR.Service -> ECRTypes.CompleteLayerUploadRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.CompleteLayerUploadResponse
completeLayerUpload (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "completeLayerUpload"


-- | <p>Creates an image repository.</p>
createRepository :: forall eff. ECR.Service -> ECRTypes.CreateRepositoryRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.CreateRepositoryResponse
createRepository (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createRepository"


-- | <p>Deletes the specified lifecycle policy.</p>
deleteLifecyclePolicy :: forall eff. ECR.Service -> ECRTypes.DeleteLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.DeleteLifecyclePolicyResponse
deleteLifecyclePolicy (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteLifecyclePolicy"


-- | <p>Deletes an existing image repository. If a repository contains images, you must use the <code>force</code> option to delete it.</p>
deleteRepository :: forall eff. ECR.Service -> ECRTypes.DeleteRepositoryRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.DeleteRepositoryResponse
deleteRepository (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteRepository"


-- | <p>Deletes the repository policy from a specified repository.</p>
deleteRepositoryPolicy :: forall eff. ECR.Service -> ECRTypes.DeleteRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.DeleteRepositoryPolicyResponse
deleteRepositoryPolicy (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteRepositoryPolicy"


-- | <p>Returns metadata about the images in a repository, including image size, image tags, and creation date.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>
describeImages :: forall eff. ECR.Service -> ECRTypes.DescribeImagesRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.DescribeImagesResponse
describeImages (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeImages"


-- | <p>Describes image repositories in a registry.</p>
describeRepositories :: forall eff. ECR.Service -> ECRTypes.DescribeRepositoriesRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.DescribeRepositoriesResponse
describeRepositories (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeRepositories"


-- | <p>Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the <code>docker</code> CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed.</p> <p>The <code>authorizationToken</code> returned for each registry specified is a base64 encoded string that can be decoded and used in a <code>docker login</code> command to authenticate to a registry. The AWS CLI offers an <code>aws ecr get-login</code> command that simplifies the login process.</p>
getAuthorizationToken :: forall eff. ECR.Service -> ECRTypes.GetAuthorizationTokenRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.GetAuthorizationTokenResponse
getAuthorizationToken (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getAuthorizationToken"


-- | <p>Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
getDownloadUrlForLayer :: forall eff. ECR.Service -> ECRTypes.GetDownloadUrlForLayerRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.GetDownloadUrlForLayerResponse
getDownloadUrlForLayer (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDownloadUrlForLayer"


-- | <p>Retrieves the specified lifecycle policy.</p>
getLifecyclePolicy :: forall eff. ECR.Service -> ECRTypes.GetLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.GetLifecyclePolicyResponse
getLifecyclePolicy (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getLifecyclePolicy"


-- | <p>Retrieves the results of the specified lifecycle policy preview request.</p>
getLifecyclePolicyPreview :: forall eff. ECR.Service -> ECRTypes.GetLifecyclePolicyPreviewRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.GetLifecyclePolicyPreviewResponse
getLifecyclePolicyPreview (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getLifecyclePolicyPreview"


-- | <p>Retrieves the repository policy for a specified repository.</p>
getRepositoryPolicy :: forall eff. ECR.Service -> ECRTypes.GetRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.GetRepositoryPolicyResponse
getRepositoryPolicy (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getRepositoryPolicy"


-- | <p>Notify Amazon ECR that you intend to upload an image layer.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
initiateLayerUpload :: forall eff. ECR.Service -> ECRTypes.InitiateLayerUploadRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.InitiateLayerUploadResponse
initiateLayerUpload (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "initiateLayerUpload"


-- | <p>Lists all the image IDs for a given repository.</p> <p>You can filter images based on whether or not they are tagged by setting the <code>tagStatus</code> parameter to <code>TAGGED</code> or <code>UNTAGGED</code>. For example, you can filter your results to return only <code>UNTAGGED</code> images and then pipe that result to a <a>BatchDeleteImage</a> operation to delete them. Or, you can filter your results to return only <code>TAGGED</code> images to list all of the tags in your repository.</p>
listImages :: forall eff. ECR.Service -> ECRTypes.ListImagesRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.ListImagesResponse
listImages (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listImages"


-- | <p>Creates or updates the image manifest and tags associated with an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
putImage :: forall eff. ECR.Service -> ECRTypes.PutImageRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.PutImageResponse
putImage (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putImage"


-- | <p>Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html">Lifecycle Policy Template</a>.</p>
putLifecyclePolicy :: forall eff. ECR.Service -> ECRTypes.PutLifecyclePolicyRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.PutLifecyclePolicyResponse
putLifecyclePolicy (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putLifecyclePolicy"


-- | <p>Applies a repository policy on a specified repository to control access permissions.</p>
setRepositoryPolicy :: forall eff. ECR.Service -> ECRTypes.SetRepositoryPolicyRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.SetRepositoryPolicyResponse
setRepositoryPolicy (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setRepositoryPolicy"


-- | <p>Starts a preview of the specified lifecycle policy. This allows you to see the results before creating the lifecycle policy.</p>
startLifecyclePolicyPreview :: forall eff. ECR.Service -> ECRTypes.StartLifecyclePolicyPreviewRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.StartLifecyclePolicyPreviewResponse
startLifecyclePolicyPreview (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startLifecyclePolicyPreview"


-- | <p>Uploads an image layer part to Amazon ECR.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>
uploadLayerPart :: forall eff. ECR.Service -> ECRTypes.UploadLayerPartRequest -> Aff (exception :: EXCEPTION | eff) ECRTypes.UploadLayerPartResponse
uploadLayerPart (ECR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "uploadLayerPart"
