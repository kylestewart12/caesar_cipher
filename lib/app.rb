require "caesar_cipher/cipher"

class CaesarCipherApp < Sinatra::Base

  set :root, "lib/app"

  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end

  post "/" do
    #throw params.inspect
    @@cipher = Cipher.new(params[:cipher])
    redirect "/result"
  end

  get "/result" do
    erb :result, locals: {cipher: @@cipher}
  end

end