ActiveAdmin.register Event do
  
  form do |f|
      f.inputs "Details" do
        f.input :title
        f.input :start_date
        f.input :end_date
        f.input :address
        f.input :prizes
        f.input :desc
        f.input :registration_url
        f.input :companies, label: "Sponsors", required: false
      end
    f.buttons
  end
  
end
