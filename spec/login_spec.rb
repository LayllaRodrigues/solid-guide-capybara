describe 'login simples' do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/login'
    end

    
    it 'login com sucesso' do
        
        fill_in 'username' , with: 'stark'
        fill_in  'password' , with: 'jarvis'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
    
    end

    it 'senha incorreta' do

        
        fill_in 'username' , with: 'stark'
        fill_in  'password' , with: 'jarvi'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

    end
  

end