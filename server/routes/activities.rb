# encoding: UTF-8

get '/api/activities' do
  format_response(Activity.all, request.accept)
end

get '/api/activities/:id' do
  activity ||= Activity.get(params[:id]) || halt(404)
  format_response(activity, request.accept)
end
