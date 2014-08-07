class EditablePagesController < ApplicationController
	def edit
    @title = "Edit Page"
    @editablepage = EditablePage.find(1)
  end

  def update
    @editablepage = EditablePage.find(1)
    respond_to do |format|
      if @editablepage.update(editable_page_params)
        format.html { redirect_to about_path, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @editablepage.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def editable_page_params
      params.require(:editable_page).permit(:description)
    end
end