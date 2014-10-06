<% if File.exist?(File.join %w[spec rails_helper.rb]) -%>
require 'rails_helper'
<% else -%>
require 'spec_helper'
<% end -%>

<% module_namespacing do -%>
describe <%= class_name %>, type: :model do

<% if options[:fixture_replacement] == :factory_girl -%>
  subject { create :<%= singular_name %> }
<% else -%>
  before :each do
    @valid_attrs = {
    }
  end

  subject { <%= class_name %>.create @valid_attrs }
<% end -%>

  it { should be_valid }

  describe :class do
    it 'should respond to :ordered' do
<% if options[:fixture_replacement] == :factory_girl -%>
      create :<%= singular_name %>
      create :<%= singular_name %>
<% else -%>
      <%= class_name %>.create @valid_attrs
      <%= class_name %>.create @valid_attrs
<% end -%>
<% attribute = attributes.detect{|a| a.name == 'position'} || attributes.detect{|a| a.name == 'name'} || attributes.detect{|a| a.name == 'title'} || attributes.first -%>
      expect(<%= class_name %>.ordered).to eq <%= class_name %>.order(:<%=attribute.name %>)
    end
  end

end
<% end -%>
