class CuentaBancaria
    attr_accessor :cta_corriente, :cta_ahorro
    def initialize
        @cta_corriente = 0
        @cta_ahorro = 0
    end
    def deposito_cta_ahorro(deposito)   
        @cta_ahorro = @cta_ahorro + deposito
        # puts "EL saldo actual en tu cuenta ahorro es: #{cta_ahorro}"
    end

    def deposito_cta_corriente(deposito) 
        @cta_corriente = @cta_corriente + deposito
        # puts "EL saldo actual en tu cuenta corriente es: #{cta_corriente}"
    end

    def mostrar_saldo_cta_ahorro
        puts "EL saldo actual en tu cuenta ahorro es: #{cta_ahorro}"
    end

    def mostrar_saldo_cta_corriente
        puts "EL saldo actual en tu cuenta corriente es: #{cta_corriente}"
    
    end
    def giro_cta_ahorro(giro)   
    
        if @cta_ahorro < giro

            puts "La cuenta de ahorro no tiene saldo suficiente para realizar esta operación"
        else
            @cta_ahorro = @cta_ahorro - giro

           puts "Se han retirado #{giro}, el saldo actual en su cuenta de ahorro es #{cta_ahorro}" 
        end
    end
    def giro_cta_corriente(giro) 
        if @cta_corriente < giro
            puts "Su cuenta corriente no tiene saldo suficiente para realizar esta operación"
        else
            @cta_corriente = @cta_corriente - giro
            puts "Se han retirado #{giro}, el saldo actual en su cuenta corriente es #{cta_corriente}" 
        end
    end
    def mostrar_saldo_total
        total = @cta_corriente + @cta_ahorro
        puts " 
        * saldo cuenta corriente #{@cta_corriente} *
        * saldo cuenta ahorro #{@cta_ahorro} *
    =======================================
        ==> Tu saldo total es: #{total} <=="
    end
end


cuenta_bancaria1 = CuentaBancaria.new


puts "=======================================" # Saldo disponible cuentas por separado

cuenta_bancaria1.deposito_cta_corriente (100_000)
cuenta_bancaria1.mostrar_saldo_cta_corriente



cuenta_bancaria1.deposito_cta_ahorro (200_000)
cuenta_bancaria1.mostrar_saldo_cta_ahorro

puts "=======================================" # giro de saldo, cuentas separadas

cuenta_bancaria1.giro_cta_corriente (150_000)

cuenta_bancaria1.giro_cta_ahorro (50_000)

puts "=======================================" # Saldo disponible, la suma de ambas cuentas
 
cuenta_bancaria1.mostrar_saldo_total

puts "=======================================" 

