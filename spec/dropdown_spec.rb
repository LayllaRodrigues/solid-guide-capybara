

describe 'Caixa de seleção', :dropdown do #{quando tenho id}

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    end

    it 'item especifico simples' do :aaa
        select('Loki', from: 'dropdown')
        sleep 3 
    end

    it 'item especifico com find' do :bbb
        drop = find('.avenger-list')
        drop.find('option', text: 'Bucky').select_option
        sleep 3
    end

    it 'qualquer item' do :ccc
        drop = find ('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3
    end
end    
        

