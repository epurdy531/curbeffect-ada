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

ActiveRecord::Schema[7.2].define(version: 2026_07_28_010000) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contract_requests", force: :cascade do |t|
    t.string "rfp_url"
    t.string "organization_name"
    t.string "status"
    t.date "due_date"
    t.string "government_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "notes"
  end

  create_table "entities", force: :cascade do |t|
    t.string "url"
    t.string "contact_name", default: "none"
    t.string "contact_email", null: false
    t.string "contact_title"
    t.string "platform", default: "?"
    t.date "email_date"
    t.date "call_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "entity_name"
    t.date "linkedin_date"
    t.string "notes"
    t.string "priority"
    t.string "scrapable_url"
    t.boolean "html_present", default: false
    t.boolean "continue_contact", default: true
    t.string "state"
  end

  create_table "pdf_documents", force: :cascade do |t|
    t.string "file_name"
    t.string "source_url"
    t.jsonb "document_data"
    t.bigint "entity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_pdf_documents_on_entity_id"
  end

  create_table "vendor_registrations", force: :cascade do |t|
    t.string "state"
    t.string "vendor_url"
    t.boolean "is_registered", default: false, null: false
    t.string "registration_username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city", default: "entire state"
    t.string "notes"
    t.string "password"
  end

  create_table "verapdf_reports", force: :cascade do |t|
    t.string "report_file_name"
    t.integer "report_failures"
    t.integer "report_total_checks"
    t.jsonb "document_data"
    t.bigint "pdf_document_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "tagged"
    t.index ["pdf_document_id"], name: "index_verapdf_reports_on_pdf_document_id", unique: true
  end

  add_foreign_key "pdf_documents", "entities"
  add_foreign_key "verapdf_reports", "pdf_documents"
end
