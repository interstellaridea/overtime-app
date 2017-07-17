class SwapOutRationaleWithWorkPreformedInPosts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :posts, :rationale, :work_preformed
  end
end
