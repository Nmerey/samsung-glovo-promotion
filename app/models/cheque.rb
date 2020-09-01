class Cheque < ApplicationRecord
	mount_uploader :cheque_image, ChequeUploader
end
