EXPECTED_BAKE_TIME = 40;

def bake_time_remaining(ACTUAL_BAKE_TIME):
    """aqui ele irá pegar o numero inserido e ser subtraído pela variavel global"""
    return(EXPECTED_BAKE_TIME - ACTUAL_BAKE_TIME)

def preparation_time_in_minutes(number_of_layers):
    """aqui ele irá pegar o numero de camadas da lasanha e multiplicar cada por 2 min"""
    return(number_of_layers * 2)

def elapsed_time_in_minutes(number_of_layers, ACTUAL_BAKE_TIME):
    """aqui ele retorna o tempo de preparação da função anteriormente descrita e somar com o tempo que ela precisa ser feita"""
    return preparation_time_in_minutes(number_of_layers) + ACTUAL_BAKE_TIME