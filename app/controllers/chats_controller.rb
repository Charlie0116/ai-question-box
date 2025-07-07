

class ChatsController < ApplicationController
  def index
    @chat = Chat.new
    @chats = Chat.all
  end

  def create
    @chat = Chat.new(chat_params)

    # 🔥 OpenAI API 呼び出し
    client = OpenAI::Client.new(access_token: ENV["OPENAI_API_KEY"])

    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        messages: [
          { role: "user", content: @chat.user_message }
        ],
        temperature: 0.7
      }
    )

    @chat.ai_response = response.dig("choices", 0, "message", "content")

    if @chat.save
      redirect_to chats_path
    else
      render :index
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:user_message)
  end
end
