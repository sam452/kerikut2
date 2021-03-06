module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/prices/index/'

    when /the sign up page/
      '/users/sign_up'

    when /the sign in page/
      '/users/sign_in'
      
	when /the new price commodities page/
      '/prices/new/:commodity'

	when /the new price page/
      'prices/new/'

	when /the new volume commodities page/
      'volumes/new/'
	
	when /the price commodities page/
      'price_commodities/show/'
      
	when /the volume commodities page/
      'volume_commodities/show/'
      
	when /the commodity trend page/
	  'commodities/show/'
	
	#when /the price page/
    #  '/prices/show/'


    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)

