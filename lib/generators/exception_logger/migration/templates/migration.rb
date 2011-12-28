class AddLoggedExceptionTable < ActiveRecord::Migration
  def self.up
    create_table "<%= options[:exception_table_name] %>", :force => true do |t|
      t.string :exception_class
      t.string :controller_name
      t.string :action_name
      t.text :message
      t.text :backtrace
      t.text :environment
      t.text :request
      t.datetime :created_at
    end
  end

  def self.down
    drop_table "<%= options[:exception_table_name] %>"
  end
end