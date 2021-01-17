class Cep
    include HTTParty
    #debug_output $stdout
    base_uri URL_BASE

    def get_cep(cep)
        self.class.get("/#{cep}"+"/json")
    end

end