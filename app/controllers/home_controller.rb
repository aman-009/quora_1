class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
      @question = Question.all()
      @users = User.all()
      @answers = Answer.all()
      if(@upvotes)
        @upvotes = Upvote.where(user_id: current_user.id)
      end  
      search = params[:search]
      if search
        query = "content like '%#{search}%' "
        @tweets = @tweets.where(query)
      end
  end

  def question
    title = params["title"]
    content = params["content"]
    current_user.question.create(title: title,content: content)
    return redirect_to '/'
  end

  def ask_question
  
  end 

  def question_json
    title = params["title"]
    content = params["content"]
    question = current_user.question.create(title: title,content: content)
    render json: question#basically json i.e array of object is sent to http 
  end  

  def answer
    q_id = params["q_id"]
    content = params["content"]
    current_user.answer.create(content: content,question_id: q_id)
    redirect_to controller: 'home', action: 'show', q_id:q_id  # best thing remember this
  end

  def upvote_json
    answer = params[:answer]
    upvote = current_user.upvote.where(answer_id:answer).first
    if upvote
      upvote.destroy
    else
      current_user.upvote.create(answer_id:answer)
    end  
    render json: upvote
  end

  def upvote_i #bad code as repetition is there
    answer = params[:answer]
    upvote = current_user.upvote.where(answer_id:answer).first
    if upvote
      upvote.destroy
    else
      current_user.upvote.create(answer_id:answer)
    end  
    redirect_to '/'
  end


  def follow  
    followee_id = params[:followee_id]
    follow_mapping = Follow.where(:follower_id => current_user.id, :followee_id => followee_id).first
    unless follow_mapping
        follow_mapping = Follow.create(:follower_id => current_user.id, :followee_id => followee_id)
    else
        follow_mapping.destroy
    end

    redirect_to controller: 'home', action: 'profile', user:followee_id
  end 

  def edit
    @question = Question.find(params["q_id"])
  end 

  def profile
    user = params["user"]
    @questions = Question.all()
    @answers = Answer.where(user_id: user)
    @user = User.find(user)
  end

  def editt
    title = params["title"]
    content = params["content"]
    question = Question.find(params["q_id"])
    question.title = title
    question.content = content
    question.save
    redirect_to '/'
  end  
  
  def delete
    params["q_id"]
    question = Question.find(params["q_id"])
    question.destroy
    redirect_to '/'
  end

  def back
    redirect_to '/'
  end
    
  def show
    @users = User.all()
    @question = Question.find(params["q_id"])
    @answers = Answer.where(question_id: params["q_id"])
    @upvotes = Upvote.where(user_id: current_user.id)
  end 

  def logout
    user_session[:user_id] = nil
    redirect_to'/users/sign_in'
  end

end
