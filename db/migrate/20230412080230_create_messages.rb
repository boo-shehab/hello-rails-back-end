class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :message
      t.timestamps
    end
    
    Messages.create(message: 'Hello')
    Messages.create(message: 'Hi')
    Messages.create(message: 'Greetings')
    Messages.create(message: 'Salutations')
    Messages.create(message: 'Welcome')
  end
end
