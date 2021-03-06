describe 'Features' do
  feature 'Viewing bookmarks' do
    scenario 'a user visits the index page' do
      visit('/')
      expect(page.status_code).to eq(200)
      expect(page).to have_content 'Bookmark Manager'
    end
  end
  feature 'Viewing bookmarks' do
    scenario 'a user can see previously added bookmarks' do
      visit('/bookmarks')
      expect(page).to have_content 'http://www.makersacademy.com'
      expect(page).to have_content 'http://www.destroyallsoftware.com'
      expect(page).to have_content 'http://www.google.com'
    end
  end
end
