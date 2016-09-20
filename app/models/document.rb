class Document < ApplicationRecord

	DIRECT_UPLOAD_URL_FORMAT = %r{\Ahttps:\/\/#{Rails.application.secrets.aws['s3_bucket_name']}\.s3\.amazonaws\.com\/(?<path>uploads\/.+\/(?<filename>.+))\z}x.freeze

	has_attached_file :upload

	enum status: { unprocessed: 0, processed: 1 }

	validates :direct_upload_url, presence: true, format: { with: DIRECT_UPLOAD_URL_FORMAT }
  	do_not_validate_attachment_file_type :upload

end
