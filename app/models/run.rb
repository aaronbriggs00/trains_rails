class Run < ApplicationRecord
    validates :line, :route, :run_number, :operator_id, :presence => true

    VALID_SORT_COLUMNS = ["line", "route", "run_number", "operator_id"].freeze
    VALID_ORDERS = ["asc", "desc"].freeze

    scope :sort_with_cursor, ->(options = {}) {
        sort_by = options[:sort_by] || "run_number"
        sort_by = sort_by.in?(VALID_SORT_COLUMNS) ? sort_by : "run_number"
        order = options[:order] || "asc"
        order = order.in?(VALID_ORDERS) ? order : "asc"
        puts order, sort_by

        pagination_size = 5
        rows_skipped = pagination_size * (options[:page].to_i - 1)

        order(sort_by => order).slice(rows_skipped, pagination_size)
    }
end
