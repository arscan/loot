require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :name => "MyString",
      :accounttype => nil,
      :balance => "9.99"
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", accounts_path, "post" do
      assert_select "input#account_name[name=?]", "account[name]"
      assert_select "input#account_accounttype[name=?]", "account[accounttype]"
      assert_select "input#account_balance[name=?]", "account[balance]"
    end
  end
end
