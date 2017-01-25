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

ActiveRecord::Schema.define(version: 20161229225837) do

  create_table "albums", force: :cascade do |t|
    t.string   "nombre",            limit: 255, null: false
    t.date     "fecha_publicacion",             null: false
    t.integer  "genero_id",                     null: false
    t.integer  "artista_id",                    null: false
    t.integer  "estatus",                       null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "artistas", force: :cascade do |t|
    t.string   "nombre",     limit: 255, null: false
    t.integer  "estatus",                null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "calificacion_albums", force: :cascade do |t|
    t.integer  "album_id",     null: false
    t.integer  "usuario_id",   null: false
    t.integer  "calificacion", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "calificacion_cancions", force: :cascade do |t|
    t.integer  "cancion_id",   null: false
    t.integer  "usuario_id",   null: false
    t.integer  "calificacion", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cancions", force: :cascade do |t|
    t.string   "nombre",     limit: 255, null: false
    t.float    "duracion",               null: false
    t.integer  "album_id",               null: false
    t.integer  "estatus",                null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "generos", force: :cascade do |t|
    t.string   "nombre",     limit: 255, null: false
    t.integer  "estatus",                null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre",           limit: 255, null: false
    t.string   "login",            limit: 255, null: false
    t.string   "clave",            limit: 255, null: false
    t.date     "fecha_nacimiento",             null: false
    t.integer  "sexo",                         null: false
    t.integer  "estatus",                      null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
