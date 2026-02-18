# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_02_18_022203) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "background_data_migrations", force: :cascade do |t|
    t.jsonb "arguments", default: [], null: false
    t.string "backtrace", array: true
    t.string "connection_class_name"
    t.datetime "created_at", null: false
    t.string "cursor"
    t.string "error_class"
    t.string "error_message"
    t.datetime "finished_at"
    t.float "iteration_pause", null: false
    t.string "jid"
    t.integer "max_attempts", null: false
    t.string "migration_name", null: false
    t.string "shard"
    t.datetime "started_at"
    t.string "status", default: "pending", null: false
    t.bigint "tick_count", default: 0, null: false
    t.bigint "tick_total"
    t.float "time_running", default: 0.0, null: false
    t.datetime "updated_at", null: false
    t.index ["migration_name", "arguments", "shard"], name: "index_background_data_migrations_on_unique_configuration", unique: true
  end

  create_table "background_schema_migrations", force: :cascade do |t|
    t.integer "attempts", default: 0, null: false
    t.string "backtrace", array: true
    t.string "connection_class_name"
    t.datetime "created_at", null: false
    t.string "definition", null: false
    t.string "error_class"
    t.string "error_message"
    t.datetime "finished_at"
    t.integer "max_attempts", null: false
    t.string "migration_name", null: false
    t.string "shard"
    t.datetime "started_at"
    t.integer "statement_timeout"
    t.string "status", default: "pending", null: false
    t.string "table_name", null: false
    t.datetime "updated_at", null: false
    t.index ["migration_name", "table_name", "shard", "connection_class_name"], name: "index_background_schema_migrations_on_unique_configuration", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.integer "age"
    t.datetime "created_at", null: false
    t.string "email"
    t.string "name"
    t.datetime "updated_at", null: false
  end
end
