class TasksController
  def download
    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename=items.xlsx"
      }
    end
  end

end
