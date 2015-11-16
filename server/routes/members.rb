# encoding: UTF-8

get '/api/members' do
  format_response(Member.all, request.accept)
end

get '/api/movies/:id' do
  movie ||= Member.get(params[:id]) || halt(404)
  format_response(member, request.accept)
end