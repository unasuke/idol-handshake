class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false

      t.integer  :prev_handshake_all, default: 1
      t.integer  :prev_handshake_honoka, default: 0
      t.integer  :prev_handshake_kotori, default: 0
      t.integer  :prev_handshake_umi, default: 0
      t.integer  :prev_handshake_hanayo, default: 0
      t.integer  :prev_handshake_rin, default: 0
      t.integer  :prev_handshake_maki, default: 0
      t.integer  :prev_handshake_nico, default: 0
      t.integer  :prev_handshake_eri, default: 0
      t.integer  :prev_handshake_nozomi, default: 0

      t.integer  :next_handshake_all, default: 0
      t.integer  :next_handshake_honoka, default: 0
      t.integer  :next_handshake_kotori, default: 0
      t.integer  :next_handshake_umi, default: 0
      t.integer  :next_handshake_hanayo, default: 0
      t.integer  :next_handshake_rin, default: 0
      t.integer  :next_handshake_maki, default: 0
      t.integer  :next_handshake_nico, default: 0
      t.integer  :next_handshake_eri, default: 0
      t.integer  :next_handshake_nozomi, default: 0

      t.string   :serial_code, null: false, default: ""

    end
  end
end
