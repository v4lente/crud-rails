class CreateSolicitacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :solicitacaos do |t|
      t.string :dia
      t.string :horario
      t.string :quantidade
      
      t.timestamps
    end
  end
end
