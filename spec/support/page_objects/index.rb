class SearchSection < SitePrism::Section
  element :query,   "input[name='q']"
  element :submit,  "button[type='submit']"
end

class PersonSection < SitePrism::Section
  element :name,    "h5"
  element :image,   "img"
end

class IndexPage < SitePrism::Page
  set_url "/"
  set_url_matcher /^$/

  section  :search,  SearchSection,   "form#search"
  sections :people,  PersonSection,   "ul.people li.person"

  def person name
    people.select{|orang| orang.name.text == name }
  end
end
