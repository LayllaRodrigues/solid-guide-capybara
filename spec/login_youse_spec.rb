describe 'login' do
    it 'login com sucesso' do
        visit 'https://www.youse.com.br/users/email_verifications/new'
        
        fill_in 'email' , with: 'laylla.rodrigues@youse.com.br'
        click_button 'commit'


        fill_in  'user[password]' , with: 'Laylla123'
        click_button 'commit'
        
        expect(page).to have_content "Login efetuado com sucesso."
    
    end
end