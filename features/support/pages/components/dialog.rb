require 'rspec'

class DialogComponent
  include Capybara::DSL
  include RSpec::Matchers
  
  def assert_have_text(text)
    dialog = find('[role=dialog]')
    expect(dialog).to have_content(text)
  end
end
