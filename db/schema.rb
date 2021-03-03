# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_03_180318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "planilhas", force: :cascade do |t|
    t.string "tx_nome_parlamentar"
    t.string "cpf"
    t.integer "ide_cadastro"
    t.integer "nu_carteira_parlamentar"
    t.integer "nu_legislatura"
    t.string "sg_uf"
    t.string "sg_partido"
    t.integer "cod_legislatura"
    t.integer "num_sub_cota"
    t.string "txt_descricao"
    t.integer "num_especificacao_sub_cota"
    t.string "txt_descricao_especificacao"
    t.string "txt_fornecedor"
    t.string "txt_cnpj_cpf"
    t.string "txt_numero"
    t.integer "ind_tipo_documento"
    t.datetime "dat_emissao"
    t.decimal "vlr_documento"
    t.decimal "vlr_glosa"
    t.decimal "vlr_liquido"
    t.integer "num_mes"
    t.integer "num_ano"
    t.string "num_parcela"
    t.string "txt_passageiro"
    t.string "txt_trecho"
    t.integer "num_lote"
    t.integer "num_ressarcimento"
    t.decimal "vlr_restituicao"
    t.integer "nu_deputado_id"
    t.integer "ide_documento"
    t.string "url_documento"
    t.integer "referencia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referencias", force: :cascade do |t|
    t.string "referencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "planilhas", "referencias"
end
