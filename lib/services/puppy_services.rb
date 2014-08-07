class PuppyServices
  include HTTParty
  format :json

  # base_uri 'http://puppies.herokuapp.com/'
  # options = {}

  def show_list
    pp response
  end

  def count
    response.size
  end

  def retrieve_puppy( puppy_name )
    puppy_id = 0
    response.each do |puppy_info|
      puppy_id = puppy_info['puppy']['id'] if puppy_info['puppy']['name'] == puppy_name
    end
    @puppy_response = self.class.get "http://puppies.herokuapp.com/puppies/#{puppy_id}.json"

  end

  private

  def response
    @response ||= self.class.get 'http://puppies.herokuapp.com/puppies.json'
    # @response ||= self.class.get('puppies.json', options) ## Why doesn't this line work??
  end
end