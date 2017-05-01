class BirthdaysController < ProtectedController
  before_action :set_birthday, only: [:show, :update, :destroy]

  # GET /birthdays
  def index
    @birthdays = current_user.birthdays

    render json: @birthdays
  end

  # GET /birthdays/1
  def show

    render json: @birthday
  end

  # POST /birthdays
  def create
    # @birthday = Birthday.new(birthday_params)

    @birthday = current_user.birthdays.build(birthday_params)

    if @birthday.save
    render json: @birthday, status: :created, location: @birthday
    else
    render json: @birthday.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /birthdays/1
  def update

    if @birthday.update(birthday_params)
      head :no_content
    else
      render json: @birthday.errors, status: :unprocessable_entity
    end
  end

  # DELETE /birthdays/1
  def destroy
    @birthday.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_birthday
      @birthday = Birthday.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def birthday_params
      params.require(:birthday).permit(:given_name, :family_name, :nickname, :born_on)
    end
end
