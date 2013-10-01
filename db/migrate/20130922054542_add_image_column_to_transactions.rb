class AddImageColumnToTransactions < ActiveRecord::Migration
  def self.up
    add_attachment :transactions, :tx_image
  end

  def self.down
    remove_attachment :transactions, :tx_image
  end
end
