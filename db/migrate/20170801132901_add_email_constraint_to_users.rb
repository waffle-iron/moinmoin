# frozen_string_literal: true

class AddEmailConstraintToUsers < ActiveRecord::Migration[5.1]
  def up
    execute %{
      ALTER TABLE
        users
      ADD CONSTRAINT
        email_must_be_unifr_email
      CHECK ( email ~* '^[^@]+@unifr\\.ch' )
    }
  end

  def down
    execute %(
      ALTER TABLE
        users
      DROP CONSTRAINT
        email_must_be_unifr_email
    )
  end
end
