class VolunteersController < InheritedResources::Base
  actions :new, :create
  before_filter :init_volunteer_questions
  after_filter :save_volunteer_q_a, only: :create

  private
  def permitted_params
    params.permit(:volunteer => [:name, :email, :gender, :sem, :college, :branch, :phone, :getting_laptop, :previous_camp, :ready_to_pay, :t_shirt_size])
  end

  def init_volunteer_questions
    @volunteer_questions = VolunteerQuestion.all
  end

  def save_volunteer_q_a
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
    end
  end
end
