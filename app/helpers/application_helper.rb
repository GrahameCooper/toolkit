module ApplicationHelper
  def cancel_link(url = {action: :index})
    content_tag("li", class: "cancel") do
      link_to t("cancel"), url
    end
  end

  def user_groups(user = nil)
    user ||= current_user
    return [] if user.nil?
    user.groups
  end

  # Generate link to user or group profiles
  def link_to_profile(item)
    case item
      when User
        link_to item.name, user_profile_path(item)
      when Group
        link_to item.name, group_profile_path(item)
    end
  end

  def link_to_github_commit
    commit = Rails.application.config.git_hash
    url = Rails.application.config.github_project_url + "/commit/" + commit
    link_to commit, url
  end

  def ajax_spinner_image
    image_tag "spinner.gif"
  end

  # Reimplementation of dom_class with hyphens instead of underscores
  def dom_class(record_or_class)
    name = ActiveModel::Naming.singular(record_or_class)
    name.tr("_", "-")
  end
end
