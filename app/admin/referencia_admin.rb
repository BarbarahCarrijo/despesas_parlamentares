Trestle.resource(:referencias, model: Referencia ) do
  menu do
    group :cadastros, priority: :first do
      item :referencia, icon: "fa fa-star"
    end
  end

  # Customize the table columns shown on the index view.
  #
  scopes do
    scope :all, default: true
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |referencia|
    text_field :referencia
    file_field :arquivo_original

    row do
      col { datetime_field :updated_at }
      col { datetime_field :created_at }
    end
    actions
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  params do |params|
    params.require(:referencia).permit(:referencia, :arquivo_original)
  end
end
