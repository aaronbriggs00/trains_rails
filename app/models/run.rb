class Run < ApplicationRecord
    validates :line, :route, :run_number, :operator_id, :presence => true
end
