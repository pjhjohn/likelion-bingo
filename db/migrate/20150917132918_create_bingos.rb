class CreateBingos < ActiveRecord::Migration
  def change
    create_table :bingos do |t|
      t.integer :user_id
      t.integer :cell_00, default: nil
      t.integer :cell_01, default: nil
      t.integer :cell_02, default: nil
      t.integer :cell_03, default: nil
      t.integer :cell_04, default: nil
      t.integer :cell_05, default: nil
      t.integer :cell_06, default: nil
      t.integer :cell_10, default: nil
      t.integer :cell_11, default: nil
      t.integer :cell_12, default: nil
      t.integer :cell_13, default: nil
      t.integer :cell_14, default: nil
      t.integer :cell_15, default: nil
      t.integer :cell_16, default: nil
      t.integer :cell_20, default: nil
      t.integer :cell_21, default: nil
      t.integer :cell_22, default: nil
      t.integer :cell_23, default: nil
      t.integer :cell_24, default: nil
      t.integer :cell_25, default: nil
      t.integer :cell_26, default: nil
      t.integer :cell_30, default: nil
      t.integer :cell_31, default: nil
      t.integer :cell_32, default: nil
      t.integer :cell_33, default: nil
      t.integer :cell_34, default: nil
      t.integer :cell_35, default: nil
      t.integer :cell_36, default: nil
      t.integer :cell_40, default: nil
      t.integer :cell_41, default: nil
      t.integer :cell_42, default: nil
      t.integer :cell_43, default: nil
      t.integer :cell_44, default: nil
      t.integer :cell_45, default: nil
      t.integer :cell_46, default: nil
      t.integer :cell_50, default: nil
      t.integer :cell_51, default: nil
      t.integer :cell_52, default: nil
      t.integer :cell_53, default: nil
      t.integer :cell_54, default: nil
      t.integer :cell_55, default: nil
      t.integer :cell_56, default: nil
      t.integer :cell_60, default: nil
      t.integer :cell_61, default: nil
      t.integer :cell_62, default: nil
      t.integer :cell_63, default: nil
      t.integer :cell_64, default: nil
      t.integer :cell_65, default: nil
      t.integer :cell_66, default: nil
      t.timestamps null: false
    end
  end
end
