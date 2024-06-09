import pandas as pd

# Dados das regras de negócio
data = {
    "ID": [
        "RN01", "RN02", "RN03", "RN04", "RN05", "RN06", "RN07", "RN08",
        "RN09", "RN12", "RN15", "RN18", "RN19", "RN21", "RN22", "RN23",
        "RN24", "RN25", "RN26"
    ],
    "Regra de Negócio": [
        "O doador pode ser tanto pessoa física quanto jurídica.",
        "O (re)agendamento de entrega das doações deverá ser feito em um dia em que a instituição estará disponível e aberta.",
        "O item inserido deverá estar de acordo com o que a instituição necessita e não deve incluir itens indesejados, como bebidas alcoólicas.",
        "O item inserido deverá estar em condições aceitáveis.",
        "A família deverá possuir certos requisitos para receber as doações, como baixa renda per capita, pessoas com necessidades físicas e especiais, entre outros.",
        "A família deverá permitir que seu cadastro e o uso de informações sejam realizados pelos operadores.",
        "O pagamento será registrado somente após a realização e aprovação do pagamento.",
        "O pagamento deverá ser realizado na moeda nacional.",
        "Permitir pagamento via PIX, com tempo limite para efetuação e validação.",
        "Permitir pagamento via cartão, somente cartões com informações validadas e nacionais.",
        "Permitir pagamento em dinheiro, apenas dinheiro validado e correspondente ao valor informado no site.",
        "A consulta de informações só deve estar disponível para usuários autenticados no sistema. Os resultados da consulta devem ser apresentados de forma clara e organizada para facilitar a compreensão do usuário.",
        "A alteração de informações só deve ser permitida para usuários autorizados e com permissões adequadas. Todas as alterações devem ser registradas no sistema, incluindo a data e o usuário responsável pela modificação.",
        "O doador deve estar fora do prazo de doações ou um longo tempo sem doar para receber uma solicitação de doação automática.",
        "A solicitação de doação manual deverá ser feita apenas uma vez dentro de determinado período.",
        "As doações podem ser tanto itens físicos, como roupas e alimentos, quanto doação monetária realizada de forma online ou presencial.",
        "O comprovante de doação deverá ser válido para uso em registros pessoais ou fiscais.",
        "As alterações de informações só deverão ser feitas caso haja divergência das informações do sistema com a doação.",
        "Os critérios de filtragem podem incluir data, tipo de doação e nome do doador."
    ]
}

# Criação do DataFrame
df = pd.DataFrame(data)

# Exportar para Excel
file_path = "Regras_de_Negocio.xlsx"
df.to_excel(file_path, index=False)

print(f"Arquivo salvo como {file_path}")
