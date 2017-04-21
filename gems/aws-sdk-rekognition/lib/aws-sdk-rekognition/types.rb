# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Rekognition
  module Types

    # Structure containing the estimated age range, in years, for a face.
    #
    # Rekognition estimates an age-range for faces detected in the input
    # image. Estimated age ranges can overlap; a face of a 5 year old may
    # have an estimated range of 4-6 whilst the face of a 6 year old may
    # have an estimated range of 4-8.
    #
    # @!attribute [rw] low
    #   The lowest estimated age.
    #   @return [Integer]
    #
    # @!attribute [rw] high
    #   The highest estimated age.
    #   @return [Integer]
    #
    class AgeRange < Struct.new(
      :low,
      :high)
      include Aws::Structure
    end

    # Indicates whether or not the face has a beard, and the confidence
    # level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the face has beard or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Beard < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Identifies the bounding box around the object or face. The `left`
    # (x-coordinate) and `top` (y-coordinate) are coordinates representing
    # the top and left sides of the bounding box. Note that the upper-left
    # corner of the image is the origin (0,0).
    #
    # The `top` and `left` values returned are ratios of the overall image
    # size. For example, if the input image is 700x200 pixels, and the
    # top-left coordinate of the bounding box is 350x50 pixels, the API
    # returns a `left` value of 0.5 (350/700) and a `top` value of 0.25
    # (50/200).
    #
    # The `width` and `height` values represent the dimensions of the
    # bounding box as a ratio of the overall image dimension. For example,
    # if the input image is 700x200 pixels, and the bounding box width is 70
    # pixels, the width returned is 0.1.
    #
    # <note markdown="1"> The bounding box coordinates can have negative values. For example, if
    # Amazon Rekognition is able to detect a face that is at the image edge
    # and is only partially visible, the service can return coordinates that
    # are outside the image bounds and, depending on the image edge, you
    # might get negative values or values greater than 1 for the `left` or
    # `top` values.
    #
    #  </note>
    #
    # @!attribute [rw] width
    #   Width of the bounding box as a ratio of the overall image width.
    #   @return [Float]
    #
    # @!attribute [rw] height
    #   Height of the bounding box as a ratio of the overall image height.
    #   @return [Float]
    #
    # @!attribute [rw] left
    #   Left coordinate of the bounding box as a ratio of overall image
    #   width.
    #   @return [Float]
    #
    # @!attribute [rw] top
    #   Top coordinate of the bounding box as a ratio of overall image
    #   height.
    #   @return [Float]
    #
    class BoundingBox < Struct.new(
      :width,
      :height,
      :left,
      :top)
      include Aws::Structure
    end

    # For the provided the bounding box, confidence level that the bounding
    # box actually contains a face, and the similarity between the face in
    # the bounding box and the face in the source image.
    #
    # @!attribute [rw] similarity
    #   Level of confidence that the faces match.
    #   @return [Float]
    #
    # @!attribute [rw] face
    #   Provides face metadata (bounding box and confidence that the
    #   bounding box actually contains a face).
    #   @return [Types::ComparedFace]
    #
    class CompareFacesMatch < Struct.new(
      :similarity,
      :face)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CompareFacesRequest
    #   data as a hash:
    #
    #       {
    #         source_image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         target_image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         similarity_threshold: 1.0,
    #       }
    #
    # @!attribute [rw] source_image
    #   Source image either as bytes or an S3 object
    #   @return [Types::Image]
    #
    # @!attribute [rw] target_image
    #   Target image either as bytes or an S3 object
    #   @return [Types::Image]
    #
    # @!attribute [rw] similarity_threshold
    #   The minimum level of confidence in the match you want included in
    #   the result.
    #   @return [Float]
    #
    class CompareFacesRequest < Struct.new(
      :source_image,
      :target_image,
      :similarity_threshold)
      include Aws::Structure
    end

    # @!attribute [rw] source_image_face
    #   The face from the source image that was used for comparison.
    #   @return [Types::ComparedSourceImageFace]
    #
    # @!attribute [rw] face_matches
    #   Provides an array of `CompareFacesMatch` objects. Each object
    #   provides the bounding box, confidence that the bounding box contains
    #   a face, and the similarity between the face in the bounding box and
    #   the face in the source image.
    #   @return [Array<Types::CompareFacesMatch>]
    #
    class CompareFacesResponse < Struct.new(
      :source_image_face,
      :face_matches)
      include Aws::Structure
    end

    # Provides face metadata (bounding box and confidence that the bounding
    # box actually contains a face).
    #
    # @!attribute [rw] bounding_box
    #   Identifies the bounding box around the object or face. The `left`
    #   (x-coordinate) and `top` (y-coordinate) are coordinates representing
    #   the top and left sides of the bounding box. Note that the upper-left
    #   corner of the image is the origin (0,0).
    #
    #   The `top` and `left` values returned are ratios of the overall image
    #   size. For example, if the input image is 700x200 pixels, and the
    #   top-left coordinate of the bounding box is 350x50 pixels, the API
    #   returns a `left` value of 0.5 (350/700) and a `top` value of 0.25
    #   (50/200).
    #
    #   The `width` and `height` values represent the dimensions of the
    #   bounding box as a ratio of the overall image dimension. For example,
    #   if the input image is 700x200 pixels, and the bounding box width is
    #   70 pixels, the width returned is 0.1.
    #
    #   <note markdown="1"> The bounding box coordinates can have negative values. For example,
    #   if Amazon Rekognition is able to detect a face that is at the image
    #   edge and is only partially visible, the service can return
    #   coordinates that are outside the image bounds and, depending on the
    #   image edge, you might get negative values or values greater than 1
    #   for the `left` or `top` values.
    #
    #    </note>
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] confidence
    #   Level of confidence that what the bounding box contains is a face.
    #   @return [Float]
    #
    class ComparedFace < Struct.new(
      :bounding_box,
      :confidence)
      include Aws::Structure
    end

    # Type that describes the face Amazon Rekognition chose to compare with
    # the faces in the target. This contains a bounding box for the selected
    # face and confidence level that the bounding box contains a face. Note
    # that Amazon Rekognition selects the largest face in the source image
    # for this comparison.
    #
    # @!attribute [rw] bounding_box
    #   Identifies the bounding box around the object or face. The `left`
    #   (x-coordinate) and `top` (y-coordinate) are coordinates representing
    #   the top and left sides of the bounding box. Note that the upper-left
    #   corner of the image is the origin (0,0).
    #
    #   The `top` and `left` values returned are ratios of the overall image
    #   size. For example, if the input image is 700x200 pixels, and the
    #   top-left coordinate of the bounding box is 350x50 pixels, the API
    #   returns a `left` value of 0.5 (350/700) and a `top` value of 0.25
    #   (50/200).
    #
    #   The `width` and `height` values represent the dimensions of the
    #   bounding box as a ratio of the overall image dimension. For example,
    #   if the input image is 700x200 pixels, and the bounding box width is
    #   70 pixels, the width returned is 0.1.
    #
    #   <note markdown="1"> The bounding box coordinates can have negative values. For example,
    #   if Amazon Rekognition is able to detect a face that is at the image
    #   edge and is only partially visible, the service can return
    #   coordinates that are outside the image bounds and, depending on the
    #   image edge, you might get negative values or values greater than 1
    #   for the `left` or `top` values.
    #
    #    </note>
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] confidence
    #   Confidence level that the selected bounding box contains a face.
    #   @return [Float]
    #
    class ComparedSourceImageFace < Struct.new(
      :bounding_box,
      :confidence)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCollectionRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID for the collection that you are creating.
    #   @return [String]
    #
    class CreateCollectionRequest < Struct.new(
      :collection_id)
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   HTTP status code indicating the result of the operation.
    #   @return [Integer]
    #
    # @!attribute [rw] collection_arn
    #   Amazon Resource Name (ARN) of the collection. You can use this to
    #   manage permissions on your resources.
    #   @return [String]
    #
    class CreateCollectionResponse < Struct.new(
      :status_code,
      :collection_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCollectionRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID of the collection to delete.
    #   @return [String]
    #
    class DeleteCollectionRequest < Struct.new(
      :collection_id)
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   HTTP status code that indicates the result of the operation.
    #   @return [Integer]
    #
    class DeleteCollectionResponse < Struct.new(
      :status_code)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFacesRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #         face_ids: ["FaceId"], # required
    #       }
    #
    # @!attribute [rw] collection_id
    #   Collection from which to remove the specific faces.
    #   @return [String]
    #
    # @!attribute [rw] face_ids
    #   An array of face IDs to delete.
    #   @return [Array<String>]
    #
    class DeleteFacesRequest < Struct.new(
      :collection_id,
      :face_ids)
      include Aws::Structure
    end

    # @!attribute [rw] deleted_faces
    #   An array of strings (face IDs) of the faces that were deleted.
    #   @return [Array<String>]
    #
    class DeleteFacesResponse < Struct.new(
      :deleted_faces)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectFacesRequest
    #   data as a hash:
    #
    #       {
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         attributes: ["DEFAULT"], # accepts DEFAULT, ALL
    #       }
    #
    # @!attribute [rw] image
    #   The image in which you want to detect faces. You can specify a blob
    #   or an S3 object.
    #   @return [Types::Image]
    #
    # @!attribute [rw] attributes
    #   A list of facial attributes you would like to be returned. By
    #   default, the API returns subset of facial attributes.
    #
    #   For example, you can specify the value as, \["ALL"\] or
    #   \["DEFAULT"\]. If you provide both, \["ALL", "DEFAULT"\], the
    #   service uses a logical AND operator to determine which attributes to
    #   return (in this case, it is all attributes). If you specify all
    #   attributes, Amazon Rekognition performs additional detection.
    #   @return [Array<String>]
    #
    class DetectFacesRequest < Struct.new(
      :image,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] face_details
    #   Details of each face found in the image.
    #   @return [Array<Types::FaceDetail>]
    #
    # @!attribute [rw] orientation_correction
    #   The algorithm detects the image orientation. If it detects that the
    #   image was rotated, it returns the degrees of rotation. If your
    #   application is displaying the image, you can use this value to
    #   adjust the orientation.
    #
    #   For example, if the service detects that the input image was rotated
    #   by 90 degrees, it corrects orientation, performs face detection, and
    #   then returns the faces. That is, the bounding box coordinates in the
    #   response are based on the corrected orientation.
    #
    #   <note markdown="1"> If the source image Exif metadata populates the orientation field,
    #   Amazon Rekognition does not perform orientation correction and the
    #   value of OrientationCorrection will be nil.
    #
    #    </note>
    #   @return [String]
    #
    class DetectFacesResponse < Struct.new(
      :face_details,
      :orientation_correction)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectLabelsRequest
    #   data as a hash:
    #
    #       {
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         max_labels: 1,
    #         min_confidence: 1.0,
    #       }
    #
    # @!attribute [rw] image
    #   The input image. You can provide a blob of image bytes or an S3
    #   object.
    #   @return [Types::Image]
    #
    # @!attribute [rw] max_labels
    #   Maximum number of labels you want the service to return in the
    #   response. The service returns the specified number of highest
    #   confidence labels.
    #   @return [Integer]
    #
    # @!attribute [rw] min_confidence
    #   Specifies the minimum confidence level for the labels to return.
    #   Amazon Rekognition doesn't return any labels with confidence lower
    #   than this specified value.
    #
    #   If `minConfidence` is not specified, the operation returns labels
    #   with a confidence values greater than or equal to 50 percent.
    #   @return [Float]
    #
    class DetectLabelsRequest < Struct.new(
      :image,
      :max_labels,
      :min_confidence)
      include Aws::Structure
    end

    # @!attribute [rw] labels
    #   An array of labels for the real-world objects detected.
    #   @return [Array<Types::Label>]
    #
    # @!attribute [rw] orientation_correction
    #   Amazon Rekognition returns the orientation of the input image that
    #   was detected (clockwise direction). If your application displays the
    #   image, you can use this value to correct the orientation. If Amazon
    #   Rekognition detects that the input image was rotated (for example,
    #   by 90 degrees), it first corrects the orientation before detecting
    #   the labels.
    #
    #   <note markdown="1"> If the source image Exif metadata populates the orientation field,
    #   Amazon Rekognition does not perform orientation correction and the
    #   value of OrientationCorrection will be nil.
    #
    #    </note>
    #   @return [String]
    #
    class DetectLabelsResponse < Struct.new(
      :labels,
      :orientation_correction)
      include Aws::Structure
    end

    # The emotions detected on the face, and the confidence level in the
    # determination. For example, HAPPY, SAD, and ANGRY.
    #
    # @!attribute [rw] type
    #   Type of emotion detected.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Emotion < Struct.new(
      :type,
      :confidence)
      include Aws::Structure
    end

    # Indicates whether or not the eyes on the face are open, and the
    # confidence level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the eyes on the face are open.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class EyeOpen < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Indicates whether or not the face is wearing eye glasses, and the
    # confidence level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the face is wearing eye glasses
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Eyeglasses < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Describes the face properties such as the bounding box, face ID, image
    # ID of the source image, and external image ID that you assigned.
    #
    # @!attribute [rw] face_id
    #   Unique identifier that Amazon Rekognition assigns to the face.
    #   @return [String]
    #
    # @!attribute [rw] bounding_box
    #   Identifies the bounding box around the object or face. The `left`
    #   (x-coordinate) and `top` (y-coordinate) are coordinates representing
    #   the top and left sides of the bounding box. Note that the upper-left
    #   corner of the image is the origin (0,0).
    #
    #   The `top` and `left` values returned are ratios of the overall image
    #   size. For example, if the input image is 700x200 pixels, and the
    #   top-left coordinate of the bounding box is 350x50 pixels, the API
    #   returns a `left` value of 0.5 (350/700) and a `top` value of 0.25
    #   (50/200).
    #
    #   The `width` and `height` values represent the dimensions of the
    #   bounding box as a ratio of the overall image dimension. For example,
    #   if the input image is 700x200 pixels, and the bounding box width is
    #   70 pixels, the width returned is 0.1.
    #
    #   <note markdown="1"> The bounding box coordinates can have negative values. For example,
    #   if Amazon Rekognition is able to detect a face that is at the image
    #   edge and is only partially visible, the service can return
    #   coordinates that are outside the image bounds and, depending on the
    #   image edge, you might get negative values or values greater than 1
    #   for the `left` or `top` values.
    #
    #    </note>
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] image_id
    #   Unique identifier that Amazon Rekognition assigns to the source
    #   image.
    #   @return [String]
    #
    # @!attribute [rw] external_image_id
    #   Identifier that you assign to all the faces in the input image.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Confidence level that the bounding box contains a face (and not a
    #   different object such as a tree).
    #   @return [Float]
    #
    class Face < Struct.new(
      :face_id,
      :bounding_box,
      :image_id,
      :external_image_id,
      :confidence)
      include Aws::Structure
    end

    # Structure containing attributes of the face that the algorithm
    # detected.
    #
    # @!attribute [rw] bounding_box
    #   Bounding box of the face.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] age_range
    #   The estimated age range, in years, for the face. Low represents the
    #   lowest estimated age and High represents the highest estimated age.
    #   @return [Types::AgeRange]
    #
    # @!attribute [rw] smile
    #   Indicates whether or not the face is smiling, and the confidence
    #   level in the determination.
    #   @return [Types::Smile]
    #
    # @!attribute [rw] eyeglasses
    #   Indicates whether or not the face is wearing eye glasses, and the
    #   confidence level in the determination.
    #   @return [Types::Eyeglasses]
    #
    # @!attribute [rw] sunglasses
    #   Indicates whether or not the face is wearing sunglasses, and the
    #   confidence level in the determination.
    #   @return [Types::Sunglasses]
    #
    # @!attribute [rw] gender
    #   Gender of the face and the confidence level in the determination.
    #   @return [Types::Gender]
    #
    # @!attribute [rw] beard
    #   Indicates whether or not the face has a beard, and the confidence
    #   level in the determination.
    #   @return [Types::Beard]
    #
    # @!attribute [rw] mustache
    #   Indicates whether or not the face has a mustache, and the confidence
    #   level in the determination.
    #   @return [Types::Mustache]
    #
    # @!attribute [rw] eyes_open
    #   Indicates whether or not the eyes on the face are open, and the
    #   confidence level in the determination.
    #   @return [Types::EyeOpen]
    #
    # @!attribute [rw] mouth_open
    #   Indicates whether or not the mouth on the face is open, and the
    #   confidence level in the determination.
    #   @return [Types::MouthOpen]
    #
    # @!attribute [rw] emotions
    #   The emotions detected on the face, and the confidence level in the
    #   determination. For example, HAPPY, SAD, and ANGRY.
    #   @return [Array<Types::Emotion>]
    #
    # @!attribute [rw] landmarks
    #   Indicates the location of the landmark on the face.
    #   @return [Array<Types::Landmark>]
    #
    # @!attribute [rw] pose
    #   Indicates the pose of the face as determined by pitch, roll, and the
    #   yaw.
    #   @return [Types::Pose]
    #
    # @!attribute [rw] quality
    #   Identifies image brightness and sharpness.
    #   @return [Types::ImageQuality]
    #
    # @!attribute [rw] confidence
    #   Confidence level that the bounding box contains a face (and not a
    #   different object such as a tree).
    #   @return [Float]
    #
    class FaceDetail < Struct.new(
      :bounding_box,
      :age_range,
      :smile,
      :eyeglasses,
      :sunglasses,
      :gender,
      :beard,
      :mustache,
      :eyes_open,
      :mouth_open,
      :emotions,
      :landmarks,
      :pose,
      :quality,
      :confidence)
      include Aws::Structure
    end

    # Provides face metadata. In addition, it also provides the confidence
    # in the match of this face with the input face.
    #
    # @!attribute [rw] similarity
    #   Confidence in the match of this face with the input face.
    #   @return [Float]
    #
    # @!attribute [rw] face
    #   Describes the face properties such as the bounding box, face ID,
    #   image ID of the source image, and external image ID that you
    #   assigned.
    #   @return [Types::Face]
    #
    class FaceMatch < Struct.new(
      :similarity,
      :face)
      include Aws::Structure
    end

    # Object containing both the face metadata (stored in the back-end
    # database) and facial attributes that are detected but aren't stored
    # in the database.
    #
    # @!attribute [rw] face
    #   Describes the face properties such as the bounding box, face ID,
    #   image ID of the source image, and external image ID that you
    #   assigned.
    #   @return [Types::Face]
    #
    # @!attribute [rw] face_detail
    #   Structure containing attributes of the face that the algorithm
    #   detected.
    #   @return [Types::FaceDetail]
    #
    class FaceRecord < Struct.new(
      :face,
      :face_detail)
      include Aws::Structure
    end

    # Gender of the face and the confidence level in the determination.
    #
    # @!attribute [rw] value
    #   Gender of the face.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Gender < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Provides the source image either as bytes or an S3 object.
    #
    # The region for the S3 bucket containing the S3 object must match the
    # region you use for Amazon Rekognition operations.
    #
    # You may need to Base64-encode the image bytes depending on the
    # language you are using and whether or not you are using the AWS SDK.
    # For more information, see example4.
    #
    # If you use the Amazon CLI to call Amazon Rekognition operations,
    # passing image bytes using the Bytes property is not supported. You
    # must first upload the image to an Amazon S3 bucket and then call the
    # operation using the S3Object property.
    #
    # For Amazon Rekognition to process an S3 object, the user must have
    # permission to access the S3 object. For more information, see
    # manage-access-resource-policies.
    #
    # @note When making an API call, you may pass Image
    #   data as a hash:
    #
    #       {
    #         bytes: "data",
    #         s3_object: {
    #           bucket: "S3Bucket",
    #           name: "S3ObjectName",
    #           version: "S3ObjectVersion",
    #         },
    #       }
    #
    # @!attribute [rw] bytes
    #   Blob of image bytes up to 5 MBs.
    #   @return [String]
    #
    # @!attribute [rw] s3_object
    #   Identifies an S3 object as the image source.
    #   @return [Types::S3Object]
    #
    class Image < Struct.new(
      :bytes,
      :s3_object)
      include Aws::Structure
    end

    # Identifies image brightness and sharpness.
    #
    # @!attribute [rw] brightness
    #   Value representing brightness of the face. The service returns a
    #   value between 0 and 1 (inclusive).
    #   @return [Float]
    #
    # @!attribute [rw] sharpness
    #   Value representing sharpness of the face.
    #   @return [Float]
    #
    class ImageQuality < Struct.new(
      :brightness,
      :sharpness)
      include Aws::Structure
    end

    # @note When making an API call, you may pass IndexFacesRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         external_image_id: "ExternalImageId",
    #         detection_attributes: ["DEFAULT"], # accepts DEFAULT, ALL
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID of an existing collection to which you want to add the faces that
    #   are detected in the input images.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   Provides the source image either as bytes or an S3 object.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   You may need to Base64-encode the image bytes depending on the
    #   language you are using and whether or not you are using the AWS SDK.
    #   For more information, see example4.
    #
    #   If you use the Amazon CLI to call Amazon Rekognition operations,
    #   passing image bytes using the Bytes property is not supported. You
    #   must first upload the image to an Amazon S3 bucket and then call the
    #   operation using the S3Object property.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see
    #   manage-access-resource-policies.
    #   @return [Types::Image]
    #
    # @!attribute [rw] external_image_id
    #   ID you want to assign to all the faces detected in the image.
    #   @return [String]
    #
    # @!attribute [rw] detection_attributes
    #   (Optional) Returns detailed attributes of indexed faces. By default,
    #   the operation returns a subset of the facial attributes.
    #
    #   For example, you can specify the value as, \["ALL"\] or
    #   \["DEFAULT"\]. If you provide both, \["ALL", "DEFAULT"\],
    #   Amazon Rekognition uses the logical AND operator to determine which
    #   attributes to return (in this case, it is all attributes). If you
    #   specify all attributes, the service performs additional detection,
    #   in addition to the default.
    #   @return [Array<String>]
    #
    class IndexFacesRequest < Struct.new(
      :collection_id,
      :image,
      :external_image_id,
      :detection_attributes)
      include Aws::Structure
    end

    # @!attribute [rw] face_records
    #   An array of faces detected and added to the collection. For more
    #   information, see howitworks-index-faces.
    #   @return [Array<Types::FaceRecord>]
    #
    # @!attribute [rw] orientation_correction
    #   The algorithm detects the image orientation. If it detects that the
    #   image was rotated, it returns the degree of rotation. You can use
    #   this value to correct the orientation and also appropriately analyze
    #   the bounding box coordinates that are returned.
    #
    #   <note markdown="1"> If the source image Exif metadata populates the orientation field,
    #   Amazon Rekognition does not perform orientation correction and the
    #   value of OrientationCorrection will be nil.
    #
    #    </note>
    #   @return [String]
    #
    class IndexFacesResponse < Struct.new(
      :face_records,
      :orientation_correction)
      include Aws::Structure
    end

    # Structure containing details about the detected label, including name,
    # and level of confidence.
    #
    # @!attribute [rw] name
    #   The name (label) of the object.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Level of confidence.
    #   @return [Float]
    #
    class Label < Struct.new(
      :name,
      :confidence)
      include Aws::Structure
    end

    # Indicates the location of the landmark on the face.
    #
    # @!attribute [rw] type
    #   Type of the landmark.
    #   @return [String]
    #
    # @!attribute [rw] x
    #   x-coordinate from the top left of the landmark expressed as the
    #   ration of the width of the image. For example, if the images is
    #   700x200 and the x-coordinate of the landmark is at 350 pixels, this
    #   value is 0.5.
    #   @return [Float]
    #
    # @!attribute [rw] y
    #   y-coordinate from the top left of the landmark expressed as the
    #   ration of the height of the image. For example, if the images is
    #   700x200 and the y-coordinate of the landmark is at 100 pixels, this
    #   value is 0.5.
    #   @return [Float]
    #
    class Landmark < Struct.new(
      :type,
      :x,
      :y)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCollectionsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Pagination token from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of collection IDs to return.
    #   @return [Integer]
    #
    class ListCollectionsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] collection_ids
    #   An array of collection IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If the result is truncated, the response provides a `NextToken` that
    #   you can use in the subsequent request to fetch the next set of
    #   collection IDs.
    #   @return [String]
    #
    class ListCollectionsResponse < Struct.new(
      :collection_ids,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFacesRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID of the collection from which to list the faces.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Rekognition returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of faces.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of faces to return.
    #   @return [Integer]
    #
    class ListFacesRequest < Struct.new(
      :collection_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] faces
    #   An array of `Face` objects.
    #   @return [Array<Types::Face>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition returns this token
    #   that you can use in the subsequent request to retrieve the next set
    #   of faces.
    #   @return [String]
    #
    class ListFacesResponse < Struct.new(
      :faces,
      :next_token)
      include Aws::Structure
    end

    # Indicates whether or not the mouth on the face is open, and the
    # confidence level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the mouth on the face is open
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class MouthOpen < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Indicates whether or not the face has a mustache, and the confidence
    # level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the face has mustache or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Mustache < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Indicates the pose of the face as determined by pitch, roll, and the
    # yaw.
    #
    # @!attribute [rw] roll
    #   Value representing the face rotation on the roll axis.
    #   @return [Float]
    #
    # @!attribute [rw] yaw
    #   Value representing the face rotation on the yaw axis.
    #   @return [Float]
    #
    # @!attribute [rw] pitch
    #   Value representing the face rotation on the pitch axis.
    #   @return [Float]
    #
    class Pose < Struct.new(
      :roll,
      :yaw,
      :pitch)
      include Aws::Structure
    end

    # Provides the S3 bucket name and object name.
    #
    # The region for the S3 bucket containing the S3 object must match the
    # region you use for Amazon Rekognition operations.
    #
    # For Amazon Rekognition to process an S3 object, the user must have
    # permission to access the S3 object. For more information, see
    # manage-access-resource-policies.
    #
    # @note When making an API call, you may pass S3Object
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       }
    #
    # @!attribute [rw] bucket
    #   Name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   S3 object key name.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   If the bucket is versioning enabled, you can specify the object
    #   version.
    #   @return [String]
    #
    class S3Object < Struct.new(
      :bucket,
      :name,
      :version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchFacesByImageRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         max_faces: 1,
    #         face_match_threshold: 1.0,
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID of the collection to search.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   Provides the source image either as bytes or an S3 object.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   You may need to Base64-encode the image bytes depending on the
    #   language you are using and whether or not you are using the AWS SDK.
    #   For more information, see example4.
    #
    #   If you use the Amazon CLI to call Amazon Rekognition operations,
    #   passing image bytes using the Bytes property is not supported. You
    #   must first upload the image to an Amazon S3 bucket and then call the
    #   operation using the S3Object property.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see
    #   manage-access-resource-policies.
    #   @return [Types::Image]
    #
    # @!attribute [rw] max_faces
    #   Maximum number of faces to return. The operation returns the maximum
    #   number of faces with the highest confidence in the match.
    #   @return [Integer]
    #
    # @!attribute [rw] face_match_threshold
    #   (Optional) Specifies the minimum confidence in the face match to
    #   return. For example, don't return any matches where confidence in
    #   matches is less than 70%.
    #   @return [Float]
    #
    class SearchFacesByImageRequest < Struct.new(
      :collection_id,
      :image,
      :max_faces,
      :face_match_threshold)
      include Aws::Structure
    end

    # @!attribute [rw] searched_face_bounding_box
    #   The bounding box around the face in the input image that Amazon
    #   Rekognition used for the search.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] searched_face_confidence
    #   The level of confidence that the `searchedFaceBoundingBox`, contains
    #   a face.
    #   @return [Float]
    #
    # @!attribute [rw] face_matches
    #   An array of faces that match the input face, along with the
    #   confidence in the match.
    #   @return [Array<Types::FaceMatch>]
    #
    class SearchFacesByImageResponse < Struct.new(
      :searched_face_bounding_box,
      :searched_face_confidence,
      :face_matches)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchFacesRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #         face_id: "FaceId", # required
    #         max_faces: 1,
    #         face_match_threshold: 1.0,
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID of the collection the face belongs to.
    #   @return [String]
    #
    # @!attribute [rw] face_id
    #   ID of a face to find matches for in the collection.
    #   @return [String]
    #
    # @!attribute [rw] max_faces
    #   Maximum number of faces to return. The operation returns the maximum
    #   number of faces with the highest confidence in the match.
    #   @return [Integer]
    #
    # @!attribute [rw] face_match_threshold
    #   Optional value specifying the minimum confidence in the face match
    #   to return. For example, don't return any matches where confidence
    #   in matches is less than 70%.
    #   @return [Float]
    #
    class SearchFacesRequest < Struct.new(
      :collection_id,
      :face_id,
      :max_faces,
      :face_match_threshold)
      include Aws::Structure
    end

    # @!attribute [rw] searched_face_id
    #   ID of the face that was searched for matches in a collection.
    #   @return [String]
    #
    # @!attribute [rw] face_matches
    #   An array of faces that matched the input face, along with the
    #   confidence in the match.
    #   @return [Array<Types::FaceMatch>]
    #
    class SearchFacesResponse < Struct.new(
      :searched_face_id,
      :face_matches)
      include Aws::Structure
    end

    # Indicates whether or not the face is smiling, and the confidence level
    # in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the face is smiling or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Smile < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Indicates whether or not the face is wearing sunglasses, and the
    # confidence level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the face is wearing sunglasses
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Sunglasses < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

  end
end