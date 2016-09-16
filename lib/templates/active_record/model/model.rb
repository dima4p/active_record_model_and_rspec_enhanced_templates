# Model <%= class_name %> defines ... TODO:
#
<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>
<% if attributes.any?(&:reference?) -%>

<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %><%= ', required: true' if attribute.required? %>
<% end -%>
<% end -%>
<% if attributes.any?(&:token?) -%>

<% attributes.select(&:token?).each do |attribute| -%>
  has_secure_token<% if attribute.name != "token" %> :<%= attribute.name %><% end %>
<% end -%>
<% end -%>
<% if attributes.any?(&:password_digest?) -%>

  has_secure_password
<% end -%>
<% if attribute = attributes.detect{|a| a.name == 'position'} || attributes.detect{|a| a.name == 'name'} || attributes.detect{|a| a.name == 'title'} || attributes.first -%>

  scope :ordered, -> { order(:<%=attribute.name %>) }
<% end -%>

end
<% end -%>
