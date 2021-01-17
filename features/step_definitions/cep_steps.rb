Dado('que seja informado o cep {int} do endereço') do |cep|
    @cep_methods = Cep.new()
    @cep = cep
end
    
Quando('pesquisar por este cep') do
    @response = @cep_methods.get_cep(@cep)
end

Então('o código de resposta será {int}') do |code|
    expect(@response.code).to eq code
end

Então('deverá ser apresentado o código do IBGE') do
    if(@response.code.eql? 200)
        log "IBGE code: " + @response['ibge']
    else
        log "Cep inválido"
    end
end

