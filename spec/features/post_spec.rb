
require 'rails_helper'

describe 'new post' do
	it 'ensures that the form route works with the /new action' do
		visit new_post_path
		expect(page.status_code).to eq(200)
	end
	it 'renders html in the /new template' do
		visit new_post_path
		expect(page).to have_content('Post Form')
	end
	it 'displays a post form that redirects to the index page when the user submits the form. The index page contains information about the post that has just been created' do
		visit new_post_path
		fill_in 'title', with: "Leaves!"
		fill_in 'description', with: "Let's be honest: leaves are beautiful. They come in so many sizes and subtle colors."
		click_on "Submit Post"
		expect(page.current_path).to eq(posts_path)
		expect(page).to have_content('Leaves!')
	end
end
