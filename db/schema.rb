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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141117210731) do

  create_table "caches", force: true do |t|
    t.text     "beforeRequest"
    t.text     "afterRequest"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contents", force: true do |t|
    t.integer  "size"
    t.integer  "compression"
    t.string   "mimeType"
    t.text     "text"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cookies", force: true do |t|
    t.string   "name"
    t.text     "value"
    t.string   "path"
    t.string   "domain"
    t.datetime "expires"
    t.boolean  "httpOnly"
    t.boolean  "secure"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", force: true do |t|
    t.string   "pageref"
    t.datetime "startedDateTime"
    t.integer  "time"
    t.integer  "request_id"
    t.integer  "response_id"
    t.integer  "cache_id"
    t.integer  "timings_id"
    t.string   "serverIPAddress"
    t.string   "connection"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entries", ["cache_id"], name: "index_entries_on_cache_id"
  add_index "entries", ["request_id"], name: "index_entries_on_request_id"
  add_index "entries", ["response_id"], name: "index_entries_on_response_id"
  add_index "entries", ["timings_id"], name: "index_entries_on_timings_id"

  create_table "hars", force: true do |t|
    t.string   "uri"
    t.binary   "pages"
    t.binary   "entries"
    t.binary   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headers", force: true do |t|
    t.text     "name"
    t.text     "value"
    t.text     "comment"
    t.integer  "request_id"
    t.integer  "response_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "headers", ["request_id"], name: "index_headers_on_request_id"
  add_index "headers", ["response_id"], name: "index_headers_on_response_id"

  create_table "page_timings", force: true do |t|
    t.integer  "onContentLoad"
    t.integer  "onLoad"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.datetime "startedDateTime"
    t.string   "idx"
    t.string   "title"
    t.integer  "pageTimings_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["pageTimings_id"], name: "index_pages_on_pageTimings_id"

  create_table "params", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.string   "fileName"
    t.string   "contentType"
    t.text     "comment"
    t.integer  "postData_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "params", ["postData_id"], name: "index_params_on_postData_id"

  create_table "post_data", force: true do |t|
    t.string   "mimeType"
    t.text     "params"
    t.text     "text"
    t.text     "comment"
    t.integer  "request_id"
    t.integer  "params_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_data", ["params_id"], name: "index_post_data_on_params_id"
  add_index "post_data", ["request_id"], name: "index_post_data_on_request_id"

  create_table "query_strings", force: true do |t|
    t.text     "name"
    t.text     "value"
    t.text     "comment"
    t.integer  "request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "query_strings", ["request_id"], name: "index_query_strings_on_request_id"

  create_table "requests", force: true do |t|
    t.string   "method"
    t.string   "url"
    t.string   "httpVersion"
    t.integer  "cookies_id"
    t.integer  "headers_id"
    t.integer  "queryString_id"
    t.integer  "postData_id"
    t.integer  "headersSize"
    t.integer  "bodySize"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requests", ["cookies_id"], name: "index_requests_on_cookies_id"
  add_index "requests", ["headers_id"], name: "index_requests_on_headers_id"
  add_index "requests", ["postData_id"], name: "index_requests_on_postData_id"
  add_index "requests", ["queryString_id"], name: "index_requests_on_queryString_id"

  create_table "responses", force: true do |t|
    t.integer  "status"
    t.string   "statusText"
    t.string   "httpVersion"
    t.integer  "cookies_id"
    t.integer  "headers_id"
    t.integer  "content_id"
    t.string   "redirectURL"
    t.integer  "headersSize"
    t.integer  "bodySize"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "responses", ["content_id"], name: "index_responses_on_content_id"
  add_index "responses", ["cookies_id"], name: "index_responses_on_cookies_id"
  add_index "responses", ["headers_id"], name: "index_responses_on_headers_id"

  create_table "timings", force: true do |t|
    t.integer  "blocked"
    t.integer  "dns"
    t.integer  "connect"
    t.integer  "send"
    t.integer  "wait"
    t.integer  "receive"
    t.integer  "ssl"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
