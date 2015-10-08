class Pila
	def initialize()
	@vec = []
	@lugar=0
end
	def apilar(elemento)
		@vec[@lugar]=elemento
		if(@vec[@lugar]==elemento)
		@lugar=@lugar+1
		return true
		else
			return false
		end

	end
	def desapilar()
		resp= @vec[@lugar-1]
		@lugar=@lugar-1
		return resp

		end
	def posicion(pos)
		if @vec[pos]
			return @vec[pos]
		end

		return false

	end
	def buscar(elemento)
		@vec.each do |aux|
      if aux==elemento
      	return true
      end
    end
		return false
	end
end

describe Pila do
	before (:each)do
	@pila=Pila.new
	end

	it "retornar true al apilar " do
		res=@pila.apilar(3)
		expect(res).to eq true;
	end
	it "retornar 4 de la pila al desapilar " do
		@pila.apilar(2)
			@pila.apilar(4)
		res=@pila.desapilar()
		expect(res).to eq 4;
	end
	it "retornar 4 de la pila al desapilar " do
		@pila.apilar(2)
			@pila.apilar(4)
			@pila.apilar(5)
		res=@pila.desapilar()
		res=@pila.desapilar()

		expect(res).to eq 4;
	end
	it "retornar 5 de la pila al desapilar " do
		@pila.apilar(2)
			@pila.apilar(4)
			@pila.apilar(5)
				@pila.apilar(6)
					@pila.apilar(7)
						@pila.apilar(8)
		res=@pila.desapilar()
		res=@pila.desapilar()
		res=@pila.desapilar()
		res=@pila.desapilar()

		expect(res).to eq 5;
	end
	it "retornar true si busco 3 " do
		@pila.apilar(2)
			@pila.apilar(3)
			@pila.apilar(5)
		res=@pila.buscar(3)


		expect(res).to eq true;
	end
	it "retornar false si busco 3 " do
		@pila.apilar(2)
			@pila.apilar(6)
			@pila.apilar(5)
		res=@pila.buscar(3)


		expect(res).to eq false;
	end
	it "retornar 5 si quiero la posicion 3 " do
		@pila.apilar(2)
			@pila.apilar(6)
				@pila.apilar(8)
			@pila.apilar(5)
		res=@pila.posicion(3)
		expect(res).to eq 5;
	end
	it "retornar 6 si quiero la posicion 2 " do
		@pila.apilar(2)
			@pila.apilar(8)
				@pila.apilar(6)
			@pila.apilar(5)
		res=@pila.posicion(2)
		expect(res).to eq 6;
	end


end
