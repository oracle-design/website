class ServiceForm < ActiveRecord::Base
  as_enum :project_type, [:website_development, :website_design, :identity_design, :marketing_strategies]
  as_enum :budget_range, %i(six_hundred_thousand one_million three_million five_million)
end
