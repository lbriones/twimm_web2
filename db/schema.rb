# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130728091237) do

  create_table "account_balances", :force => true do |t|
    t.integer  "account_id"
    t.decimal  "debit"
    t.decimal  "credit"
    t.decimal  "value"
    t.integer  "motivo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "accounts", :force => true do |t|
    t.integer  "usuario_id"
    t.string   "nick"
    t.string   "cta_paypal"
    t.integer  "estado_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "balance_puntos", :force => true do |t|
    t.integer  "usuario_id"
    t.decimal  "debit"
    t.decimal  "credit"
    t.integer  "motivo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "estados", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "juegos", :force => true do |t|
    t.string   "nombre"
    t.string   "publisher"
    t.text     "descripcion"
    t.string   "foto"
    t.integer  "estado_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "logjuegos", :force => true do |t|
    t.integer  "juego_id"
    t.integer  "player1"
    t.integer  "player2"
    t.integer  "winner"
    t.integer  "loser"
    t.integer  "points_involved"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "logtransfers", :force => true do |t|
    t.integer  "fromaccount"
    t.integer  "toaccount"
    t.decimal  "monto"
    t.integer  "status"
    t.string   "message"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "motivos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nivels", :force => true do |t|
    t.string   "nombre"
    t.integer  "puntos_requeridos"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "puntos", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "cantidad"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "foto"
    t.integer  "nivel_id"
    t.integer  "estado_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
