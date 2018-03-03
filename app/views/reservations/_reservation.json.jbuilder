json.extract! reservation, :id, :name, :email, :tel, :check_in_on, :check_out_on, :check_in_time, :men_number, :women_number, :purpose_of_use, :payment_method, :coupon, :note, :status, :token, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
