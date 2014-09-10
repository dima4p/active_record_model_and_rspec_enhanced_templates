require 'spec_helper'

<% module_namespacing do -%>
describe <%= class_name %> do

<% if options[:fixture_replacement] == :factory_girl -%>
  subject { create :<%= singular_name %> }

  it { should be_valid }
<% else -%>
  before :each do
    @valid_attrs = {
    }
  end

  it "should be valid" do
    expect(<%= class_name %>.new(@valid_attrs)).to be_valid
  end
<% end -%>

  describe :class do
    it 'should respond to :ordered' do
      <%= singular_name %>1 = create :<%= singular_name %>
      <%= singular_name %>2 = create :<%= singular_name %>
<% attribute = attributes.detect{|a| a.name == 'position'} || attributes.detect{|a| a.name == 'name'} || attributes.detect{|a| a.name == 'title'} || attributes.first -%>
      expect(<%= class_name %>.ordered).to eq <%= class_name %>.order(:<%=attribute.name %>)
    end
  end

end
<% end -%>
