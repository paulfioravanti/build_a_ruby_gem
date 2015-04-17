require 'spec_helper'

module SoActive
  describe Scopes do
    before do
      ActiveRecord::Base.establish_connection(
        adapter: 'sqlite3',
        database: ':memory:'
      )

      ActiveRecord::Schema.define do
        create_table :posts, force: true do |t|
          t.string :active, default: true
        end
      end
    end

    describe '.active' do
      before do
        class ::Post < ActiveRecord::Base
          extend SoActive::Scopes
        end
      end

      it 'returns records with active = true' do
        post1 = Post.create
        post2 = Post.create(active: false)
        posts = Post.active
        expect(posts.size).to eq(1)
        expect(posts).to include(post1)
        expect(posts).to_not include(post2)
      end
    end
  end
end
