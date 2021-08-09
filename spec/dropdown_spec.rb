

describe 'Caixa de seleção', :dropdown do #{quando tenho id}

    it 'item especifico simples' do :aaa
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 
    end

    it 'item especifico com find' do :bbb
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Bucky').select_option
        sleep 3
    end

    it 'qualquer item' do :ccc
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find ('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3
    end
end    
        

