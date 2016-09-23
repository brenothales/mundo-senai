class AddDadosPessoaisToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cpf, :string, limit: 14
    add_column :users, :sobrenome, :string, limit: 100
    add_column :users, :rg, :string, limit:  9
    add_column :users, :nacionalidade, :string, limit: 50
    add_column :users, :sexo, :string, :limit => 15
    add_column :users, :endereco, :string
    add_column :users, :numero, :string, :limit => 5
    add_column :users, :complemento, :string
    add_column :users, :cidade, :string, :limit => 100
    add_column :users, :estado, :string, :limit => 100
    add_column :users, :telefone, :string, :limit => 13
    add_column :users, :telefone_residencial, :string, :limit => 13
    add_column :users, :email_alternativo, :string, :limit => 100
  end
end
