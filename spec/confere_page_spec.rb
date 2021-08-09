
describe "Confere página e titulo" do
    it "visitar a página" do
        visit "https://www.youse.com.br/seguro-auto/por-km"
        expect(page.title).to eql "Seguro Auto Por KM | Cote Online Agora"
    end

    
end

