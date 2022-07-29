class Run < ApplicationRecord
    validates :line, :route, :run_number, :operator_id, :presence => true

    scope :sort_with_index, ->(options = {}) {
        pagination_size = 5
        rows_skipped = pagination_size * (options[:page].to_i - 1)
        puts rows_skipped, rows_skipped + pagination_size
        order(options[:sort_by] => options[:order]).slice(rows_skipped, pagination_size)
    }
end
