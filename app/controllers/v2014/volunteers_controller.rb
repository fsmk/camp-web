class V2014::VolunteersController < V2014::AppController
  actions :new
  before_filter :init_volunteer_questions
  after_filter :after_volunteer_created, only: :create

  def new
    @is_volunteer_reg_enabled = false
  end

  protected
    def collection
      @volunteers ||= Volunteer.where(status: "approved").order('name')
    end

  private
  def permitted_params
    params.permit(:volunteer => [:name, :email, :gender, :sem, :college, :branch, :phone, :getting_laptop, :previous_camp, :ready_to_pay, :t_shirt_size])
  end

  def init_volunteer_questions
    @volunteer_questions = VolunteerQuestion.all
  end

  def after_volunteer_created
    if @volunteer.errors.empty?
      @volunteer_questions.each do |vq|
        key = "vq#{vq.id}"
        if params[key].present?
          answer = nil
          if vq.qtype.eql? "text"
            answer = params[key]
          else
            answer = ""
            params[key].each do |v|
              answer += "#{v},"
            end
            answer = answer[0..answer.length-2]
          end
          VolunteerQa.create({volunteer_id: @volunteer.id, volunteer_question_id: vq.id, answer: answer})
        end
      end
      flash[:notice] = "Thank you for showing interest to volunteer for the summer camp. Our volunteer selection team will contact you back in case you are shortlisted as a volunteer."
    end
  end
end
