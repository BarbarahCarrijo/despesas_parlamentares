class CreatePlanilhas < ActiveRecord::Migration[5.2]
  def change
    create_table :planilhas do |t|
      t.string :tx_nome_parlamentar
      t.string :cpf
      t.integer :ide_cadastro
      t.integer :nu_carteira_parlamentar
      t.integer :nu_legislatura
      t.string :sg_uf
      t.string :sg_partido
      t.integer :cod_legislatura
      t.integer :num_sub_cota
      t.string :txt_descricao
      t.integer :num_especificacao_sub_cota
      t.string :txt_descricao_especificacao
      t.string :txt_fornecedor
      t.string :txt_cnpj_cpf
      t.string :txt_numero
      t.integer :ind_tipo_documento
      t.datetime :dat_emissao
      t.decimal :vlr_documento
      t.decimal :vlr_glosa
      t.decimal :vlr_liquido
      t.integer :num_mes
      t.integer :num_ano
      t.string :num_parcela
      t.string :txt_passageiro
      t.string :txt_trecho
      t.integer :num_lote
      t.integer :num_ressarcimento
      t.decimal :vlr_restituicao
      t.integer :nu_deputado_id
      t.integer :ide_documento
      t.string :url_documento
      t.integer :referencia_id

      t.timestamps
    end
    add_foreign_key :planilhas, :referencias, column: :referencia_id
  end
end
