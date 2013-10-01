require 'spec_helper'

describe "transactions/new" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :user_id => 1,
      :task_id => 1,
      :rank => 1,
      :weather => 1
    ).as_new_record)
  end

  it "renders new transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", transactions_path, "post" do
      assert_select "input#transaction_user_id[name=?]", "transaction[user_id]"
      assert_select "input#transaction_task_id[name=?]", "transaction[task_id]"
      assert_select "input#transaction_rank[name=?]", "transaction[rank]"
      assert_select "input#transaction_weather[name=?]", "transaction[weather]"
    end
  end
end
