require 'spec_helper'

<% module_namespacing do -%>
describe <%= class_name %> do

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
      <%= singular_name %>1 = create :<%= singular_name %>
      <%= singular_name %>2 = create :<%= singular_name %>
<% else -%>
      <%= singular_name %>1 = <%= class_name %>.create @valid_attrs
      <%= singular_name %>2 = <%= class_name %>.create @valid_attrs
<% end -%>
<% attribute = attributes.detect{|a| a.name == 'position'} || attributes.detect{|a| a.name == 'name'} || attributes.detect{|a| a.name == 'title'} || attributes.first -%>
      expect(<%= class_name %>.ordered).to eq <%= class_name %>.order(:<%=attribute.name %>)
    end
  end

end
<% end -%>
