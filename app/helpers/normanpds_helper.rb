module NormanpdsHelper

  # Need to work on table sorting functions
  def sort_link(column:, label:)
    link_to(label, list_normanpds_path(column: column))
  end
end
